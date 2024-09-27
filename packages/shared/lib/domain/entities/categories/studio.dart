import 'package:shared/domain.dart';

final class StudioCategory extends Category {
  StudioCategory({
    required this.id,
    required this.name,
    required this.logoUrl,
  }) : super(
          id: id,
          key: keyName,
          value: name,
          properties: {
            'logo_url': logoUrl.toString(),
          },
        );

  final UuidValue id;
  final String name;
  final Uri logoUrl;

  static const String keyName = 'studio';

  static StudioCategory fromJson(Map<String, dynamic> json) {
    return StudioCategory(
      id: UuidValue.fromString(json['id'] as String),
      name: json['value'] as String,
      logoUrl: Uri.parse(json['properties']['logo_url'] as String),
    );
  }

  StudioCategory copyWith({
    UuidValue? id,
    String? name,
  }) {
    return StudioCategory(
      id: id ?? this.id,
      name: name ?? this.name,
      logoUrl: logoUrl,
    );
  }
}
