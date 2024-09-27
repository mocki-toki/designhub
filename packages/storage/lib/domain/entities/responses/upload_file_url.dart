import 'package:storage/domain.dart';

final class UploadFileUrl {
  const UploadFileUrl({
    required this.uploadSessionId,
    required this.uploadUrl,
    required this.expires,
  });

  final UuidValue uploadSessionId;
  final Uri uploadUrl;
  final DateTime expires;

  Map<String, dynamic> toJson() {
    return {
      'upload_session_id': uploadSessionId.toString(),
      'upload_url': uploadUrl.toString(),
      'expires': expires.toIso8601String(),
    };
  }

  static UploadFileUrl fromJson(Map<String, dynamic> json) {
    return UploadFileUrl(
      uploadSessionId:
          UuidValue.fromString(json['upload_session_id'] as String),
      uploadUrl: Uri.parse(json['upload_url'] as String),
      expires: DateTime.parse(json['expires'] as String),
    );
  }
}
