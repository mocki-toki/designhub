import 'package:storage/domain.dart';

final class File {
  const File({
    required this.id,
    required this.authorId,
    required this.name,
    required this.contentType,
    required this.size,
    required this.url,
    required this.createdAt,
    required this.updatedAt,
  });

  final UuidValue id;
  final UuidValue authorId;
  final String name;
  final String contentType;
  final int size;
  final Uri url;
  final DateTime createdAt;
  final DateTime updatedAt;

  Map<String, dynamic> toJson() {
    return {
      'id': id.toString(),
      'author_id': authorId.toString(),
      'name': name,
      'content_type': contentType,
      'size': size,
      'url': url.toString(),
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }

  static File fromJson(Map<String, dynamic> json) {
    return File(
      id: UuidValue.fromString(json['id'] as String),
      authorId: UuidValue.fromString(json['author_id'] as String),
      name: json['name'] as String,
      contentType: json['content_type'] as String,
      size: json['size'] as int,
      url: Uri.parse(json['url'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );
  }
}
