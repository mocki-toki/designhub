import 'package:backend/domain.dart';
import 'package:backend/infrastructure.dart';

final class CategoryEndpoint implements CategoryService {
  CategoryEndpoint(
    this._categoryManager,
  );

  final CategoryManager _categoryManager;

  @override
  Future<PaginatedDataOrFailure<Category>> getCategoriesByKey(
    String key, {
    UuidValue? cursor,
    required int limit,
  }) async {
    final data = await _categoryManager.getCategoriesByKey(
      key,
      cursor: cursor,
      limit: limit,
    );
    return successful(data);
  }
}
