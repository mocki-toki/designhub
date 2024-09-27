import 'package:shared/domain.dart';

abstract interface class CategoryService {
  Future<PaginatedDataOrFailure<Category>> getCategoriesByKey(
    String key, {
    UuidValue? cursor,
    required int limit,
  });
}
