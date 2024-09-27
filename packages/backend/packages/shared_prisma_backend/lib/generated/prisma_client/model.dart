// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/orm.dart' as _i3;

import 'model.dart' as _i1;
import 'prisma.dart' as _i2;

class ProjectCategoryDB {
  const ProjectCategoryDB({
    this.projectId,
    this.categoryId,
    this.brandingProjectDB,
    this.categoryDB,
  });

  factory ProjectCategoryDB.fromJson(Map json) => ProjectCategoryDB(
        projectId: json['projectId'],
        categoryId: json['categoryId'],
        brandingProjectDB: json['BrandingProjectDB'] is Map
            ? _i1.BrandingProjectDB.fromJson(json['BrandingProjectDB'])
            : null,
        categoryDB: json['CategoryDB'] is Map
            ? _i1.CategoryDB.fromJson(json['CategoryDB'])
            : null,
      );

  final String? projectId;

  final String? categoryId;

  final _i1.BrandingProjectDB? brandingProjectDB;

  final _i1.CategoryDB? categoryDB;

  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'categoryId': categoryId,
        'BrandingProjectDB': brandingProjectDB?.toJson(),
        'CategoryDB': categoryDB?.toJson(),
      };
}

class BrandingProjectDB {
  const BrandingProjectDB({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.children,
    this.categories,
    this.$count,
  });

  factory BrandingProjectDB.fromJson(Map json) => BrandingProjectDB(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        children: (json['children'] as Iterable?)
            ?.map((json) => _i1.BrandingPostDB.fromJson(json)),
        categories: (json['categories'] as Iterable?)
            ?.map((json) => _i1.ProjectCategoryDB.fromJson(json)),
        $count: json['_count'] is Map
            ? _i2.BrandingProjectDBCountOutputType.fromJson(json['_count'])
            : null,
      );

  final String? id;

  final String? name;

  final String? description;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final Iterable<_i1.BrandingPostDB>? children;

  final Iterable<_i1.ProjectCategoryDB>? categories;

  final _i2.BrandingProjectDBCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'children': children?.map((e) => e.toJson()),
        'categories': categories?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

class BrandingPostDB {
  const BrandingPostDB({
    this.id,
    this.parentId,
    this.name,
    this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.sortOrder,
    this.parent,
    this.categories,
    this.$count,
  });

  factory BrandingPostDB.fromJson(Map json) => BrandingPostDB(
        id: json['id'],
        parentId: json['parentId'],
        name: json['name'],
        description: json['description'],
        imageUrl: json['imageUrl'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        sortOrder: json['sortOrder'],
        parent: json['parent'] is Map
            ? _i1.BrandingProjectDB.fromJson(json['parent'])
            : null,
        categories: (json['categories'] as Iterable?)
            ?.map((json) => _i1.PostCategoryDB.fromJson(json)),
        $count: json['_count'] is Map
            ? _i2.BrandingPostDBCountOutputType.fromJson(json['_count'])
            : null,
      );

  final String? id;

  final String? parentId;

  final String? name;

  final String? description;

  final String? imageUrl;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final int? sortOrder;

  final _i1.BrandingProjectDB? parent;

  final Iterable<_i1.PostCategoryDB>? categories;

  final _i2.BrandingPostDBCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'id': id,
        'parentId': parentId,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'sortOrder': sortOrder,
        'parent': parent?.toJson(),
        'categories': categories?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

class PostCategoryDB {
  const PostCategoryDB({
    this.postId,
    this.categoryId,
    this.brandingPostDB,
    this.categoryDB,
  });

  factory PostCategoryDB.fromJson(Map json) => PostCategoryDB(
        postId: json['postId'],
        categoryId: json['categoryId'],
        brandingPostDB: json['BrandingPostDB'] is Map
            ? _i1.BrandingPostDB.fromJson(json['BrandingPostDB'])
            : null,
        categoryDB: json['CategoryDB'] is Map
            ? _i1.CategoryDB.fromJson(json['CategoryDB'])
            : null,
      );

  final String? postId;

  final String? categoryId;

  final _i1.BrandingPostDB? brandingPostDB;

  final _i1.CategoryDB? categoryDB;

  Map<String, dynamic> toJson() => {
        'postId': postId,
        'categoryId': categoryId,
        'BrandingPostDB': brandingPostDB?.toJson(),
        'CategoryDB': categoryDB?.toJson(),
      };
}

class CategoryDB {
  const CategoryDB({
    this.id,
    this.key,
    this.value,
    this.properties,
    this.createdAt,
    this.updatedAt,
    this.postCategoryDb,
    this.projectCategoryDb,
    this.$count,
  });

  factory CategoryDB.fromJson(Map json) => CategoryDB(
        id: json['id'],
        key: json['key'],
        value: json['value'],
        properties: json['properties'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        postCategoryDb: (json['PostCategoryDb'] as Iterable?)
            ?.map((json) => _i1.PostCategoryDB.fromJson(json)),
        projectCategoryDb: (json['ProjectCategoryDb'] as Iterable?)
            ?.map((json) => _i1.ProjectCategoryDB.fromJson(json)),
        $count: json['_count'] is Map
            ? _i2.CategoryDBCountOutputType.fromJson(json['_count'])
            : null,
      );

  final String? id;

  final String? key;

  final String? value;

  final String? properties;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final Iterable<_i1.PostCategoryDB>? postCategoryDb;

  final Iterable<_i1.ProjectCategoryDB>? projectCategoryDb;

  final _i2.CategoryDBCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'PostCategoryDb': postCategoryDb?.map((e) => e.toJson()),
        'ProjectCategoryDb': projectCategoryDb?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

class CreateManyCategoryDBAndReturnOutputType {
  const CreateManyCategoryDBAndReturnOutputType({
    this.id,
    this.key,
    this.value,
    this.properties,
    this.createdAt,
    this.updatedAt,
  });

  factory CreateManyCategoryDBAndReturnOutputType.fromJson(Map json) =>
      CreateManyCategoryDBAndReturnOutputType(
        id: json['id'],
        key: json['key'],
        value: json['value'],
        properties: json['properties'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
      );

  final String? id;

  final String? key;

  final String? value;

  final String? properties;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
      };
}

enum DailyLinkTypeDB implements _i3.PrismaEnum {
  video._('video'),
  startup._('startup'),
  utility._('utility'),
  site._('site'),
  article._('article'),
  cases._('cases');

  const DailyLinkTypeDB._(this.name);

  @override
  final String name;
}

class DailyLinkDB {
  const DailyLinkDB({
    this.id,
    this.title,
    this.url,
    this.previewImageUrl,
    this.date,
    this.type,
  });

  factory DailyLinkDB.fromJson(Map json) => DailyLinkDB(
        id: json['id'],
        title: json['title'],
        url: json['url'],
        previewImageUrl: json['previewImageUrl'],
        date: json['date'],
        type: json['type'] != null
            ? _i1.DailyLinkTypeDB.values
                .firstWhere((e) => e.name == json['type'])
            : null,
      );

  final String? id;

  final String? title;

  final String? url;

  final String? previewImageUrl;

  final String? date;

  final _i1.DailyLinkTypeDB? type;

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'url': url,
        'previewImageUrl': previewImageUrl,
        'date': date,
        'type': type?.name,
      };
}

class CreateManyDailyLinkDBAndReturnOutputType {
  const CreateManyDailyLinkDBAndReturnOutputType({
    this.id,
    this.title,
    this.url,
    this.previewImageUrl,
    this.date,
    this.type,
  });

  factory CreateManyDailyLinkDBAndReturnOutputType.fromJson(Map json) =>
      CreateManyDailyLinkDBAndReturnOutputType(
        id: json['id'],
        title: json['title'],
        url: json['url'],
        previewImageUrl: json['previewImageUrl'],
        date: json['date'],
        type: json['type'] != null
            ? _i1.DailyLinkTypeDB.values
                .firstWhere((e) => e.name == json['type'])
            : null,
      );

  final String? id;

  final String? title;

  final String? url;

  final String? previewImageUrl;

  final String? date;

  final _i1.DailyLinkTypeDB? type;

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'url': url,
        'previewImageUrl': previewImageUrl,
        'date': date,
        'type': type?.name,
      };
}

class CreateManyBrandingProjectDBAndReturnOutputType {
  const CreateManyBrandingProjectDBAndReturnOutputType({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  factory CreateManyBrandingProjectDBAndReturnOutputType.fromJson(Map json) =>
      CreateManyBrandingProjectDBAndReturnOutputType(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
      );

  final String? id;

  final String? name;

  final String? description;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
      };
}

class CreateManyBrandingPostDBAndReturnOutputType {
  const CreateManyBrandingPostDBAndReturnOutputType({
    this.id,
    this.parentId,
    this.name,
    this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.sortOrder,
    this.parent,
  });

  factory CreateManyBrandingPostDBAndReturnOutputType.fromJson(Map json) =>
      CreateManyBrandingPostDBAndReturnOutputType(
        id: json['id'],
        parentId: json['parentId'],
        name: json['name'],
        description: json['description'],
        imageUrl: json['imageUrl'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        sortOrder: json['sortOrder'],
        parent: json['parent'] is Map
            ? _i1.BrandingProjectDB.fromJson(json['parent'])
            : null,
      );

  final String? id;

  final String? parentId;

  final String? name;

  final String? description;

  final String? imageUrl;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final int? sortOrder;

  final _i1.BrandingProjectDB? parent;

  Map<String, dynamic> toJson() => {
        'id': id,
        'parentId': parentId,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'sortOrder': sortOrder,
        'parent': parent?.toJson(),
      };
}

class CreateManyPostCategoryDBAndReturnOutputType {
  const CreateManyPostCategoryDBAndReturnOutputType({
    this.postId,
    this.categoryId,
    this.brandingPostDB,
    this.categoryDB,
  });

  factory CreateManyPostCategoryDBAndReturnOutputType.fromJson(Map json) =>
      CreateManyPostCategoryDBAndReturnOutputType(
        postId: json['postId'],
        categoryId: json['categoryId'],
        brandingPostDB: json['BrandingPostDB'] is Map
            ? _i1.BrandingPostDB.fromJson(json['BrandingPostDB'])
            : null,
        categoryDB: json['CategoryDB'] is Map
            ? _i1.CategoryDB.fromJson(json['CategoryDB'])
            : null,
      );

  final String? postId;

  final String? categoryId;

  final _i1.BrandingPostDB? brandingPostDB;

  final _i1.CategoryDB? categoryDB;

  Map<String, dynamic> toJson() => {
        'postId': postId,
        'categoryId': categoryId,
        'BrandingPostDB': brandingPostDB?.toJson(),
        'CategoryDB': categoryDB?.toJson(),
      };
}

class CreateManyProjectCategoryDBAndReturnOutputType {
  const CreateManyProjectCategoryDBAndReturnOutputType({
    this.projectId,
    this.categoryId,
    this.brandingProjectDB,
    this.categoryDB,
  });

  factory CreateManyProjectCategoryDBAndReturnOutputType.fromJson(Map json) =>
      CreateManyProjectCategoryDBAndReturnOutputType(
        projectId: json['projectId'],
        categoryId: json['categoryId'],
        brandingProjectDB: json['BrandingProjectDB'] is Map
            ? _i1.BrandingProjectDB.fromJson(json['BrandingProjectDB'])
            : null,
        categoryDB: json['CategoryDB'] is Map
            ? _i1.CategoryDB.fromJson(json['CategoryDB'])
            : null,
      );

  final String? projectId;

  final String? categoryId;

  final _i1.BrandingProjectDB? brandingProjectDB;

  final _i1.CategoryDB? categoryDB;

  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'categoryId': categoryId,
        'BrandingProjectDB': brandingProjectDB?.toJson(),
        'CategoryDB': categoryDB?.toJson(),
      };
}
