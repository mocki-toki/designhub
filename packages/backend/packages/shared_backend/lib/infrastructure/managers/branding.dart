import 'dart:convert';

import 'package:shared_backend/domain.dart';
import 'package:shared_backend/infrastructure.dart';
import 'package:shared_prisma_backend/client.dart';

final class BrandingManager {
  BrandingManager(this._client, this._categoryManager);
  final PrismaSharedClient _client;
  final CategoryManager _categoryManager;

  Future<PaginatedList<BrandingProject>> getProjects({
    required UuidValue? cursor,
    required int limit,
    required int childrenLimit,
  }) async {
    final projects = await _client.brandingProjectDB.findMany(
      select: BrandingProjectDBSelect(
        id: true,
        name: true,
        description: true,
        createdAt: true,
        updatedAt: true,
        categories: $2(BrandingProjectDBCategoriesArgs(
          select: ProjectCategoryDBSelect(
            projectId: false,
            categoryId: false,
            brandingProjectDB: $1(false),
            categoryDB: $1(true),
          ),
        )),
        children: $2(
          BrandingProjectDBChildrenArgs(
              take: childrenLimit,
              include: BrandingPostDBInclude(
                categories: $2(
                  BrandingPostDBCategoriesArgs(
                    select: PostCategoryDBSelect(
                      postId: false,
                      categoryId: false,
                      brandingPostDB: $1(false),
                      categoryDB: $1(true),
                    ),
                  ),
                ),
              )),
        ),
      ),
      skip: cursor == null ? 0 : 1,
      cursor: cursor == null
          ? null
          : BrandingProjectDBWhereUniqueInput(id: '$cursor'),
      orderBy: $2(BrandingProjectDBOrderByWithRelationInput(
        createdAt: SortOrder.asc,
      )),
      take: limit,
    );

    return PaginatedList(
      projects.map((e) => e.toDomain()).toList(),
      projects.length < limit ? null : projects.last.id.toUuidOrNull(),
    );
  }

  Future<PaginatedList<BrandingStudio>> getStudios({
    required UuidValue? cursor,
    required int limit,
    required int previewLimit,
  }) async {
    final categories = await _categoryManager.getCategoriesByKey(
      StudioCategory.keyName,
      cursor: cursor,
      limit: limit,
    );

    final result = await Future.wait(categories.map((category) async {
      final studioCategory = StudioCategory.fromJson(category.toJson());
      return BrandingStudio(
        id: studioCategory.id,
        name: studioCategory.value,
        logoUrl: studioCategory.logoUrl,
        projectsCounter: await getProjectsCounterByCategory(studioCategory),
        previews: await getPostsByCategory(studioCategory, limit: previewLimit),
      );
    }).toList());

    return PaginatedList(result, categories.nextCursor);
  }

  Future<PaginatedList<BrandingTheme>> getThemes({
    required UuidValue? cursor,
    required int limit,
    required int previewLimit,
  }) async {
    final themes = await _categoryManager.getCategoriesByKey(
      ThemeCategory.keyName,
      cursor: cursor,
      limit: limit,
    );

    final result = await Future.wait(themes.map((theme) async {
      return BrandingTheme(
        id: theme.id,
        name: theme.value,
        projectsCounter: await getProjectsCounterByCategory(theme),
        previews: await getPostsByCategory(theme, limit: previewLimit),
      );
    }).toList());

    return PaginatedList(result, themes.nextCursor);
  }

  Future<PaginatedList<BrandingPost>> getPosts({
    required UuidValue? cursor,
    required int limit,
    required UuidValue? byProject,
    required List<UuidValue> byCategories,
    bool withParent = true,
  }) async {
    final posts = await _client.brandingPostDB.findMany(
      select: BrandingPostDBSelect(
        id: true,
        name: true,
        description: true,
        imageUrl: true,
        parent: withParent
            ? $2(
                BrandingPostDBParentArgs(
                  select: BrandingProjectDBSelect(
                    id: true,
                    name: true,
                    description: true,
                  ),
                ),
              )
            : null,
        categories: $2(
          BrandingPostDBCategoriesArgs(
            select: PostCategoryDBSelect(
              categoryDB: $1(true),
            ),
          ),
        ),
      ),
      where: BrandingPostDBWhereInput(
        parent: byProject != null
            ? $2(BrandingProjectDBWhereInput(
                id: $2('${byProject}'),
              ))
            : null,
        categories: byCategories.isNotEmpty
            ? PostCategoryDBListRelationFilter(
                some: PostCategoryDBWhereInput(
                  categoryId: $1(StringFilter(
                    $in: $1(byCategories.map((e) => '${e}')),
                  )),
                ),
              )
            : null,
      ),
      orderBy: $2(BrandingPostDBOrderByWithRelationInput(
        createdAt: SortOrder.desc,
      )),
      cursor:
          cursor == null ? null : BrandingPostDBWhereUniqueInput(id: '$cursor'),
      skip: cursor == null ? 0 : 1,
      take: limit,
    );

    return PaginatedList(
      posts.map((e) => e.toDomain()).toList(),
      posts.length < limit ? null : posts.last.id.toUuidOrNull(),
    );
  }

  Future<BrandingProject> getProjectById(UuidValue id,
      {required int childrenLimit}) async {
    final project = await _client.brandingProjectDB.findUnique(
      select: BrandingProjectDBSelect(
        id: true,
        name: true,
        description: true,
        createdAt: true,
        updatedAt: true,
        children: $2(
          BrandingProjectDBChildrenArgs(
            take: childrenLimit,
            include: BrandingPostDBInclude(
              categories: $2(
                BrandingPostDBCategoriesArgs(
                  select: PostCategoryDBSelect(categoryDB: $1(true)),
                ),
              ),
            ),
          ),
        ),
        categories: $2(
          BrandingProjectDBCategoriesArgs(
            select: ProjectCategoryDBSelect(
              categoryDB: $1(true),
            ),
          ),
        ),
      ),
      where: BrandingProjectDBWhereUniqueInput(id: '${id}'),
    );

    // TODO: добавить возврат ошибок если не найдено

    final retrieveCategories = _splitCategories(
      project!.categories!.map((e) => e.toDomain()),
    );

    return BrandingProject(
      id: project.id.toUuidOrNull()!,
      name: project.name!,
      description: project.description!,
      children: project.children!.map((e) => e.toDomain()).toList(),
      nextChildrenCursor: project.children?.lastOrNull?.id.toUuidOrNull(),
      studio: retrieveCategories.studio,
      theme: retrieveCategories.theme,
      palette: retrieveCategories.palette,
      fonts: retrieveCategories.fonts,
      categories: retrieveCategories.otherCategories,
    );
  }

  Future<BrandingPost> getPostById(UuidValue id) async {
    final post = await _client.brandingPostDB.findUnique(
      select: BrandingPostDBSelect(
        id: true,
        name: true,
        description: true,
        imageUrl: true,
        parent: $2(
          BrandingPostDBParentArgs(
            select: BrandingProjectDBSelect(
              id: true,
              name: true,
              description: true,
            ),
          ),
        ),
        categories: $2(
          BrandingPostDBCategoriesArgs(
            select: PostCategoryDBSelect(
              categoryDB: $1(true),
            ),
          ),
        ),
      ),
      where: BrandingPostDBWhereUniqueInput(id: '${id}'),
    );

    final retrieveCategories = _splitCategories(
      post!.categories!.map((e) => e.toDomain()),
    );

    return BrandingPost(
      id: post.id.toUuidOrNull()!,
      name: post.name!,
      description: post.description!,
      imageUrl: Uri.dataFromString(post.imageUrl!),
      parent: BrandingPostParent(
        id: post.parent!.id!.toUuidOrNull()!,
        name: post.parent!.name!,
        description: post.parent!.description!,
      ),
      studio: retrieveCategories.studio,
      theme: retrieveCategories.theme,
      palette: retrieveCategories.palette,
      fonts: retrieveCategories.fonts,
      categories: retrieveCategories.otherCategories,
    );
  }
}

extension on BrandingManager {
  Future<int> getProjectsCounterByCategory(Category category) async {
    return (await _client.projectCategoryDB.aggregate(
                where: ProjectCategoryDBWhereInput(
                  categoryId: $2('${category.id}'),
                ),
                select: AggregateProjectCategoryDBSelect($count: $1(true))))
            .$count
            ?.$all ??
        0;
  }

  Future<List<BrandingPost>> getPostsByCategory(
    Category category, {
    required int limit,
  }) async {
    final result = await _client.brandingPostDB.findMany(
      where: BrandingPostDBWhereInput(
        parent: $2(BrandingProjectDBWhereInput(
          categories: ProjectCategoryDBListRelationFilter(
            some: ProjectCategoryDBWhereInput(
              categoryId: $2('${category.id}'),
            ),
          ),
        )),
      ),
      include: BrandingPostDBInclude(
        categories: $2(
          BrandingPostDBCategoriesArgs(
            select: PostCategoryDBSelect(
              categoryDB: $1(true),
            ),
          ),
        ),
      ),
      orderBy: $2(BrandingPostDBOrderByWithRelationInput(
        createdAt: SortOrder.desc,
      )),
      take: limit,
    );

    return result.map((e) => e.toDomain()).toList();
  }
}

extension on BrandingProjectDB {
  BrandingProject toDomain() {
    final retrieveCategories =
        _splitCategories(categories!.map((e) => e.toDomain()));

    return BrandingProject(
      id: id.toUuidOrNull()!,
      name: name!,
      description: description!,
      children: children!.map((e) => e.toDomain()).toList(),
      nextChildrenCursor: children?.lastOrNull?.id.toUuidOrNull(),
      studio: retrieveCategories.studio,
      theme: retrieveCategories.theme,
      palette: retrieveCategories.palette,
      fonts: retrieveCategories.fonts,
      categories: retrieveCategories.otherCategories,
    );
  }
}

extension on BrandingPostDB {
  BrandingPost toDomain() {
    final retrieveCategories =
        _splitCategories(categories!.map((e) => e.toDomain()));

    return BrandingPost(
      id: id.toUuidOrNull()!,
      name: name!,
      description: description!,
      imageUrl: Uri.dataFromString(imageUrl!),
      parent: parent == null
          ? null
          : BrandingPostParent(
              id: parent!.id!.toUuidOrNull()!,
              name: parent!.name!,
              description: parent!.description!,
            ),
      studio: retrieveCategories.studio,
      theme: retrieveCategories.theme,
      palette: retrieveCategories.palette,
      fonts: retrieveCategories.fonts,
      categories: retrieveCategories.otherCategories,
    );
  }
}

({
  StudioCategory studio,
  ThemeCategory theme,
  List<ColorCategory> palette,
  List<FontCategory> fonts,
  List<Category> otherCategories
}) _splitCategories(Iterable<Category> categories) {
  final studio = StudioCategory.fromJson(categories
      .firstWhere(
        (element) => element.key == StudioCategory.keyName,
      )
      .toJson());

  final theme = ThemeCategory.fromJson(categories
      .firstWhere(
        (element) => element.key == ThemeCategory.keyName,
      )
      .toJson());

  final palette = categories
      .where((element) => element.key == ColorCategory.keyName)
      .map((e) => ColorCategory.fromJson(e.toJson()))
      .toList();

  final fonts = categories
      .where((element) => element.key == FontCategory.keyName)
      .map((e) => FontCategory.fromJson(e.toJson()))
      .toList();

  final otherCategories = categories.toList()
    ..removeWhere(
      (element) =>
          element.key == StudioCategory.keyName ||
          element.key == ThemeCategory.keyName ||
          element.key == ColorCategory.keyName ||
          element.key == FontCategory.keyName,
    );

  return (
    studio: studio,
    theme: theme,
    palette: palette,
    fonts: fonts,
    otherCategories: otherCategories,
  );
}

extension on PostCategoryDB {
  Category toDomain() {
    return Category(
      id: categoryDB!.id!.toUuidOrNull()!,
      key: categoryDB!.key!,
      value: categoryDB!.value!,
      properties: jsonDecode(categoryDB!.properties!),
    );
  }
}

extension on ProjectCategoryDB {
  Category toDomain() {
    return Category(
      id: categoryDB!.id!.toUuidOrNull()!,
      key: categoryDB!.key!,
      value: categoryDB!.value!,
      properties: jsonDecode(categoryDB!.properties!),
    );
  }
}
