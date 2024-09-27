import 'package:shared/domain.dart';

final class BrandingPostRequest {
  const BrandingPostRequest({
    required this.parentId,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.studio,
    required this.theme,
    required this.palette,
    required this.fonts,
    required this.categories,
  });

  final UuidValue parentId;
  final String name;
  final String description;
  final Uri? imageUrl;
  final StudioCategory studio;
  final ThemeCategory theme;
  final List<ColorCategory> palette;
  final List<FontCategory> fonts;
  final List<Category> categories;

  Map<String, dynamic> toJson() {
    return {
      'parent_id': parentId.toString(),
      'name': name,
      'description': description,
      'image_url': imageUrl?.toString(),
      'studio': studio.toJson(),
      'theme': theme.toJson(),
      'palette': palette.map((e) => e.toJson()).toList(),
      'fonts': fonts.map((e) => e.toJson()).toList(),
      'categories': categories.map((e) => e.toJson()).toList(),
    };
  }

  static BrandingPostRequest fromJson(Map<String, dynamic> json) {
    return BrandingPostRequest(
      parentId: UuidValue.fromString(json['parent_id'] as String),
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: Uri.tryParse(json['image_url'] as String? ?? ''),
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
