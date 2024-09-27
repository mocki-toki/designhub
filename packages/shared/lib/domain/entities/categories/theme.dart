import 'package:shared/domain.dart';

final class ThemeCategory extends Category {
  const ThemeCategory({
    required this.id,
    required this.name,
  }) : super(
          id: id,
          key: keyName,
          value: name,
        );

  final UuidValue id;
  final String name;

  static const String keyName = 'theme';

  static ThemeCategory fromJson(Map<String, dynamic> json) {
    return ThemeCategory(
      id: UuidValue.fromString(json['id'] as String),
      name: json['value'] as String,
    );
  }

  ThemeCategory copyWith({
    UuidValue? id,
    String? name,
  }) {
    return ThemeCategory(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }
}
