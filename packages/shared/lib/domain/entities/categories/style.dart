import 'package:shared/domain.dart';

final class StyleCategory extends Category {
  const StyleCategory({
    required this.id,
    required this.name,
  }) : super(
          id: id,
          key: keyName,
          value: name,
        );

  final UuidValue id;
  final String name;

  static const String keyName = 'style';

  static StyleCategory fromJson(Map<String, dynamic> json) {
    return StyleCategory(
      id: UuidValue.fromString(json['id'] as String),
      name: json['value'] as String,
    );
  }

  StyleCategory copyWith({
    UuidValue? id,
    String? name,
  }) {
    return StyleCategory(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }
}
