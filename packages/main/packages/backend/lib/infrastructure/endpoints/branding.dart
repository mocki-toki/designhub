import 'package:backend/domain.dart';
import 'package:backend/infrastructure.dart';

final class BrandingEndpoint implements BrandingService {
  BrandingEndpoint(
    this._brandingManager,
  );

  final BrandingManager _brandingManager;

  @override
  Future<PaginatedDataOrFailure<BrandingProject>> getProjects({
    UuidValue? cursor,
    required int limit,
    required int childrenLimit,
  }) async {
    final data = await _brandingManager.getProjects(
        cursor: cursor, limit: limit, childrenLimit: childrenLimit);
    return successful(data);
  }

  @override
  Future<PaginatedDataOrFailure<BrandingStudio>> getStudios({
    UuidValue? cursor,
    required int limit,
    required int previewLimit,
  }) async {
    final data = await _brandingManager.getStudios(
      cursor: cursor,
      limit: limit,
      previewLimit: previewLimit,
    );
    return successful(data);
  }

  @override
  Future<PaginatedDataOrFailure<BrandingTheme>> getThemes({
    UuidValue? cursor,
    required int limit,
    required int previewLimit,
  }) async {
    final data = await _brandingManager.getThemes(
      cursor: cursor,
      limit: limit,
      previewLimit: previewLimit,
    );

    return successful(data);
  }

  @override
  Future<PaginatedDataOrFailure<BrandingPost>> getPosts({
    UuidValue? cursor,
    required int limit,
    UuidValue? byProject,
    List<UuidValue> byCategories = const [],
  }) async {
    final data = await _brandingManager.getPosts(
      cursor: cursor,
      limit: limit,
      byProject: byProject,
      byCategories: byCategories,
    );
    return successful(data);
  }

  @override
  Future<DataOrFailure<BrandingProject>> getProjectById(UuidValue id,
      {required int childrenLimit}) async {
    final data =
        await _brandingManager.getProjectById(id, childrenLimit: childrenLimit);
    return successful(data);
  }

  @override
  Future<DataOrFailure<BrandingPost>> getPostById(UuidValue id) async {
    final data = await _brandingManager.getPostById(id);
    return successful(data);
  }
}
