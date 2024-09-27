import 'dart:async';
import 'dart:math';
import 'dart:typed_data';

import 'package:storage_backend/domain.dart';
import 'package:storage_backend/infrastructure.dart';
import 'package:storage_prisma_backend/client.dart';

import 'package:image/image.dart' as img;

const _bucketName = 'image';
const _storageUrl = 'http://localhost:9000';
const _originalFolder = 'original';
const _thumbnailFolder = 'thumbnail';
const _smallFolder = 'small';
const _mediumFolder = 'medium';
const _largeFolder = 'large';
const _tempFolder = 'temp';
const _maxUnpublishedImages = 10;

final _minio = Minio(
  endPoint: 'localhost:9001',
  accessKey: 'Ow37zeua2k9wbXdrhp05',
  secretKey: 'xS0avkS51FEFMEFkmB9fi49qj1emsNnMzwkPm1jI',
);

final _expiresSeconds = Duration(minutes: 3).inSeconds;

final class StorageManager {
  StorageManager(this._client);

  final PrismaStorageClient _client;

  Future<UploadFileUrl> getUploadImageUrl(
    ImageRequest request, {
    required UuidValue authorId,
  }) async {
    Future<void> cleanOldUploadSessions() async {
      final oldSessions = await _client.uploadingSession.findMany(
        where: UploadingSessionWhereInput(
          expiresAt: $1(DateTimeFilter(lt: $1(DateTime.now()))),
        ),
      );

      for (final session in oldSessions) {
        await _minio.removeObject(_bucketName, session.filePath!);
        await _client.uploadingSession.delete(
          where: UploadingSessionWhereUniqueInput(id: session.id!),
        );
      }
    }

    Future<int> _getUnpublishedImagesCount() async {
      return (await _client.uploadingSession.aggregate(
        where: UploadingSessionWhereInput(authorId: $2('${authorId}')),
        select: AggregateUploadingSessionSelect(
          $count: $2(
            AggregateUploadingSessionCountArgs(
              select: UploadingSessionCountAggregateOutputTypeSelect(
                $all: true,
              ),
            ),
          ),
        ),
      ))
          .$count!
          .$all!;
    }

    await cleanOldUploadSessions();

    if (await _getUnpublishedImagesCount() >= _maxUnpublishedImages) {
      // TODO: заменить на кастомный эксепшн
      throw Exception('Too many unpublished images');
    }

    final uploadSessionId = Uuid().v4obj();
    final path = '$_tempFolder/${uploadSessionId}';

    final presignedUrl = await _minio.presignedPutObject(
      _bucketName,
      path,
      expires: _expiresSeconds,
    );

    await _client.uploadingSession.create(
      data: $1(
        UploadingSessionCreateInput(
          id: '$uploadSessionId',
          authorId: '${authorId}',
          expiresAt: DateTime.now().add(Duration(seconds: _expiresSeconds)),
          filePath: path,
          fileSize: request.size,
        ),
      ),
    );

    return UploadFileUrl(
      uploadSessionId: uploadSessionId,
      uploadUrl: Uri.parse(presignedUrl),
      expires: DateTime.now().add(Duration(seconds: _expiresSeconds)),
    );
  }

  Future<Image> publishImage(
    UuidValue uploadSessionId,
  ) async {
    final session = await _client.uploadingSession.findUnique(
      where: UploadingSessionWhereUniqueInput(id: '$uploadSessionId'),
    );

    if (session!.expiresAt!.isAfter(DateTime.now())) {
      // TODO: заменить на кастомный эксепшн
      throw Exception('Upload session expired');
    }

    await _client.uploadingSession.delete(
      where: UploadingSessionWhereUniqueInput(id: '$uploadSessionId'),
    );

    final uploadedFile =
        await _minio.statObject(_bucketName, session.filePath!);

    if (uploadedFile.size != session.fileSize) {
      unawaited(_minio.removeObject(_bucketName, session.filePath!));
      // TODO: заменить на кастомный эксепшн
      throw Exception('File size mismatch');
    }

    final name = '$uploadSessionId.png';
    final newPath = '$_originalFolder/$name';

    final originalImage = await _getOriginalImage(session.filePath!);
    await _minio.removeObject(_bucketName, session.filePath!);

    await _minio.putObject(
      _bucketName,
      newPath,
      Stream.fromIterable([img.encodePng(originalImage, level: 6)]),
    );

    final image = (await _client.fileDB.create(
      data: $1(
        FileDBCreateInput(
          authorId: session.authorId!,
          name: name,
          contentType: 'image/png',
          size: session.fileSize!,
          url: '$_storageUrl/$_bucketName/$newPath',
        ),
      ),
    ))
        .toDomain();

    final (thumbnail, small, medium, large) =
        await _uploadOptimizedVersions(originalImage, newPath, image.authorId);

    return (await _client.imageDB.create(
      data: $1(
        ImageDBCreateInput(
          original: FileDBCreateNestedOneWithoutOriginalImageInput(
            connect: FileDBWhereUniqueInput(id: '${image.id}'),
          ),
          thumbnail: FileDBCreateNestedOneWithoutThumbnailImageInput(
            connect: FileDBWhereUniqueInput(id: '${thumbnail.id}'),
          ),
          small: FileDBCreateNestedOneWithoutSmallImageInput(
            connect: FileDBWhereUniqueInput(id: '${small.id}'),
          ),
          medium: FileDBCreateNestedOneWithoutMediumImageInput(
            connect: FileDBWhereUniqueInput(id: '${medium.id}'),
          ),
          large: FileDBCreateNestedOneWithoutLargeImageInput(
            connect: FileDBWhereUniqueInput(id: '${large.id}'),
          ),
        ),
      ),
    ))
        .toDomain();
  }

  Future<img.Image> _getOriginalImage(String path) async {
    final originalStream = (await _minio.getObject(_bucketName, path));
    final originalData = await originalStream.fold<List<int>>(
      [],
      (previousValue, element) => previousValue..addAll(element),
    );
    return img.decodeImage(Uint8List.fromList(originalData))!;
  }

  Future<(File thumbnail, File small, File medium, File large)>
      _uploadOptimizedVersions(
          img.Image originalImage, String path, UuidValue authorId) async {
    final thumbnail = img.copyResize(
      originalImage,
      width: min(100, originalImage.width),
    );
    final small = img.copyResize(
      originalImage,
      width: min(300, originalImage.width),
    );
    final medium = img.copyResize(
      originalImage,
      width: min(600, originalImage.width),
    );
    final large = img.copyResize(
      originalImage,
      width: min(1200, originalImage.width),
    );

    final thumbnailPath = path.replaceFirst(_originalFolder, _thumbnailFolder);
    final smallPath = path.replaceFirst(_originalFolder, _smallFolder);
    final mediumPath = path.replaceFirst(_originalFolder, _mediumFolder);
    final largePath = path.replaceFirst(_originalFolder, _largeFolder);

    await _minio.putObject(
      _bucketName,
      thumbnailPath,
      Stream.fromIterable([img.encodePng(thumbnail, level: 14)]),
    );

    await _minio.putObject(
      _bucketName,
      smallPath,
      Stream.fromIterable([img.encodePng(small, level: 12)]),
    );

    await _minio.putObject(
      _bucketName,
      mediumPath,
      Stream.fromIterable([img.encodePng(medium, level: 8)]),
    );

    await _minio.putObject(
      _bucketName,
      largePath,
      Stream.fromIterable([img.encodePng(large, level: 6)]),
    );

    return (
      (await _client.fileDB.create(
        data: $1(
          FileDBCreateInput(
            authorId: '$authorId',
            name: thumbnailPath.split('/').last,
            contentType: 'image/png',
            size: thumbnail.length,
            url: '$_storageUrl/$_bucketName/$thumbnailPath',
          ),
        ),
      ))
          .toDomain(),
      (await _client.fileDB.create(
        data: $1(
          FileDBCreateInput(
            authorId: '$authorId',
            name: smallPath.split('/').last,
            contentType: 'image/png',
            size: small.length,
            url: '$_storageUrl/$_bucketName/$smallPath',
          ),
        ),
      ))
          .toDomain(),
      (await _client.fileDB.create(
        data: $1(
          FileDBCreateInput(
            authorId: '$authorId',
            name: mediumPath.split('/').last,
            contentType: 'image/png',
            size: medium.length,
            url: '$_storageUrl/$_bucketName/$mediumPath',
          ),
        ),
      ))
          .toDomain(),
      (await _client.fileDB.create(
        data: $1(
          FileDBCreateInput(
            authorId: '$authorId',
            name: largePath.split('/').last,
            contentType: 'image/png',
            size: large.length,
            url: '$_storageUrl/$_bucketName/$largePath',
          ),
        ),
      ))
          .toDomain(),
    );
  }
}

extension on FileDB {
  File toDomain() {
    return File(
      id: UuidValue.fromString(id!),
      authorId: UuidValue.fromString(authorId!),
      name: name!,
      contentType: contentType!,
      size: size!,
      url: Uri.dataFromString(url!),
      createdAt: createdAt!,
      updatedAt: updatedAt!,
    );
  }
}

extension on ImageDB {
  Image toDomain() {
    return Image(
      id: UuidValue.fromString(id!),
      original: original!.toDomain(),
      thumbnail: thumbnail!.toDomain(),
      small: small!.toDomain(),
      medium: medium!.toDomain(),
      large: large!.toDomain(),
      createdAt: createdAt!,
      updatedAt: updatedAt!,
    );
  }
}
