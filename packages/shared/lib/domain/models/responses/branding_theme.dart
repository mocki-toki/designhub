import 'package:shared/domain.dart';

final class BrandingTheme {
  const BrandingTheme({
    required this.id,
    required this.name,
    required this.projectsCounter,
    required this.previews,
  });

  final UuidValue id;
  final String name;
  final int projectsCounter;
  final List<BrandingPost> previews;

  Map<String, dynamic> toJson() {
    return {
      'id': '$id',
      'name': name,
      'projects_counter': projectsCounter,
      'previews': previews.map((e) => e.toJson()).toList(),
    };
  }

  ThemeCategory toCategory() {
    return ThemeCategory(
      id: id,
      name: name,
    );
  }

  static BrandingTheme fromJson(Map<String, dynamic> json) {
    return BrandingTheme(
      id: UuidValue.fromString(json['id'] as String),
      name: json['name'] as String,
      projectsCounter: json['projects_counter'] as int,
      previews: (json['previews'] as List)
          .map((e) => BrandingPost.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
