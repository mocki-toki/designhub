import 'package:shared/domain.dart';

final class ColorCategory extends Category {
  ColorCategory({
    required this.id,
    required this.name,
    required this.hexColor,
  }) : super(
          id: id,
          key: keyName,
          value: name,
          properties: {'hex_color': '#${hexColor.toRadixString(16)}'},
        );

  final UuidValue id;
  final String name;
  final int hexColor;

  static const String keyName = 'color';

  static ColorCategory fromJson(Map<String, dynamic> json) {
    return ColorCategory(
      id: UuidValue.fromString(json['id'] as String),
      name: json['value'] as String,
      hexColor: int.parse(
          (json['properties']['hex_color'] as String).substring(1),
          radix: 16),
    );
  }

  ColorCategory copyWith({
    UuidValue? id,
    String? name,
    int? hexColor,
  }) {
    return ColorCategory(
      id: id ?? this.id,
      name: name ?? this.name,
      hexColor: hexColor ?? this.hexColor,
    );
  }
}
