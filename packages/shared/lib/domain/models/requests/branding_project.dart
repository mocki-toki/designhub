import 'package:shared/domain.dart';

final class BrandingProjectRequest {
  const BrandingProjectRequest({
    required this.name,
    required this.description,
    required this.studio,
    required this.theme,
    required this.palette,
    required this.fonts,
    required this.categories,
  });

  final String name;
  final String description;
  final StudioCategory studio;
  final ThemeCategory theme;
  final List<ColorCategory> palette;
  final List<FontCategory> fonts;
  final List<Category> categories;

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'studio': studio.toJson(),
      'theme': theme.toJson(),
      'palette': palette.map((e) => e.toJson()).toList(),
      'fonts': fonts.map((e) => e.toJson()).toList(),
      'categories': categories.map((e) => e.toJson()).toList(),
    };
  }

  static BrandingProjectRequest fromJson(Map<String, dynamic> json) {
    return BrandingProjectRequest(
      name: json['name'] as String,
      description: json['description'] as String,
      studio: StudioCategory.fromJson(json['studio'] as Map<String, dynamic>),
      theme: ThemeCategory.fromJson(json['theme'] as Map<String, dynamic>),
      palette: (json['palette'] as List)
          .map((e) => ColorCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
      fonts: (json['fonts'] as List)
          .map((e) => FontCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
