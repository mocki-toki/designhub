import 'package:shared/domain.dart';

base class Category {
  const Category({
    required this.id,
    required this.key,
    required this.value,
    this.properties = const {},
  });

  final UuidValue id;
  final String key;
  final String value;
  final Map<String, dynamic> properties;

  Map<String, dynamic> toJson() {
    return {
      'id': '$id',
      'key': key,
      'value': value,
      'properties': properties,
    };
  }

  static Category fromJson(Map<String, dynamic> json) {
    // TODO: отдельная библиотека с маршрутизацией категорий между модулями, либо инициализирование в скоуп
    if (json['key'] == ColorCategory.keyName) {
      return ColorCategory.fromJson(json);
    }

    if (json['key'] == StudioCategory.keyName) {
      return StudioCategory.fromJson(json);
    }

    if (json['key'] == ThemeCategory.keyName) {
      return ThemeCategory.fromJson(json);
    }

    if (json['key'] == FontCategory.keyName) {
      return FontCategory.fromJson(json);
    }

    return Category(
      id: UuidValue.fromString(json['id'] as String),
      key: json['key'] as String,
      value: json['value'] as String,
      properties: json['properties'] as Map<String, dynamic>,
    );
  }

  @override
  operator ==(Object other) {
    return other is Category && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}
