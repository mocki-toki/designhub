final class ImageRequest {
  const ImageRequest({
    required this.contentType,
    required this.size,
  });

  final String contentType;
  final int size;

  Map<String, dynamic> toJson() {
    return {
      'content_type': contentType,
      'size': size,
    };
  }

  static ImageRequest fromJson(Map<String, dynamic> json) {
    return ImageRequest(
      contentType: json['content_type'] as String,
      size: json['size'] as int,
    );
  }
}
