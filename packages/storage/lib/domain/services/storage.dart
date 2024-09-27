import 'package:storage/domain.dart';

abstract interface class StorageService {
  Future<DataOrFailure<UploadFileUrl>> getUploadImageUrl(ImageRequest request);
}
