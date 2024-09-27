import 'package:app/infrastructure.dart';
import 'package:app/domain.dart';

final class BrandingServiceImpl implements BrandingService {
  BrandingServiceImpl(this._dio);

  final Dio _dio;

  @override
  Future<PaginatedDataOrFailure<BrandingProject>> getProjects({
    UuidValue? cursor,
    required int limit,
    required int childrenLimit,
  }) {
    return _dio.get(
      '/branding/projects',
      queryParameters: {
        'cursor': cursor?.uuid,
        'limit': limit,
        'children_limit': childrenLimit,
      },
    ).toPaginatedData((r) => BrandingProject.fromJson(r));
  }

  @override
  Future<PaginatedDataOrFailure<BrandingStudio>> getStudios({
    UuidValue? cursor,
    required int limit,
    required int previewLimit,
  }) {
    return _dio.get(
      '/branding/studios',
      queryParameters: {
        'cursor': cursor?.uuid,
        'limit': limit,
        'preview_limit': previewLimit,
      },
    ).toPaginatedData((r) => BrandingStudio.fromJson(r));
  }

  @override
  Future<PaginatedDataOrFailure<BrandingTheme>> getThemes({
    UuidValue? cursor,
    required int limit,
    required int previewLimit,
  }) {
    return _dio.get(
      '/branding/themes',
      queryParameters: {
        'cursor': cursor?.uuid,
        'limit': limit,
        'preview_limit': previewLimit,
      },
    ).toPaginatedData((r) => BrandingTheme.fromJson(r));
  }

  @override
  Future<PaginatedDataOrFailure<BrandingPost>> getPosts({
    UuidValue? cursor,
    required int limit,
    UuidValue? byProject,
    List<UuidValue> byCategories = const [],
  }) {
    return _dio.get(
      '/branding/posts',
      queryParameters: {
        'cursor': cursor?.uuid,
        'limit': limit,
        'by_project': byProject?.uuid,
        if (byCategories.isNotEmpty)
          'by_categories': byCategories.map((e) => e.uuid).join(','),
      },
    ).toPaginatedData((r) => BrandingPost.fromJson(r));
  }

  @override
  Future<DataOrFailure<BrandingProject>> getProjectById(
    UuidValue id, {
    required int childrenLimit,
  }) {
    return _dio.get(
      '/branding/project/$id',
      queryParameters: {
        'children_limit': childrenLimit,
      },
    ).toData((r) => BrandingProject.fromJson(r));
  }

  @override
  Future<DataOrFailure<BrandingPost>> getPostById(UuidValue id) {
    return _dio
        .get('/branding/post/$id')
        .toData((r) => BrandingPost.fromJson(r));
  }
}
