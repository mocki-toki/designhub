import 'package:app/infrastructure.dart';
import 'package:app/domain.dart';

final class CategoryServiceImpl implements CategoryService {
  CategoryServiceImpl(this._dio);

  final Dio _dio;

  @override
  Future<PaginatedDataOrFailure<Category>> getCategoriesByKey(
    String key, {
    UuidValue? cursor,
    required int limit,
  }) async {
    return _dio.get(
      '/categories/$key',
      queryParameters: {
        'cursor': cursor?.uuid,
        'limit': limit,
      },
    ).toPaginatedData((r) => Category.fromJson(r));
  }
}
