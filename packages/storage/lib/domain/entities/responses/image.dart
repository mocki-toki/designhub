import 'package:storage/domain.dart';

final class Image {
  const Image({
    required this.id,
    required this.original,
    required this.thumbnail,
    required this.small,
    required this.medium,
    required this.large,
    required this.createdAt,
    required this.updatedAt,
  });

  final UuidValue id;
  final File original;
  final File thumbnail;
  final File small;
  final File medium;
  final File large;
  final DateTime createdAt;
  final DateTime updatedAt;

  Map<String, dynamic> toJson() {
    return {
      'id': id.toString(),
      'original': original.toJson(),
      'thumbnail': thumbnail.toJson(),
      'small': small.toJson(),
      'medium': medium.toJson(),
      'large': large.toJson(),
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }

  static Image fromJson(Map<String, dynamic> json) {
    return Image(
      id: UuidValue.fromString(json['id'] as String),
      original: File.fromJson(json['original'] as Map<String, dynamic>),
      thumbnail: File.fromJson(json['thumbnail'] as Map<String, dynamic>),
      small: File.fromJson(json['small'] as Map<String, dynamic>),
      medium: File.fromJson(json['medium'] as Map<String, dynamic>),
      large: File.fromJson(json['large'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );
  }
}
