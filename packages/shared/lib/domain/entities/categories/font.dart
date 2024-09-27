import 'package:shared/domain.dart';

final class FontCategory extends Category {
  const FontCategory({
    required this.id,
    required this.name,
  }) : super(
          id: id,
          key: keyName,
          value: name,
        );

  final UuidValue id;
  final String name;

  static const String keyName = 'font';

  static FontCategory fromJson(Map<String, dynamic> json) {
    return FontCategory(
      id: UuidValue.fromString(json['id'] as String),
      name: json['value'] as String,
    );
  }

  FontCategory copyWith({
    UuidValue? id,
    String? name,
  }) {
    return FontCategory(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }
}
