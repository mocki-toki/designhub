import 'package:shared/domain.dart';

final class BrandingProject {
  const BrandingProject({
    required this.id,
    required this.name,
    required this.description,
    required this.children,
    required this.nextChildrenCursor,
    required this.studio,
    required this.theme,
    required this.palette,
    required this.fonts,
    required this.categories,
  });

  final UuidValue id;
  final String name;
  final String description;
  final List<BrandingPost> children;
  final UuidValue? nextChildrenCursor;
  final StudioCategory studio;
  final ThemeCategory theme;
  final List<ColorCategory> palette;
  final List<FontCategory> fonts;
  final List<Category> categories;

  Map<String, dynamic> toJson() {
    return {
      'id': '$id',
      'name': name,
      'description': description,
      'children': children.map((e) => e.toJson()).toList(),
      'next_children_cursor': nextChildrenCursor?.uuid,
      'studio': studio.toJson(),
      'theme': theme.toJson(),
      'palette': palette.map((e) => e.toJson()).toList(),
      'fonts': fonts.map((e) => e.toJson()).toList(),
      'categories': categories.map((e) => e.toJson()).toList(),
    };
  }

  static BrandingProject fromJson(Map<String, dynamic> json) {
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

    return BrandingProject(
      id: UuidValue.fromString(json['id'] as String),
      name: json['name'] as String,
      description: json['description'] as String,
      children: (json['children'] as List)
          .map((e) => BrandingPost.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextChildrenCursor: json['next_children_cursor'] == null
          ? null
          : UuidValue.fromString(json['next_children_cursor'] as String),
      studio: studio,
      theme: theme,
      palette: palette,
      fonts: fonts,
      categories: categories,
    );
  }
}
