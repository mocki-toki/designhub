import 'package:shared/domain.dart';

final class MediaCategory extends Category {
  const MediaCategory({
    required this.id,
    required this.name,
  }) : super(
          id: id,
          key: keyName,
          value: name,
        );

  final UuidValue id;
  final String name;

  static const String keyName = 'media';

  static MediaCategory fromJson(Map<String, dynamic> json) {
    return MediaCategory(
      id: UuidValue.fromString(json['id'] as String),
      name: json['value'] as String,
    );
  }

  MediaCategory copyWith({
    UuidValue? id,
    String? name,
  }) {
    return MediaCategory(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }
}
