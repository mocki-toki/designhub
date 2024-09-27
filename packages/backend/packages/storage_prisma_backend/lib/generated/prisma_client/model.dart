// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'model.dart' as _i1;

class UploadingSession {
  const UploadingSession({
    this.id,
    this.authorId,
    this.createdAt,
    this.expiresAt,
    this.filePath,
    this.fileSize,
  });

  factory UploadingSession.fromJson(Map json) => UploadingSession(
        id: json['id'],
        authorId: json['authorId'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        expiresAt: switch (json['expiresAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['expiresAt']
        },
        filePath: json['filePath'],
        fileSize: json['fileSize'],
      );

  final String? id;

  final String? authorId;

  final DateTime? createdAt;

  final DateTime? expiresAt;

  final String? filePath;

  final int? fileSize;

  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'createdAt': createdAt?.toIso8601String(),
        'expiresAt': expiresAt?.toIso8601String(),
        'filePath': filePath,
        'fileSize': fileSize,
      };
}

class CreateManyUploadingSessionAndReturnOutputType {
  const CreateManyUploadingSessionAndReturnOutputType({
    this.id,
    this.authorId,
    this.createdAt,
    this.expiresAt,
    this.filePath,
    this.fileSize,
  });

  factory CreateManyUploadingSessionAndReturnOutputType.fromJson(Map json) =>
      CreateManyUploadingSessionAndReturnOutputType(
        id: json['id'],
        authorId: json['authorId'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        expiresAt: switch (json['expiresAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['expiresAt']
        },
        filePath: json['filePath'],
        fileSize: json['fileSize'],
      );

  final String? id;

  final String? authorId;

  final DateTime? createdAt;

  final DateTime? expiresAt;

  final String? filePath;

  final int? fileSize;

  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'createdAt': createdAt?.toIso8601String(),
        'expiresAt': expiresAt?.toIso8601String(),
        'filePath': filePath,
        'fileSize': fileSize,
      };
}

class VideoDB {
  const VideoDB({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.fileId,
    this.previewId,
    this.file,
    this.preview,
  });

  factory VideoDB.fromJson(Map json) => VideoDB(
        id: json['id'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        fileId: json['fileId'],
        previewId: json['previewId'],
        file: json['file'] is Map ? _i1.FileDB.fromJson(json['file']) : null,
        preview: json['preview'] is Map
            ? _i1.ImageDB.fromJson(json['preview'])
            : null,
      );

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String? fileId;

  final String? previewId;

  final _i1.FileDB? file;

  final _i1.ImageDB? preview;

  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'fileId': fileId,
        'previewId': previewId,
        'file': file?.toJson(),
        'preview': preview?.toJson(),
      };
}

class ImageDB {
  const ImageDB({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.originalId,
    this.thumbnailId,
    this.smallId,
    this.mediumId,
    this.largeId,
    this.original,
    this.thumbnail,
    this.small,
    this.medium,
    this.large,
    this.video,
  });

  factory ImageDB.fromJson(Map json) => ImageDB(
        id: json['id'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        originalId: json['originalId'],
        thumbnailId: json['thumbnailId'],
        smallId: json['smallId'],
        mediumId: json['mediumId'],
        largeId: json['largeId'],
        original: json['original'] is Map
            ? _i1.FileDB.fromJson(json['original'])
            : null,
        thumbnail: json['thumbnail'] is Map
            ? _i1.FileDB.fromJson(json['thumbnail'])
            : null,
        small: json['small'] is Map ? _i1.FileDB.fromJson(json['small']) : null,
        medium:
            json['medium'] is Map ? _i1.FileDB.fromJson(json['medium']) : null,
        large: json['large'] is Map ? _i1.FileDB.fromJson(json['large']) : null,
        video:
            json['video'] is Map ? _i1.VideoDB.fromJson(json['video']) : null,
      );

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String? originalId;

  final String? thumbnailId;

  final String? smallId;

  final String? mediumId;

  final String? largeId;

  final _i1.FileDB? original;

  final _i1.FileDB? thumbnail;

  final _i1.FileDB? small;

  final _i1.FileDB? medium;

  final _i1.FileDB? large;

  final _i1.VideoDB? video;

  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'originalId': originalId,
        'thumbnailId': thumbnailId,
        'smallId': smallId,
        'mediumId': mediumId,
        'largeId': largeId,
        'original': original?.toJson(),
        'thumbnail': thumbnail?.toJson(),
        'small': small?.toJson(),
        'medium': medium?.toJson(),
        'large': large?.toJson(),
        'video': video?.toJson(),
      };
}

class FileDB {
  const FileDB({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
    this.originalImage,
    this.thumbnailImage,
    this.smallImage,
    this.mediumImage,
    this.largeImage,
    this.video,
  });

  factory FileDB.fromJson(Map json) => FileDB(
        id: json['id'],
        authorId: json['authorId'],
        name: json['name'],
        contentType: json['contentType'],
        size: json['size'],
        url: json['url'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        originalImage: json['originalImage'] is Map
            ? _i1.ImageDB.fromJson(json['originalImage'])
            : null,
        thumbnailImage: json['thumbnailImage'] is Map
            ? _i1.ImageDB.fromJson(json['thumbnailImage'])
            : null,
        smallImage: json['smallImage'] is Map
            ? _i1.ImageDB.fromJson(json['smallImage'])
            : null,
        mediumImage: json['mediumImage'] is Map
            ? _i1.ImageDB.fromJson(json['mediumImage'])
            : null,
        largeImage: json['largeImage'] is Map
            ? _i1.ImageDB.fromJson(json['largeImage'])
            : null,
        video:
            json['video'] is Map ? _i1.VideoDB.fromJson(json['video']) : null,
      );

  final String? id;

  final String? authorId;

  final String? name;

  final String? contentType;

  final int? size;

  final String? url;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i1.ImageDB? originalImage;

  final _i1.ImageDB? thumbnailImage;

  final _i1.ImageDB? smallImage;

  final _i1.ImageDB? mediumImage;

  final _i1.ImageDB? largeImage;

  final _i1.VideoDB? video;

  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'originalImage': originalImage?.toJson(),
        'thumbnailImage': thumbnailImage?.toJson(),
        'smallImage': smallImage?.toJson(),
        'mediumImage': mediumImage?.toJson(),
        'largeImage': largeImage?.toJson(),
        'video': video?.toJson(),
      };
}

class CreateManyFileDBAndReturnOutputType {
  const CreateManyFileDBAndReturnOutputType({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
  });

  factory CreateManyFileDBAndReturnOutputType.fromJson(Map json) =>
      CreateManyFileDBAndReturnOutputType(
        id: json['id'],
        authorId: json['authorId'],
        name: json['name'],
        contentType: json['contentType'],
        size: json['size'],
        url: json['url'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
      );

  final String? id;

  final String? authorId;

  final String? name;

  final String? contentType;

  final int? size;

  final String? url;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
      };
}

class CreateManyImageDBAndReturnOutputType {
  const CreateManyImageDBAndReturnOutputType({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.originalId,
    this.thumbnailId,
    this.smallId,
    this.mediumId,
    this.largeId,
    this.original,
    this.thumbnail,
    this.small,
    this.medium,
    this.large,
  });

  factory CreateManyImageDBAndReturnOutputType.fromJson(Map json) =>
      CreateManyImageDBAndReturnOutputType(
        id: json['id'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        originalId: json['originalId'],
        thumbnailId: json['thumbnailId'],
        smallId: json['smallId'],
        mediumId: json['mediumId'],
        largeId: json['largeId'],
        original: json['original'] is Map
            ? _i1.FileDB.fromJson(json['original'])
            : null,
        thumbnail: json['thumbnail'] is Map
            ? _i1.FileDB.fromJson(json['thumbnail'])
            : null,
        small: json['small'] is Map ? _i1.FileDB.fromJson(json['small']) : null,
        medium:
            json['medium'] is Map ? _i1.FileDB.fromJson(json['medium']) : null,
        large: json['large'] is Map ? _i1.FileDB.fromJson(json['large']) : null,
      );

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String? originalId;

  final String? thumbnailId;

  final String? smallId;

  final String? mediumId;

  final String? largeId;

  final _i1.FileDB? original;

  final _i1.FileDB? thumbnail;

  final _i1.FileDB? small;

  final _i1.FileDB? medium;

  final _i1.FileDB? large;

  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'originalId': originalId,
        'thumbnailId': thumbnailId,
        'smallId': smallId,
        'mediumId': mediumId,
        'largeId': largeId,
        'original': original?.toJson(),
        'thumbnail': thumbnail?.toJson(),
        'small': small?.toJson(),
        'medium': medium?.toJson(),
        'large': large?.toJson(),
      };
}

class CreateManyVideoDBAndReturnOutputType {
  const CreateManyVideoDBAndReturnOutputType({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.fileId,
    this.previewId,
    this.file,
    this.preview,
  });

  factory CreateManyVideoDBAndReturnOutputType.fromJson(Map json) =>
      CreateManyVideoDBAndReturnOutputType(
        id: json['id'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        fileId: json['fileId'],
        previewId: json['previewId'],
        file: json['file'] is Map ? _i1.FileDB.fromJson(json['file']) : null,
        preview: json['preview'] is Map
            ? _i1.ImageDB.fromJson(json['preview'])
            : null,
      );

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String? fileId;

  final String? previewId;

  final _i1.FileDB? file;

  final _i1.ImageDB? preview;

  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'fileId': fileId,
        'previewId': previewId,
        'file': file?.toJson(),
        'preview': preview?.toJson(),
      };
}
