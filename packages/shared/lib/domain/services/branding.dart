import 'package:shared/domain.dart';

abstract interface class BrandingService {
  Future<PaginatedDataOrFailure<BrandingProject>> getProjects({
    UuidValue? cursor,
    required int limit,
    required int childrenLimit,
  });

  Future<PaginatedDataOrFailure<BrandingStudio>> getStudios({
    UuidValue? cursor,
    required int limit,
    required int previewLimit,
  });

  Future<PaginatedDataOrFailure<BrandingTheme>> getThemes({
    UuidValue? cursor,
    required int limit,
    required int previewLimit,
  });

  Future<PaginatedDataOrFailure<BrandingPost>> getPosts({
    UuidValue? cursor,
    required int limit,
    UuidValue? byProject,
    List<UuidValue> byCategories = const [],
  });

  Future<DataOrFailure<BrandingProject>> getProjectById(
    UuidValue id, {
    required int childrenLimit,
  });

  Future<DataOrFailure<BrandingPost>> getPostById(UuidValue id);
}
