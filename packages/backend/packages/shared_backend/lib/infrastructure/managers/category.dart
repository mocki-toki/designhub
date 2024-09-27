import 'dart:convert';

import 'package:shared_backend/domain.dart';
import 'package:shared_backend/infrastructure.dart';
import 'package:shared_prisma_backend/client.dart';

final class CategoryManager {
  CategoryManager(this._client);

  final PrismaSharedClient _client;

  Future<PaginatedList<Category>> getCategoriesByKey(
    String key, {
    required UuidValue? cursor,
    required int limit,
  }) async {
    final categories = await _client.categoryDB.findMany(
      select: _selectCategory(),
      cursor: cursor == null ? null : CategoryDBWhereUniqueInput(id: '$cursor'),
      where: CategoryDBWhereInput(
        key: $2(key),
      ),
      orderBy: $2(CategoryDBOrderByWithRelationInput(
        createdAt: SortOrder.asc,
      )),
      skip: cursor == null ? 0 : 1,
      take: limit,
    );

    return PaginatedList(
      categories.map((e) => e.toDomain()).toList(),
      categories.length < limit ? null : categories.last.id.toUuidOrNull(),
    );
  }

  Future<Category?> getCategoryById(UuidValue id) async {
    final category = await _client.categoryDB.findUnique(
      select: _selectCategory(),
      where: CategoryDBWhereUniqueInput(id: '$id'),
    );

    return category?.toDomain();
  }

  Future<List<Category>> getCategoriesByIds(List<UuidValue> categoryIds) async {
    final categories = await _client.categoryDB.findMany(
      select: _selectCategory(),
      where: CategoryDBWhereInput(
        id: $1(StringFilter(
          $in: $1(categoryIds.map((e) => e.toString()).toList()),
        )),
      ),
    );

    return categories.map((e) => e.toDomain()).toList();
  }
}

CategoryDBSelect _selectCategory() {
  return CategoryDBSelect(
    id: true,
    key: true,
    value: true,
    properties: true,
  );
}

extension CategoryDBToDomain on CategoryDB {
  Category toDomain() {
    return Category(
      id: id.toUuidOrNull()!,
      key: key!,
      value: value!,
      properties: jsonDecode(properties!),
    );
  }
}
