import 'package:shared/domain.dart';

final class BrandingStudio {
  const BrandingStudio({
    required this.id,
    required this.name,
    required this.logoUrl,
    required this.projectsCounter,
    required this.previews,
  });

  final UuidValue id;
  final String name;
  final Uri logoUrl;
  final int projectsCounter;
  final List<BrandingPost> previews;

  Map<String, dynamic> toJson() {
    return {
      'id': '$id',
      'name': name,
      'logo_url': logoUrl.toString(),
      'projects_counter': projectsCounter,
      'previews': previews.map((e) => e.toJson()).toList(),
    };
  }

  StudioCategory toCategory() {
    return StudioCategory(
      id: id,
      name: name,
      logoUrl: logoUrl,
    );
  }

  static BrandingStudio fromJson(Map<String, dynamic> json) {
    return BrandingStudio(
      id: UuidValue.fromString(json['id'] as String),
      name: json['name'] as String,
      logoUrl: Uri.parse(json['logo_url'] as String),
      projectsCounter: json['projects_counter'] as int,
      previews: (json['previews'] as List)
          .map((e) => BrandingPost.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
