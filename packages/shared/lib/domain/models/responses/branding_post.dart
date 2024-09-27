import 'package:shared/domain.dart';

final class BrandingPost {
  const BrandingPost({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.studio,
    required this.theme,
    required this.palette,
    required this.fonts,
    required this.categories,
    required this.parent,
  });

  final UuidValue id;
  final String name;
  final String description;
  final Uri? imageUrl;
  final StudioCategory studio;
  final ThemeCategory theme;
  final List<ColorCategory> palette;
  final List<FontCategory> fonts;
  final List<Category> categories;
  final BrandingPostParent? parent;

  Map<String, dynamic> toJson() {
    return {
      'id': '$id',
      'name': name,
      'description': description,
      'image_url': imageUrl?.toString(),
      'studio': studio.toJson(),
      'theme': theme.toJson(),
      'palette': palette.map((e) => e.toJson()).toList(),
      'fonts': fonts.map((e) => e.toJson()).toList(),
      'categories': categories.map((e) => e.toJson()).toList(),
      if (parent != null) 'parent': parent!.toJson(),
    };
  }

  static BrandingPost fromJson(Map<String, dynamic> json) {
    late final StudioCategory studio;
    late final ThemeCategory theme;
    late final List<ColorCategory> palette;
    late final List<FontCategory> fonts;
    final List<Category> categories = (json['categories'] as List)
        .map((e) => Category.fromJson(e as Map<String, dynamic>))
        .toList();

    if (json.containsKey('studio')) {
      studio = StudioCategory.fromJson(json['studio'] as Map<String, dynamic>);
      theme = ThemeCategory.fromJson(json['theme'] as Map<String, dynamic>);
      palette = (json['palette'] as List)
          .map((e) => ColorCategory.fromJson(e as Map<String, dynamic>))
          .toList();
      fonts = (json['fonts'] as List)
          .map((e) => FontCategory.fromJson(e as Map<String, dynamic>))
          .toList();
    } else {
      studio = categories.firstWhere(
        (element) => element.key == StudioCategory.keyName,
      ) as StudioCategory;

      theme = categories.firstWhere(
        (element) => element.key == ThemeCategory.keyName,
      ) as ThemeCategory;

      palette = categories
          .where((element) => element.key == ColorCategory.keyName)
          .map((e) => e as ColorCategory)
          .toList();

      fonts = categories
          .where((element) => element.key == FontCategory.keyName)
          .map((e) => e as FontCategory)
          .toList();

      categories.removeWhere(
        (element) =>
            element.key == StudioCategory.keyName ||
            element.key == ThemeCategory.keyName ||
            element.key == ColorCategory.keyName ||
            element.key == FontCategory.keyName,
      );
    }

    return BrandingPost(
      id: UuidValue.fromString(json['id'] as String),
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: Uri.tryParse(json['image_url'] as String? ?? ''),
      studio: studio,
      theme: theme,
      palette: palette,
      fonts: fonts,
      categories: categories,
      parent: json.containsKey('parent')
          ? BrandingPostParent.fromJson(json['parent'] as Map<String, dynamic>)
          : null,
    );
  }
}

final class BrandingPostParent {
  const BrandingPostParent({
    required this.id,
    required this.name,
    required this.description,
  });

  final UuidValue id;
  final String name;
  final String description;

  Map<String, dynamic> toJson() {
    return {
      'id': '$id',
      'name': name,
      'description': description,
    };
  }

  static BrandingPostParent fromJson(Map<String, dynamic> json) {
    return BrandingPostParent(
      id: UuidValue.fromString(json['id'] as String),
      name: json['name'] as String,
      description: json['description'] as String,
    );
  }
}
