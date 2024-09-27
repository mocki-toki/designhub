// ignore_for_file: non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/orm.dart' as _i1;

import 'model.dart' as _i3;
import 'prisma.dart' as _i2;

class BrandingProjectDBCountOutputType {
  const BrandingProjectDBCountOutputType({
    this.children,
    this.categories,
  });

  factory BrandingProjectDBCountOutputType.fromJson(Map json) =>
      BrandingProjectDBCountOutputType(
        children: json['children'],
        categories: json['categories'],
      );

  final int? children;

  final int? categories;

  Map<String, dynamic> toJson() => {
        'children': children,
        'categories': categories,
      };
}

class BrandingPostDBCountOutputType {
  const BrandingPostDBCountOutputType({this.categories});

  factory BrandingPostDBCountOutputType.fromJson(Map json) =>
      BrandingPostDBCountOutputType(categories: json['categories']);

  final int? categories;

  Map<String, dynamic> toJson() => {'categories': categories};
}

class CategoryDBCountOutputType {
  const CategoryDBCountOutputType({
    this.postCategoryDb,
    this.projectCategoryDb,
  });

  factory CategoryDBCountOutputType.fromJson(Map json) =>
      CategoryDBCountOutputType(
        postCategoryDb: json['PostCategoryDb'],
        projectCategoryDb: json['ProjectCategoryDb'],
      );

  final int? postCategoryDb;

  final int? projectCategoryDb;

  Map<String, dynamic> toJson() => {
        'PostCategoryDb': postCategoryDb,
        'ProjectCategoryDb': projectCategoryDb,
      };
}

enum QueryMode implements _i1.PrismaEnum {
  $default._('default'),
  insensitive._('insensitive');

  const QueryMode._(this.name);

  @override
  final String name;
}

class NestedStringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
      };
}

class StringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
      };
}

class NestedDateTimeFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class DateTimeFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedStringNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i2.NestedStringNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
      };
}

class StringNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i2.NestedStringNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
      };
}

class NestedIntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class IntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class BrandingPostDBListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.BrandingPostDBWhereInput? every;

  final _i2.BrandingPostDBWhereInput? some;

  final _i2.BrandingPostDBWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class CategoryDBRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.CategoryDBWhereInput? $is;

  final _i2.CategoryDBWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class ProjectCategoryDBWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.projectId,
    this.categoryId,
    this.brandingProjectDB,
    this.categoryDB,
  });

  final _i1.PrismaUnion<_i2.ProjectCategoryDBWhereInput,
      Iterable<_i2.ProjectCategoryDBWhereInput>>? AND;

  final Iterable<_i2.ProjectCategoryDBWhereInput>? OR;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBWhereInput,
      Iterable<_i2.ProjectCategoryDBWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? projectId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? categoryId;

  final _i1.PrismaUnion<_i2.BrandingProjectDBRelationFilter,
      _i2.BrandingProjectDBWhereInput>? brandingProjectDB;

  final _i1.PrismaUnion<_i2.CategoryDBRelationFilter, _i2.CategoryDBWhereInput>?
      categoryDB;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'projectId': projectId,
        'categoryId': categoryId,
        'BrandingProjectDB': brandingProjectDB,
        'CategoryDB': categoryDB,
      };
}

class ProjectCategoryDBListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.ProjectCategoryDBWhereInput? every;

  final _i2.ProjectCategoryDBWhereInput? some;

  final _i2.ProjectCategoryDBWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class BrandingProjectDBWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.children,
    this.categories,
  });

  final _i1.PrismaUnion<_i2.BrandingProjectDBWhereInput,
      Iterable<_i2.BrandingProjectDBWhereInput>>? AND;

  final Iterable<_i2.BrandingProjectDBWhereInput>? OR;

  final _i1.PrismaUnion<_i2.BrandingProjectDBWhereInput,
      Iterable<_i2.BrandingProjectDBWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringFilter, String>? description;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i2.BrandingPostDBListRelationFilter? children;

  final _i2.ProjectCategoryDBListRelationFilter? categories;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'children': children,
        'categories': categories,
      };
}

class BrandingProjectDBRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.BrandingProjectDBWhereInput? $is;

  final _i2.BrandingProjectDBWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class BrandingPostDBWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBWhereInput({
    this.AND,
    this.OR,
    this.NOT,
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
  });

  final _i1.PrismaUnion<_i2.BrandingPostDBWhereInput,
      Iterable<_i2.BrandingPostDBWhereInput>>? AND;

  final Iterable<_i2.BrandingPostDBWhereInput>? OR;

  final _i1.PrismaUnion<_i2.BrandingPostDBWhereInput,
      Iterable<_i2.BrandingPostDBWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? parentId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringFilter, String>? description;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.IntFilter, int>? sortOrder;

  final _i1.PrismaUnion<_i2.BrandingProjectDBRelationFilter,
      _i2.BrandingProjectDBWhereInput>? parent;

  final _i2.PostCategoryDBListRelationFilter? categories;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'parentId': parentId,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
        'parent': parent,
        'categories': categories,
      };
}

class BrandingPostDBRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.BrandingPostDBWhereInput? $is;

  final _i2.BrandingPostDBWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class PostCategoryDBWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.postId,
    this.categoryId,
    this.brandingPostDB,
    this.categoryDB,
  });

  final _i1.PrismaUnion<_i2.PostCategoryDBWhereInput,
      Iterable<_i2.PostCategoryDBWhereInput>>? AND;

  final Iterable<_i2.PostCategoryDBWhereInput>? OR;

  final _i1.PrismaUnion<_i2.PostCategoryDBWhereInput,
      Iterable<_i2.PostCategoryDBWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? postId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? categoryId;

  final _i1.PrismaUnion<_i2.BrandingPostDBRelationFilter,
      _i2.BrandingPostDBWhereInput>? brandingPostDB;

  final _i1.PrismaUnion<_i2.CategoryDBRelationFilter, _i2.CategoryDBWhereInput>?
      categoryDB;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'postId': postId,
        'categoryId': categoryId,
        'BrandingPostDB': brandingPostDB,
        'CategoryDB': categoryDB,
      };
}

class PostCategoryDBListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.PostCategoryDBWhereInput? every;

  final _i2.PostCategoryDBWhereInput? some;

  final _i2.PostCategoryDBWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class CategoryDBWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.key,
    this.value,
    this.properties,
    this.createdAt,
    this.updatedAt,
    this.postCategoryDb,
    this.projectCategoryDb,
  });

  final _i1.PrismaUnion<_i2.CategoryDBWhereInput,
      Iterable<_i2.CategoryDBWhereInput>>? AND;

  final Iterable<_i2.CategoryDBWhereInput>? OR;

  final _i1.PrismaUnion<_i2.CategoryDBWhereInput,
      Iterable<_i2.CategoryDBWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? key;

  final _i1.PrismaUnion<_i2.StringFilter, String>? value;

  final _i1.PrismaUnion<_i2.StringFilter, String>? properties;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i2.PostCategoryDBListRelationFilter? postCategoryDb;

  final _i2.ProjectCategoryDBListRelationFilter? projectCategoryDb;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'PostCategoryDb': postCategoryDb,
        'ProjectCategoryDb': projectCategoryDb,
      };
}

class CategoryDBWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.key,
    this.value,
    this.properties,
    this.createdAt,
    this.updatedAt,
    this.postCategoryDb,
    this.projectCategoryDb,
  });

  final String? id;

  final _i1.PrismaUnion<_i2.CategoryDBWhereInput,
      Iterable<_i2.CategoryDBWhereInput>>? AND;

  final Iterable<_i2.CategoryDBWhereInput>? OR;

  final _i1.PrismaUnion<_i2.CategoryDBWhereInput,
      Iterable<_i2.CategoryDBWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? key;

  final _i1.PrismaUnion<_i2.StringFilter, String>? value;

  final _i1.PrismaUnion<_i2.StringFilter, String>? properties;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i2.PostCategoryDBListRelationFilter? postCategoryDb;

  final _i2.ProjectCategoryDBListRelationFilter? projectCategoryDb;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'PostCategoryDb': postCategoryDb,
        'ProjectCategoryDb': projectCategoryDb,
      };
}

enum SortOrder implements _i1.PrismaEnum {
  asc._('asc'),
  desc._('desc');

  const SortOrder._(this.name);

  @override
  final String name;
}

enum NullsOrder implements _i1.PrismaEnum {
  first._('first'),
  last._('last');

  const NullsOrder._(this.name);

  @override
  final String name;
}

class SortOrderInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const SortOrderInput({
    required this.sort,
    this.nulls,
  });

  final _i2.SortOrder sort;

  final _i2.NullsOrder? nulls;

  @override
  Map<String, dynamic> toJson() => {
        'sort': sort,
        'nulls': nulls,
      };
}

class BrandingPostDBOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class ProjectCategoryDBOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class BrandingProjectDBOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBOrderByWithRelationInput({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.children,
    this.categories,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? description;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.BrandingPostDBOrderByRelationAggregateInput? children;

  final _i2.ProjectCategoryDBOrderByRelationAggregateInput? categories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'children': children,
        'categories': categories,
      };
}

class PostCategoryDBOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class BrandingPostDBOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBOrderByWithRelationInput({
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
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? parentId;

  final _i2.SortOrder? name;

  final _i2.SortOrder? description;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? imageUrl;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? sortOrder;

  final _i2.BrandingProjectDBOrderByWithRelationInput? parent;

  final _i2.PostCategoryDBOrderByRelationAggregateInput? categories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parentId': parentId,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
        'parent': parent,
        'categories': categories,
      };
}

class BrandingPostDBWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.parentId,
    this.name,
    this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.sortOrder,
    this.parent,
    this.categories,
  });

  final String? id;

  final _i1.PrismaUnion<_i2.BrandingPostDBWhereInput,
      Iterable<_i2.BrandingPostDBWhereInput>>? AND;

  final Iterable<_i2.BrandingPostDBWhereInput>? OR;

  final _i1.PrismaUnion<_i2.BrandingPostDBWhereInput,
      Iterable<_i2.BrandingPostDBWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? parentId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringFilter, String>? description;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.IntFilter, int>? sortOrder;

  final _i1.PrismaUnion<_i2.BrandingProjectDBRelationFilter,
      _i2.BrandingProjectDBWhereInput>? parent;

  final _i2.PostCategoryDBListRelationFilter? categories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'parentId': parentId,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
        'parent': parent,
        'categories': categories,
      };
}

enum BrandingPostDBScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'BrandingPostDB'),
  parentId<String>('parentId', 'BrandingPostDB'),
  name$<String>('name', 'BrandingPostDB'),
  description<String>('description', 'BrandingPostDB'),
  imageUrl<String>('imageUrl', 'BrandingPostDB'),
  createdAt<DateTime>('createdAt', 'BrandingPostDB'),
  updatedAt<DateTime>('updatedAt', 'BrandingPostDB'),
  sortOrder<int>('sortOrder', 'BrandingPostDB');

  const BrandingPostDBScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class BrandingProjectDBChildrenArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBChildrenArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.BrandingPostDBWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.BrandingPostDBOrderByWithRelationInput>,
      _i2.BrandingPostDBOrderByWithRelationInput>? orderBy;

  final _i2.BrandingPostDBWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.BrandingPostDBScalar,
      Iterable<_i2.BrandingPostDBScalar>>? distinct;

  final _i2.BrandingPostDBSelect? select;

  final _i2.BrandingPostDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class ProjectCategoryDBBrandingProjectDBArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBBrandingProjectDBArgs({
    this.select,
    this.include,
  });

  final _i2.BrandingProjectDBSelect? select;

  final _i2.BrandingProjectDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class PostCategoryDBBrandingPostDBArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBBrandingPostDBArgs({
    this.select,
    this.include,
  });

  final _i2.BrandingPostDBSelect? select;

  final _i2.BrandingPostDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class PostCategoryDBCategoryDBArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBCategoryDBArgs({
    this.select,
    this.include,
  });

  final _i2.CategoryDBSelect? select;

  final _i2.CategoryDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class PostCategoryDBInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBInclude({
    this.brandingPostDB,
    this.categoryDB,
  });

  final _i1.PrismaUnion<bool, _i2.PostCategoryDBBrandingPostDBArgs>?
      brandingPostDB;

  final _i1.PrismaUnion<bool, _i2.PostCategoryDBCategoryDBArgs>? categoryDB;

  @override
  Map<String, dynamic> toJson() => {
        'BrandingPostDB': brandingPostDB,
        'CategoryDB': categoryDB,
      };
}

class CategoryDBOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBOrderByWithRelationInput({
    this.id,
    this.key,
    this.value,
    this.properties,
    this.createdAt,
    this.updatedAt,
    this.postCategoryDb,
    this.projectCategoryDb,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? key;

  final _i2.SortOrder? value;

  final _i2.SortOrder? properties;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.PostCategoryDBOrderByRelationAggregateInput? postCategoryDb;

  final _i2.ProjectCategoryDBOrderByRelationAggregateInput? projectCategoryDb;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'PostCategoryDb': postCategoryDb,
        'ProjectCategoryDb': projectCategoryDb,
      };
}

class PostCategoryDBOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBOrderByWithRelationInput({
    this.postId,
    this.categoryId,
    this.brandingPostDB,
    this.categoryDB,
  });

  final _i2.SortOrder? postId;

  final _i2.SortOrder? categoryId;

  final _i2.BrandingPostDBOrderByWithRelationInput? brandingPostDB;

  final _i2.CategoryDBOrderByWithRelationInput? categoryDB;

  @override
  Map<String, dynamic> toJson() => {
        'postId': postId,
        'categoryId': categoryId,
        'BrandingPostDB': brandingPostDB,
        'CategoryDB': categoryDB,
      };
}

class PostCategoryDBPostIdCategoryIdCompoundUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBPostIdCategoryIdCompoundUniqueInput({
    required this.postId,
    required this.categoryId,
  });

  final String postId;

  final String categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'postId': postId,
        'categoryId': categoryId,
      };
}

class PostCategoryDBWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBWhereUniqueInput({
    this.postIdCategoryId,
    this.AND,
    this.OR,
    this.NOT,
    this.postId,
    this.categoryId,
    this.brandingPostDB,
    this.categoryDB,
  });

  final _i2.PostCategoryDBPostIdCategoryIdCompoundUniqueInput? postIdCategoryId;

  final _i1.PrismaUnion<_i2.PostCategoryDBWhereInput,
      Iterable<_i2.PostCategoryDBWhereInput>>? AND;

  final Iterable<_i2.PostCategoryDBWhereInput>? OR;

  final _i1.PrismaUnion<_i2.PostCategoryDBWhereInput,
      Iterable<_i2.PostCategoryDBWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? postId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? categoryId;

  final _i1.PrismaUnion<_i2.BrandingPostDBRelationFilter,
      _i2.BrandingPostDBWhereInput>? brandingPostDB;

  final _i1.PrismaUnion<_i2.CategoryDBRelationFilter, _i2.CategoryDBWhereInput>?
      categoryDB;

  @override
  Map<String, dynamic> toJson() => {
        'postId_categoryId': postIdCategoryId,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'postId': postId,
        'categoryId': categoryId,
        'BrandingPostDB': brandingPostDB,
        'CategoryDB': categoryDB,
      };
}

enum PostCategoryDBScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  postId<String>('postId', 'PostCategoryDB'),
  categoryId<String>('categoryId', 'PostCategoryDB');

  const PostCategoryDBScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class CategoryDBPostCategoryDbArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBPostCategoryDbArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.PostCategoryDBWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.PostCategoryDBOrderByWithRelationInput>,
      _i2.PostCategoryDBOrderByWithRelationInput>? orderBy;

  final _i2.PostCategoryDBWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.PostCategoryDBScalar,
      Iterable<_i2.PostCategoryDBScalar>>? distinct;

  final _i2.PostCategoryDBSelect? select;

  final _i2.PostCategoryDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class ProjectCategoryDBCategoryDBArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBCategoryDBArgs({
    this.select,
    this.include,
  });

  final _i2.CategoryDBSelect? select;

  final _i2.CategoryDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class ProjectCategoryDBInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBInclude({
    this.brandingProjectDB,
    this.categoryDB,
  });

  final _i1.PrismaUnion<bool, _i2.ProjectCategoryDBBrandingProjectDBArgs>?
      brandingProjectDB;

  final _i1.PrismaUnion<bool, _i2.ProjectCategoryDBCategoryDBArgs>? categoryDB;

  @override
  Map<String, dynamic> toJson() => {
        'BrandingProjectDB': brandingProjectDB,
        'CategoryDB': categoryDB,
      };
}

class ProjectCategoryDBOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBOrderByWithRelationInput({
    this.projectId,
    this.categoryId,
    this.brandingProjectDB,
    this.categoryDB,
  });

  final _i2.SortOrder? projectId;

  final _i2.SortOrder? categoryId;

  final _i2.BrandingProjectDBOrderByWithRelationInput? brandingProjectDB;

  final _i2.CategoryDBOrderByWithRelationInput? categoryDB;

  @override
  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'categoryId': categoryId,
        'BrandingProjectDB': brandingProjectDB,
        'CategoryDB': categoryDB,
      };
}

class ProjectCategoryDBProjectIdCategoryIdCompoundUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBProjectIdCategoryIdCompoundUniqueInput({
    required this.projectId,
    required this.categoryId,
  });

  final String projectId;

  final String categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'categoryId': categoryId,
      };
}

class ProjectCategoryDBWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBWhereUniqueInput({
    this.projectIdCategoryId,
    this.AND,
    this.OR,
    this.NOT,
    this.projectId,
    this.categoryId,
    this.brandingProjectDB,
    this.categoryDB,
  });

  final _i2.ProjectCategoryDBProjectIdCategoryIdCompoundUniqueInput?
      projectIdCategoryId;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBWhereInput,
      Iterable<_i2.ProjectCategoryDBWhereInput>>? AND;

  final Iterable<_i2.ProjectCategoryDBWhereInput>? OR;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBWhereInput,
      Iterable<_i2.ProjectCategoryDBWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? projectId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? categoryId;

  final _i1.PrismaUnion<_i2.BrandingProjectDBRelationFilter,
      _i2.BrandingProjectDBWhereInput>? brandingProjectDB;

  final _i1.PrismaUnion<_i2.CategoryDBRelationFilter, _i2.CategoryDBWhereInput>?
      categoryDB;

  @override
  Map<String, dynamic> toJson() => {
        'projectId_categoryId': projectIdCategoryId,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'projectId': projectId,
        'categoryId': categoryId,
        'BrandingProjectDB': brandingProjectDB,
        'CategoryDB': categoryDB,
      };
}

enum ProjectCategoryDBScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  projectId<String>('projectId', 'ProjectCategoryDB'),
  categoryId<String>('categoryId', 'ProjectCategoryDB');

  const ProjectCategoryDBScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class CategoryDBProjectCategoryDbArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBProjectCategoryDbArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.ProjectCategoryDBWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.ProjectCategoryDBOrderByWithRelationInput>,
      _i2.ProjectCategoryDBOrderByWithRelationInput>? orderBy;

  final _i2.ProjectCategoryDBWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBScalar,
      Iterable<_i2.ProjectCategoryDBScalar>>? distinct;

  final _i2.ProjectCategoryDBSelect? select;

  final _i2.ProjectCategoryDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class CategoryDBCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBCountOutputTypeSelect({
    this.postCategoryDb,
    this.projectCategoryDb,
  });

  final bool? postCategoryDb;

  final bool? projectCategoryDb;

  @override
  Map<String, dynamic> toJson() => {
        'PostCategoryDb': postCategoryDb,
        'ProjectCategoryDb': projectCategoryDb,
      };
}

class CategoryDBCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBCountArgs({this.select});

  final _i2.CategoryDBCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CategoryDBInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBInclude({
    this.postCategoryDb,
    this.projectCategoryDb,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.CategoryDBPostCategoryDbArgs>? postCategoryDb;

  final _i1.PrismaUnion<bool, _i2.CategoryDBProjectCategoryDbArgs>?
      projectCategoryDb;

  final _i1.PrismaUnion<bool, _i2.CategoryDBCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'PostCategoryDb': postCategoryDb,
        'ProjectCategoryDb': projectCategoryDb,
        '_count': $count,
      };
}

class ProjectCategoryDBSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBSelect({
    this.projectId,
    this.categoryId,
    this.brandingProjectDB,
    this.categoryDB,
  });

  final bool? projectId;

  final bool? categoryId;

  final _i1.PrismaUnion<bool, _i2.ProjectCategoryDBBrandingProjectDBArgs>?
      brandingProjectDB;

  final _i1.PrismaUnion<bool, _i2.ProjectCategoryDBCategoryDBArgs>? categoryDB;

  @override
  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'categoryId': categoryId,
        'BrandingProjectDB': brandingProjectDB,
        'CategoryDB': categoryDB,
      };
}

class BrandingProjectDBCategoriesArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBCategoriesArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.ProjectCategoryDBWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.ProjectCategoryDBOrderByWithRelationInput>,
      _i2.ProjectCategoryDBOrderByWithRelationInput>? orderBy;

  final _i2.ProjectCategoryDBWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBScalar,
      Iterable<_i2.ProjectCategoryDBScalar>>? distinct;

  final _i2.ProjectCategoryDBSelect? select;

  final _i2.ProjectCategoryDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class BrandingProjectDBCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBCountOutputTypeSelect({
    this.children,
    this.categories,
  });

  final bool? children;

  final bool? categories;

  @override
  Map<String, dynamic> toJson() => {
        'children': children,
        'categories': categories,
      };
}

class BrandingProjectDBCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBCountArgs({this.select});

  final _i2.BrandingProjectDBCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class BrandingProjectDBInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBInclude({
    this.children,
    this.categories,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.BrandingProjectDBChildrenArgs>? children;

  final _i1.PrismaUnion<bool, _i2.BrandingProjectDBCategoriesArgs>? categories;

  final _i1.PrismaUnion<bool, _i2.BrandingProjectDBCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'children': children,
        'categories': categories,
        '_count': $count,
      };
}

class BrandingPostDBParentArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBParentArgs({
    this.select,
    this.include,
  });

  final _i2.BrandingProjectDBSelect? select;

  final _i2.BrandingProjectDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class BrandingPostDBCategoriesArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBCategoriesArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.PostCategoryDBWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.PostCategoryDBOrderByWithRelationInput>,
      _i2.PostCategoryDBOrderByWithRelationInput>? orderBy;

  final _i2.PostCategoryDBWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.PostCategoryDBScalar,
      Iterable<_i2.PostCategoryDBScalar>>? distinct;

  final _i2.PostCategoryDBSelect? select;

  final _i2.PostCategoryDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class BrandingPostDBCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBCountOutputTypeSelect({this.categories});

  final bool? categories;

  @override
  Map<String, dynamic> toJson() => {'categories': categories};
}

class BrandingPostDBCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBCountArgs({this.select});

  final _i2.BrandingPostDBCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class BrandingPostDBInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBInclude({
    this.parent,
    this.categories,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.BrandingPostDBParentArgs>? parent;

  final _i1.PrismaUnion<bool, _i2.BrandingPostDBCategoriesArgs>? categories;

  final _i1.PrismaUnion<bool, _i2.BrandingPostDBCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'parent': parent,
        'categories': categories,
        '_count': $count,
      };
}

class BrandingProjectDBSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBSelect({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.children,
    this.categories,
    this.$count,
  });

  final bool? id;

  final bool? name;

  final bool? description;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.BrandingProjectDBChildrenArgs>? children;

  final _i1.PrismaUnion<bool, _i2.BrandingProjectDBCategoriesArgs>? categories;

  final _i1.PrismaUnion<bool, _i2.BrandingProjectDBCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'children': children,
        'categories': categories,
        '_count': $count,
      };
}

class BrandingPostDBSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBSelect({
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

  final bool? id;

  final bool? parentId;

  final bool? name;

  final bool? description;

  final bool? imageUrl;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? sortOrder;

  final _i1.PrismaUnion<bool, _i2.BrandingPostDBParentArgs>? parent;

  final _i1.PrismaUnion<bool, _i2.BrandingPostDBCategoriesArgs>? categories;

  final _i1.PrismaUnion<bool, _i2.BrandingPostDBCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parentId': parentId,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
        'parent': parent,
        'categories': categories,
        '_count': $count,
      };
}

class PostCategoryDBSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBSelect({
    this.postId,
    this.categoryId,
    this.brandingPostDB,
    this.categoryDB,
  });

  final bool? postId;

  final bool? categoryId;

  final _i1.PrismaUnion<bool, _i2.PostCategoryDBBrandingPostDBArgs>?
      brandingPostDB;

  final _i1.PrismaUnion<bool, _i2.PostCategoryDBCategoryDBArgs>? categoryDB;

  @override
  Map<String, dynamic> toJson() => {
        'postId': postId,
        'categoryId': categoryId,
        'BrandingPostDB': brandingPostDB,
        'CategoryDB': categoryDB,
      };
}

class CategoryDBSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBSelect({
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

  final bool? id;

  final bool? key;

  final bool? value;

  final bool? properties;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.CategoryDBPostCategoryDbArgs>? postCategoryDb;

  final _i1.PrismaUnion<bool, _i2.CategoryDBProjectCategoryDbArgs>?
      projectCategoryDb;

  final _i1.PrismaUnion<bool, _i2.CategoryDBCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'PostCategoryDb': postCategoryDb,
        'ProjectCategoryDb': projectCategoryDb,
        '_count': $count,
      };
}

enum CategoryDBScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'CategoryDB'),
  key<String>('key', 'CategoryDB'),
  value<String>('value', 'CategoryDB'),
  properties<String>('properties', 'CategoryDB'),
  createdAt<DateTime>('createdAt', 'CategoryDB'),
  updatedAt<DateTime>('updatedAt', 'CategoryDB');

  const CategoryDBScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class CategoryDBCreateWithoutProjectCategoryDbInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBCreateWithoutProjectCategoryDbInput({
    this.id,
    required this.key,
    required this.value,
    required this.properties,
    this.createdAt,
    this.updatedAt,
    this.postCategoryDb,
  });

  final String? id;

  final String key;

  final String value;

  final String properties;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.PostCategoryDBCreateNestedManyWithoutCategoryDBInput?
      postCategoryDb;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'PostCategoryDb': postCategoryDb,
      };
}

class PostCategoryDBUncheckedCreateWithoutCategoryDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBUncheckedCreateWithoutCategoryDBInput(
      {required this.postId});

  final String postId;

  @override
  Map<String, dynamic> toJson() => {'postId': postId};
}

class PostCategoryDBCreateOrConnectWithoutCategoryDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBCreateOrConnectWithoutCategoryDBInput({
    required this.where,
    required this.create,
  });

  final _i2.PostCategoryDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostCategoryDBCreateWithoutCategoryDBInput,
      _i2.PostCategoryDBUncheckedCreateWithoutCategoryDBInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class PostCategoryDBCreateManyCategoryDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBCreateManyCategoryDBInput({required this.postId});

  final String postId;

  @override
  Map<String, dynamic> toJson() => {'postId': postId};
}

class PostCategoryDBCreateManyCategoryDBInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBCreateManyCategoryDBInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.PostCategoryDBCreateManyCategoryDBInput,
      Iterable<_i2.PostCategoryDBCreateManyCategoryDBInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class PostCategoryDBUncheckedCreateNestedManyWithoutCategoryDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBUncheckedCreateNestedManyWithoutCategoryDBInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.PostCategoryDBCreateWithoutCategoryDBInput,
          _i1.PrismaUnion<
              Iterable<_i2.PostCategoryDBCreateWithoutCategoryDBInput>,
              _i1.PrismaUnion<
                  _i2.PostCategoryDBUncheckedCreateWithoutCategoryDBInput,
                  Iterable<
                      _i2
                      .PostCategoryDBUncheckedCreateWithoutCategoryDBInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.PostCategoryDBCreateOrConnectWithoutCategoryDBInput,
          Iterable<_i2.PostCategoryDBCreateOrConnectWithoutCategoryDBInput>>?
      connectOrCreate;

  final _i2.PostCategoryDBCreateManyCategoryDBInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostCategoryDBWhereUniqueInput,
      Iterable<_i2.PostCategoryDBWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class CategoryDBUncheckedCreateWithoutProjectCategoryDbInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBUncheckedCreateWithoutProjectCategoryDbInput({
    this.id,
    required this.key,
    required this.value,
    required this.properties,
    this.createdAt,
    this.updatedAt,
    this.postCategoryDb,
  });

  final String? id;

  final String key;

  final String value;

  final String properties;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.PostCategoryDBUncheckedCreateNestedManyWithoutCategoryDBInput?
      postCategoryDb;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'PostCategoryDb': postCategoryDb,
      };
}

class CategoryDBCreateOrConnectWithoutProjectCategoryDbInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBCreateOrConnectWithoutProjectCategoryDbInput({
    required this.where,
    required this.create,
  });

  final _i2.CategoryDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.CategoryDBCreateWithoutProjectCategoryDbInput,
      _i2.CategoryDBUncheckedCreateWithoutProjectCategoryDbInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class CategoryDBCreateNestedOneWithoutProjectCategoryDbInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBCreateNestedOneWithoutProjectCategoryDbInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.CategoryDBCreateWithoutProjectCategoryDbInput,
      _i2.CategoryDBUncheckedCreateWithoutProjectCategoryDbInput>? create;

  final _i2.CategoryDBCreateOrConnectWithoutProjectCategoryDbInput?
      connectOrCreate;

  final _i2.CategoryDBWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class ProjectCategoryDBCreateWithoutBrandingProjectDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBCreateWithoutBrandingProjectDBInput(
      {required this.categoryDB});

  final _i2.CategoryDBCreateNestedOneWithoutProjectCategoryDbInput categoryDB;

  @override
  Map<String, dynamic> toJson() => {'CategoryDB': categoryDB};
}

class ProjectCategoryDBUncheckedCreateWithoutBrandingProjectDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBUncheckedCreateWithoutBrandingProjectDBInput(
      {required this.categoryId});

  final String categoryId;

  @override
  Map<String, dynamic> toJson() => {'categoryId': categoryId};
}

class ProjectCategoryDBCreateOrConnectWithoutBrandingProjectDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBCreateOrConnectWithoutBrandingProjectDBInput({
    required this.where,
    required this.create,
  });

  final _i2.ProjectCategoryDBWhereUniqueInput where;

  final _i1.PrismaUnion<
      _i2.ProjectCategoryDBCreateWithoutBrandingProjectDBInput,
      _i2.ProjectCategoryDBUncheckedCreateWithoutBrandingProjectDBInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ProjectCategoryDBCreateManyBrandingProjectDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBCreateManyBrandingProjectDBInput(
      {required this.categoryId});

  final String categoryId;

  @override
  Map<String, dynamic> toJson() => {'categoryId': categoryId};
}

class ProjectCategoryDBCreateManyBrandingProjectDBInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBCreateManyBrandingProjectDBInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.ProjectCategoryDBCreateManyBrandingProjectDBInput,
      Iterable<_i2.ProjectCategoryDBCreateManyBrandingProjectDBInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class ProjectCategoryDBCreateNestedManyWithoutBrandingProjectDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBCreateNestedManyWithoutBrandingProjectDBInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1
      .PrismaUnion<
          _i2.ProjectCategoryDBCreateWithoutBrandingProjectDBInput,
          _i1.PrismaUnion<
              Iterable<
                  _i2.ProjectCategoryDBCreateWithoutBrandingProjectDBInput>,
              _i1.PrismaUnion<
                  _i2
                  .ProjectCategoryDBUncheckedCreateWithoutBrandingProjectDBInput,
                  Iterable<
                      _i2
                      .ProjectCategoryDBUncheckedCreateWithoutBrandingProjectDBInput>>>>?
      create;

  final _i1.PrismaUnion<
          _i2.ProjectCategoryDBCreateOrConnectWithoutBrandingProjectDBInput,
          Iterable<
              _i2
              .ProjectCategoryDBCreateOrConnectWithoutBrandingProjectDBInput>>?
      connectOrCreate;

  final _i2.ProjectCategoryDBCreateManyBrandingProjectDBInputEnvelope?
      createMany;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBWhereUniqueInput,
      Iterable<_i2.ProjectCategoryDBWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class BrandingProjectDBCreateWithoutChildrenInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBCreateWithoutChildrenInput({
    this.id,
    required this.name,
    required this.description,
    this.createdAt,
    this.updatedAt,
    this.categories,
  });

  final String? id;

  final String name;

  final String description;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ProjectCategoryDBCreateNestedManyWithoutBrandingProjectDBInput?
      categories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'categories': categories,
      };
}

class ProjectCategoryDBUncheckedCreateNestedManyWithoutBrandingProjectDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBUncheckedCreateNestedManyWithoutBrandingProjectDBInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1
      .PrismaUnion<
          _i2.ProjectCategoryDBCreateWithoutBrandingProjectDBInput,
          _i1.PrismaUnion<
              Iterable<
                  _i2.ProjectCategoryDBCreateWithoutBrandingProjectDBInput>,
              _i1.PrismaUnion<
                  _i2
                  .ProjectCategoryDBUncheckedCreateWithoutBrandingProjectDBInput,
                  Iterable<
                      _i2
                      .ProjectCategoryDBUncheckedCreateWithoutBrandingProjectDBInput>>>>?
      create;

  final _i1.PrismaUnion<
          _i2.ProjectCategoryDBCreateOrConnectWithoutBrandingProjectDBInput,
          Iterable<
              _i2
              .ProjectCategoryDBCreateOrConnectWithoutBrandingProjectDBInput>>?
      connectOrCreate;

  final _i2.ProjectCategoryDBCreateManyBrandingProjectDBInputEnvelope?
      createMany;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBWhereUniqueInput,
      Iterable<_i2.ProjectCategoryDBWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class BrandingProjectDBUncheckedCreateWithoutChildrenInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBUncheckedCreateWithoutChildrenInput({
    this.id,
    required this.name,
    required this.description,
    this.createdAt,
    this.updatedAt,
    this.categories,
  });

  final String? id;

  final String name;

  final String description;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2
      .ProjectCategoryDBUncheckedCreateNestedManyWithoutBrandingProjectDBInput?
      categories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'categories': categories,
      };
}

class BrandingProjectDBWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.children,
    this.categories,
  });

  final String? id;

  final _i1.PrismaUnion<_i2.BrandingProjectDBWhereInput,
      Iterable<_i2.BrandingProjectDBWhereInput>>? AND;

  final Iterable<_i2.BrandingProjectDBWhereInput>? OR;

  final _i1.PrismaUnion<_i2.BrandingProjectDBWhereInput,
      Iterable<_i2.BrandingProjectDBWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringFilter, String>? description;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i2.BrandingPostDBListRelationFilter? children;

  final _i2.ProjectCategoryDBListRelationFilter? categories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'children': children,
        'categories': categories,
      };
}

class BrandingProjectDBCreateOrConnectWithoutChildrenInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBCreateOrConnectWithoutChildrenInput({
    required this.where,
    required this.create,
  });

  final _i2.BrandingProjectDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.BrandingProjectDBCreateWithoutChildrenInput,
      _i2.BrandingProjectDBUncheckedCreateWithoutChildrenInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class BrandingProjectDBCreateNestedOneWithoutChildrenInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBCreateNestedOneWithoutChildrenInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.BrandingProjectDBCreateWithoutChildrenInput,
      _i2.BrandingProjectDBUncheckedCreateWithoutChildrenInput>? create;

  final _i2.BrandingProjectDBCreateOrConnectWithoutChildrenInput?
      connectOrCreate;

  final _i2.BrandingProjectDBWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class BrandingPostDBCreateWithoutCategoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBCreateWithoutCategoriesInput({
    this.id,
    required this.name,
    required this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    required this.sortOrder,
    required this.parent,
  });

  final String? id;

  final String name;

  final String description;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final int sortOrder;

  final _i2.BrandingProjectDBCreateNestedOneWithoutChildrenInput parent;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
        'parent': parent,
      };
}

class BrandingPostDBUncheckedCreateWithoutCategoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBUncheckedCreateWithoutCategoriesInput({
    this.id,
    required this.parentId,
    required this.name,
    required this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    required this.sortOrder,
  });

  final String? id;

  final String parentId;

  final String name;

  final String description;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final int sortOrder;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parentId': parentId,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
      };
}

class BrandingPostDBCreateOrConnectWithoutCategoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBCreateOrConnectWithoutCategoriesInput({
    required this.where,
    required this.create,
  });

  final _i2.BrandingPostDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.BrandingPostDBCreateWithoutCategoriesInput,
      _i2.BrandingPostDBUncheckedCreateWithoutCategoriesInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class BrandingPostDBCreateNestedOneWithoutCategoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBCreateNestedOneWithoutCategoriesInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.BrandingPostDBCreateWithoutCategoriesInput,
      _i2.BrandingPostDBUncheckedCreateWithoutCategoriesInput>? create;

  final _i2.BrandingPostDBCreateOrConnectWithoutCategoriesInput?
      connectOrCreate;

  final _i2.BrandingPostDBWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class PostCategoryDBCreateWithoutCategoryDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBCreateWithoutCategoryDBInput(
      {required this.brandingPostDB});

  final _i2.BrandingPostDBCreateNestedOneWithoutCategoriesInput brandingPostDB;

  @override
  Map<String, dynamic> toJson() => {'BrandingPostDB': brandingPostDB};
}

class PostCategoryDBCreateNestedManyWithoutCategoryDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBCreateNestedManyWithoutCategoryDBInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.PostCategoryDBCreateWithoutCategoryDBInput,
          _i1.PrismaUnion<
              Iterable<_i2.PostCategoryDBCreateWithoutCategoryDBInput>,
              _i1.PrismaUnion<
                  _i2.PostCategoryDBUncheckedCreateWithoutCategoryDBInput,
                  Iterable<
                      _i2
                      .PostCategoryDBUncheckedCreateWithoutCategoryDBInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.PostCategoryDBCreateOrConnectWithoutCategoryDBInput,
          Iterable<_i2.PostCategoryDBCreateOrConnectWithoutCategoryDBInput>>?
      connectOrCreate;

  final _i2.PostCategoryDBCreateManyCategoryDBInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostCategoryDBWhereUniqueInput,
      Iterable<_i2.PostCategoryDBWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class CategoryDBCreateWithoutPostCategoryDbInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBCreateWithoutPostCategoryDbInput({
    this.id,
    required this.key,
    required this.value,
    required this.properties,
    this.createdAt,
    this.updatedAt,
    this.projectCategoryDb,
  });

  final String? id;

  final String key;

  final String value;

  final String properties;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ProjectCategoryDBCreateNestedManyWithoutCategoryDBInput?
      projectCategoryDb;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'ProjectCategoryDb': projectCategoryDb,
      };
}

class ProjectCategoryDBUncheckedCreateWithoutCategoryDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBUncheckedCreateWithoutCategoryDBInput(
      {required this.projectId});

  final String projectId;

  @override
  Map<String, dynamic> toJson() => {'projectId': projectId};
}

class ProjectCategoryDBCreateOrConnectWithoutCategoryDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBCreateOrConnectWithoutCategoryDBInput({
    required this.where,
    required this.create,
  });

  final _i2.ProjectCategoryDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBCreateWithoutCategoryDBInput,
      _i2.ProjectCategoryDBUncheckedCreateWithoutCategoryDBInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ProjectCategoryDBCreateManyCategoryDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBCreateManyCategoryDBInput({required this.projectId});

  final String projectId;

  @override
  Map<String, dynamic> toJson() => {'projectId': projectId};
}

class ProjectCategoryDBCreateManyCategoryDBInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBCreateManyCategoryDBInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.ProjectCategoryDBCreateManyCategoryDBInput,
      Iterable<_i2.ProjectCategoryDBCreateManyCategoryDBInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class ProjectCategoryDBUncheckedCreateNestedManyWithoutCategoryDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBUncheckedCreateNestedManyWithoutCategoryDBInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.ProjectCategoryDBCreateWithoutCategoryDBInput,
          _i1.PrismaUnion<
              Iterable<_i2.ProjectCategoryDBCreateWithoutCategoryDBInput>,
              _i1.PrismaUnion<
                  _i2.ProjectCategoryDBUncheckedCreateWithoutCategoryDBInput,
                  Iterable<
                      _i2
                      .ProjectCategoryDBUncheckedCreateWithoutCategoryDBInput>>>>?
      create;

  final _i1.PrismaUnion<
          _i2.ProjectCategoryDBCreateOrConnectWithoutCategoryDBInput,
          Iterable<_i2.ProjectCategoryDBCreateOrConnectWithoutCategoryDBInput>>?
      connectOrCreate;

  final _i2.ProjectCategoryDBCreateManyCategoryDBInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBWhereUniqueInput,
      Iterable<_i2.ProjectCategoryDBWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class CategoryDBUncheckedCreateWithoutPostCategoryDbInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBUncheckedCreateWithoutPostCategoryDbInput({
    this.id,
    required this.key,
    required this.value,
    required this.properties,
    this.createdAt,
    this.updatedAt,
    this.projectCategoryDb,
  });

  final String? id;

  final String key;

  final String value;

  final String properties;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ProjectCategoryDBUncheckedCreateNestedManyWithoutCategoryDBInput?
      projectCategoryDb;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'ProjectCategoryDb': projectCategoryDb,
      };
}

class CategoryDBCreateOrConnectWithoutPostCategoryDbInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBCreateOrConnectWithoutPostCategoryDbInput({
    required this.where,
    required this.create,
  });

  final _i2.CategoryDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.CategoryDBCreateWithoutPostCategoryDbInput,
      _i2.CategoryDBUncheckedCreateWithoutPostCategoryDbInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class CategoryDBCreateNestedOneWithoutPostCategoryDbInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBCreateNestedOneWithoutPostCategoryDbInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.CategoryDBCreateWithoutPostCategoryDbInput,
      _i2.CategoryDBUncheckedCreateWithoutPostCategoryDbInput>? create;

  final _i2.CategoryDBCreateOrConnectWithoutPostCategoryDbInput?
      connectOrCreate;

  final _i2.CategoryDBWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class PostCategoryDBCreateWithoutBrandingPostDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBCreateWithoutBrandingPostDBInput(
      {required this.categoryDB});

  final _i2.CategoryDBCreateNestedOneWithoutPostCategoryDbInput categoryDB;

  @override
  Map<String, dynamic> toJson() => {'CategoryDB': categoryDB};
}

class PostCategoryDBUncheckedCreateWithoutBrandingPostDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBUncheckedCreateWithoutBrandingPostDBInput(
      {required this.categoryId});

  final String categoryId;

  @override
  Map<String, dynamic> toJson() => {'categoryId': categoryId};
}

class PostCategoryDBCreateOrConnectWithoutBrandingPostDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBCreateOrConnectWithoutBrandingPostDBInput({
    required this.where,
    required this.create,
  });

  final _i2.PostCategoryDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostCategoryDBCreateWithoutBrandingPostDBInput,
      _i2.PostCategoryDBUncheckedCreateWithoutBrandingPostDBInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class PostCategoryDBCreateManyBrandingPostDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBCreateManyBrandingPostDBInput({required this.categoryId});

  final String categoryId;

  @override
  Map<String, dynamic> toJson() => {'categoryId': categoryId};
}

class PostCategoryDBCreateManyBrandingPostDBInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBCreateManyBrandingPostDBInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.PostCategoryDBCreateManyBrandingPostDBInput,
      Iterable<_i2.PostCategoryDBCreateManyBrandingPostDBInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class PostCategoryDBCreateNestedManyWithoutBrandingPostDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBCreateNestedManyWithoutBrandingPostDBInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.PostCategoryDBCreateWithoutBrandingPostDBInput,
          _i1.PrismaUnion<
              Iterable<_i2.PostCategoryDBCreateWithoutBrandingPostDBInput>,
              _i1.PrismaUnion<
                  _i2.PostCategoryDBUncheckedCreateWithoutBrandingPostDBInput,
                  Iterable<
                      _i2
                      .PostCategoryDBUncheckedCreateWithoutBrandingPostDBInput>>>>?
      create;

  final _i1.PrismaUnion<
          _i2.PostCategoryDBCreateOrConnectWithoutBrandingPostDBInput,
          Iterable<
              _i2.PostCategoryDBCreateOrConnectWithoutBrandingPostDBInput>>?
      connectOrCreate;

  final _i2.PostCategoryDBCreateManyBrandingPostDBInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostCategoryDBWhereUniqueInput,
      Iterable<_i2.PostCategoryDBWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class BrandingPostDBCreateWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBCreateWithoutParentInput({
    this.id,
    required this.name,
    required this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    required this.sortOrder,
    this.categories,
  });

  final String? id;

  final String name;

  final String description;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final int sortOrder;

  final _i2.PostCategoryDBCreateNestedManyWithoutBrandingPostDBInput?
      categories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
        'categories': categories,
      };
}

class PostCategoryDBUncheckedCreateNestedManyWithoutBrandingPostDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBUncheckedCreateNestedManyWithoutBrandingPostDBInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.PostCategoryDBCreateWithoutBrandingPostDBInput,
          _i1.PrismaUnion<
              Iterable<_i2.PostCategoryDBCreateWithoutBrandingPostDBInput>,
              _i1.PrismaUnion<
                  _i2.PostCategoryDBUncheckedCreateWithoutBrandingPostDBInput,
                  Iterable<
                      _i2
                      .PostCategoryDBUncheckedCreateWithoutBrandingPostDBInput>>>>?
      create;

  final _i1.PrismaUnion<
          _i2.PostCategoryDBCreateOrConnectWithoutBrandingPostDBInput,
          Iterable<
              _i2.PostCategoryDBCreateOrConnectWithoutBrandingPostDBInput>>?
      connectOrCreate;

  final _i2.PostCategoryDBCreateManyBrandingPostDBInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostCategoryDBWhereUniqueInput,
      Iterable<_i2.PostCategoryDBWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class BrandingPostDBUncheckedCreateWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBUncheckedCreateWithoutParentInput({
    this.id,
    required this.name,
    required this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    required this.sortOrder,
    this.categories,
  });

  final String? id;

  final String name;

  final String description;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final int sortOrder;

  final _i2.PostCategoryDBUncheckedCreateNestedManyWithoutBrandingPostDBInput?
      categories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
        'categories': categories,
      };
}

class BrandingPostDBCreateOrConnectWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBCreateOrConnectWithoutParentInput({
    required this.where,
    required this.create,
  });

  final _i2.BrandingPostDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.BrandingPostDBCreateWithoutParentInput,
      _i2.BrandingPostDBUncheckedCreateWithoutParentInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class BrandingPostDBCreateManyParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBCreateManyParentInput({
    this.id,
    required this.name,
    required this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    required this.sortOrder,
  });

  final String? id;

  final String name;

  final String description;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final int sortOrder;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
      };
}

class BrandingPostDBCreateManyParentInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBCreateManyParentInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.BrandingPostDBCreateManyParentInput,
      Iterable<_i2.BrandingPostDBCreateManyParentInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class BrandingPostDBCreateNestedManyWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBCreateNestedManyWithoutParentInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.BrandingPostDBCreateWithoutParentInput,
          _i1.PrismaUnion<
              Iterable<_i2.BrandingPostDBCreateWithoutParentInput>,
              _i1.PrismaUnion<
                  _i2.BrandingPostDBUncheckedCreateWithoutParentInput,
                  Iterable<
                      _i2.BrandingPostDBUncheckedCreateWithoutParentInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.BrandingPostDBCreateOrConnectWithoutParentInput,
          Iterable<_i2.BrandingPostDBCreateOrConnectWithoutParentInput>>?
      connectOrCreate;

  final _i2.BrandingPostDBCreateManyParentInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.BrandingPostDBWhereUniqueInput,
      Iterable<_i2.BrandingPostDBWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class BrandingProjectDBCreateWithoutCategoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBCreateWithoutCategoriesInput({
    this.id,
    required this.name,
    required this.description,
    this.createdAt,
    this.updatedAt,
    this.children,
  });

  final String? id;

  final String name;

  final String description;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.BrandingPostDBCreateNestedManyWithoutParentInput? children;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'children': children,
      };
}

class BrandingPostDBUncheckedCreateNestedManyWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBUncheckedCreateNestedManyWithoutParentInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.BrandingPostDBCreateWithoutParentInput,
          _i1.PrismaUnion<
              Iterable<_i2.BrandingPostDBCreateWithoutParentInput>,
              _i1.PrismaUnion<
                  _i2.BrandingPostDBUncheckedCreateWithoutParentInput,
                  Iterable<
                      _i2.BrandingPostDBUncheckedCreateWithoutParentInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.BrandingPostDBCreateOrConnectWithoutParentInput,
          Iterable<_i2.BrandingPostDBCreateOrConnectWithoutParentInput>>?
      connectOrCreate;

  final _i2.BrandingPostDBCreateManyParentInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.BrandingPostDBWhereUniqueInput,
      Iterable<_i2.BrandingPostDBWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class BrandingProjectDBUncheckedCreateWithoutCategoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBUncheckedCreateWithoutCategoriesInput({
    this.id,
    required this.name,
    required this.description,
    this.createdAt,
    this.updatedAt,
    this.children,
  });

  final String? id;

  final String name;

  final String description;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.BrandingPostDBUncheckedCreateNestedManyWithoutParentInput? children;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'children': children,
      };
}

class BrandingProjectDBCreateOrConnectWithoutCategoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBCreateOrConnectWithoutCategoriesInput({
    required this.where,
    required this.create,
  });

  final _i2.BrandingProjectDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.BrandingProjectDBCreateWithoutCategoriesInput,
      _i2.BrandingProjectDBUncheckedCreateWithoutCategoriesInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class BrandingProjectDBCreateNestedOneWithoutCategoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBCreateNestedOneWithoutCategoriesInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.BrandingProjectDBCreateWithoutCategoriesInput,
      _i2.BrandingProjectDBUncheckedCreateWithoutCategoriesInput>? create;

  final _i2.BrandingProjectDBCreateOrConnectWithoutCategoriesInput?
      connectOrCreate;

  final _i2.BrandingProjectDBWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class ProjectCategoryDBCreateWithoutCategoryDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBCreateWithoutCategoryDBInput(
      {required this.brandingProjectDB});

  final _i2.BrandingProjectDBCreateNestedOneWithoutCategoriesInput
      brandingProjectDB;

  @override
  Map<String, dynamic> toJson() => {'BrandingProjectDB': brandingProjectDB};
}

class ProjectCategoryDBCreateNestedManyWithoutCategoryDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBCreateNestedManyWithoutCategoryDBInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.ProjectCategoryDBCreateWithoutCategoryDBInput,
          _i1.PrismaUnion<
              Iterable<_i2.ProjectCategoryDBCreateWithoutCategoryDBInput>,
              _i1.PrismaUnion<
                  _i2.ProjectCategoryDBUncheckedCreateWithoutCategoryDBInput,
                  Iterable<
                      _i2
                      .ProjectCategoryDBUncheckedCreateWithoutCategoryDBInput>>>>?
      create;

  final _i1.PrismaUnion<
          _i2.ProjectCategoryDBCreateOrConnectWithoutCategoryDBInput,
          Iterable<_i2.ProjectCategoryDBCreateOrConnectWithoutCategoryDBInput>>?
      connectOrCreate;

  final _i2.ProjectCategoryDBCreateManyCategoryDBInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBWhereUniqueInput,
      Iterable<_i2.ProjectCategoryDBWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class CategoryDBCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBCreateInput({
    this.id,
    required this.key,
    required this.value,
    required this.properties,
    this.createdAt,
    this.updatedAt,
    this.postCategoryDb,
    this.projectCategoryDb,
  });

  final String? id;

  final String key;

  final String value;

  final String properties;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.PostCategoryDBCreateNestedManyWithoutCategoryDBInput?
      postCategoryDb;

  final _i2.ProjectCategoryDBCreateNestedManyWithoutCategoryDBInput?
      projectCategoryDb;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'PostCategoryDb': postCategoryDb,
        'ProjectCategoryDb': projectCategoryDb,
      };
}

class CategoryDBUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBUncheckedCreateInput({
    this.id,
    required this.key,
    required this.value,
    required this.properties,
    this.createdAt,
    this.updatedAt,
    this.postCategoryDb,
    this.projectCategoryDb,
  });

  final String? id;

  final String key;

  final String value;

  final String properties;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.PostCategoryDBUncheckedCreateNestedManyWithoutCategoryDBInput?
      postCategoryDb;

  final _i2.ProjectCategoryDBUncheckedCreateNestedManyWithoutCategoryDBInput?
      projectCategoryDb;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'PostCategoryDb': postCategoryDb,
        'ProjectCategoryDb': projectCategoryDb,
      };
}

class AffectedRowsOutput {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map json) =>
      AffectedRowsOutput(count: json['count']);

  final int? count;

  Map<String, dynamic> toJson() => {'count': count};
}

class CategoryDBCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBCreateManyInput({
    this.id,
    required this.key,
    required this.value,
    required this.properties,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String key;

  final String value;

  final String properties;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CreateManyCategoryDBAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyCategoryDBAndReturnOutputTypeSelect({
    this.id,
    this.key,
    this.value,
    this.properties,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? key;

  final bool? value;

  final bool? properties;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class StringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFieldUpdateOperationsInput({this.set});

  final String? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class DateTimeFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeFieldUpdateOperationsInput({this.set});

  final DateTime? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class NullableStringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NullableStringFieldUpdateOperationsInput({this.set});

  final _i1.PrismaUnion<String, _i1.PrismaNull>? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class IntFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() => {
        'set': set,
        'increment': increment,
        'decrement': decrement,
        'multiply': multiply,
        'divide': divide,
      };
}

class CategoryDBUpdateWithoutProjectCategoryDbInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBUpdateWithoutProjectCategoryDbInput({
    this.id,
    this.key,
    this.value,
    this.properties,
    this.createdAt,
    this.updatedAt,
    this.postCategoryDb,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? key;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? value;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      properties;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.PostCategoryDBUpdateManyWithoutCategoryDBNestedInput?
      postCategoryDb;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'PostCategoryDb': postCategoryDb,
      };
}

class PostCategoryDBUncheckedUpdateWithoutCategoryDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBUncheckedUpdateWithoutCategoryDBInput({this.postId});

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? postId;

  @override
  Map<String, dynamic> toJson() => {'postId': postId};
}

class PostCategoryDBUpdateWithWhereUniqueWithoutCategoryDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBUpdateWithWhereUniqueWithoutCategoryDBInput({
    required this.where,
    required this.data,
  });

  final _i2.PostCategoryDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostCategoryDBUpdateWithoutCategoryDBInput,
      _i2.PostCategoryDBUncheckedUpdateWithoutCategoryDBInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PostCategoryDBScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.postId,
    this.categoryId,
  });

  final _i1.PrismaUnion<_i2.PostCategoryDBScalarWhereInput,
      Iterable<_i2.PostCategoryDBScalarWhereInput>>? AND;

  final Iterable<_i2.PostCategoryDBScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.PostCategoryDBScalarWhereInput,
      Iterable<_i2.PostCategoryDBScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? postId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'postId': postId,
        'categoryId': categoryId,
      };
}

class PostCategoryDBUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBUpdateManyMutationInput();

  @override
  Map<String, dynamic> toJson() => {};
}

class PostCategoryDBUncheckedUpdateManyWithoutCategoryDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBUncheckedUpdateManyWithoutCategoryDBInput({this.postId});

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? postId;

  @override
  Map<String, dynamic> toJson() => {'postId': postId};
}

class PostCategoryDBUpdateManyWithWhereWithoutCategoryDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBUpdateManyWithWhereWithoutCategoryDBInput({
    required this.where,
    required this.data,
  });

  final _i2.PostCategoryDBScalarWhereInput where;

  final _i1.PrismaUnion<_i2.PostCategoryDBUpdateManyMutationInput,
      _i2.PostCategoryDBUncheckedUpdateManyWithoutCategoryDBInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PostCategoryDBUncheckedUpdateManyWithoutCategoryDBNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBUncheckedUpdateManyWithoutCategoryDBNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.PostCategoryDBCreateWithoutCategoryDBInput,
          _i1.PrismaUnion<
              Iterable<_i2.PostCategoryDBCreateWithoutCategoryDBInput>,
              _i1.PrismaUnion<
                  _i2.PostCategoryDBUncheckedCreateWithoutCategoryDBInput,
                  Iterable<
                      _i2
                      .PostCategoryDBUncheckedCreateWithoutCategoryDBInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.PostCategoryDBCreateOrConnectWithoutCategoryDBInput,
          Iterable<_i2.PostCategoryDBCreateOrConnectWithoutCategoryDBInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<
          _i2.PostCategoryDBUpsertWithWhereUniqueWithoutCategoryDBInput,
          Iterable<
              _i2.PostCategoryDBUpsertWithWhereUniqueWithoutCategoryDBInput>>?
      upsert;

  final _i2.PostCategoryDBCreateManyCategoryDBInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostCategoryDBWhereUniqueInput,
      Iterable<_i2.PostCategoryDBWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PostCategoryDBWhereUniqueInput,
      Iterable<_i2.PostCategoryDBWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PostCategoryDBWhereUniqueInput,
      Iterable<_i2.PostCategoryDBWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PostCategoryDBWhereUniqueInput,
      Iterable<_i2.PostCategoryDBWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<
          _i2.PostCategoryDBUpdateWithWhereUniqueWithoutCategoryDBInput,
          Iterable<
              _i2.PostCategoryDBUpdateWithWhereUniqueWithoutCategoryDBInput>>?
      update;

  final _i1.PrismaUnion<
          _i2.PostCategoryDBUpdateManyWithWhereWithoutCategoryDBInput,
          Iterable<
              _i2.PostCategoryDBUpdateManyWithWhereWithoutCategoryDBInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.PostCategoryDBScalarWhereInput,
      Iterable<_i2.PostCategoryDBScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class CategoryDBUncheckedUpdateWithoutProjectCategoryDbInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBUncheckedUpdateWithoutProjectCategoryDbInput({
    this.id,
    this.key,
    this.value,
    this.properties,
    this.createdAt,
    this.updatedAt,
    this.postCategoryDb,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? key;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? value;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      properties;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.PostCategoryDBUncheckedUpdateManyWithoutCategoryDBNestedInput?
      postCategoryDb;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'PostCategoryDb': postCategoryDb,
      };
}

class CategoryDBUpsertWithoutProjectCategoryDbInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBUpsertWithoutProjectCategoryDbInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.CategoryDBUpdateWithoutProjectCategoryDbInput,
      _i2.CategoryDBUncheckedUpdateWithoutProjectCategoryDbInput> update;

  final _i1.PrismaUnion<_i2.CategoryDBCreateWithoutProjectCategoryDbInput,
      _i2.CategoryDBUncheckedCreateWithoutProjectCategoryDbInput> create;

  final _i2.CategoryDBWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class CategoryDBUpdateToOneWithWhereWithoutProjectCategoryDbInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBUpdateToOneWithWhereWithoutProjectCategoryDbInput({
    this.where,
    required this.data,
  });

  final _i2.CategoryDBWhereInput? where;

  final _i1.PrismaUnion<_i2.CategoryDBUpdateWithoutProjectCategoryDbInput,
      _i2.CategoryDBUncheckedUpdateWithoutProjectCategoryDbInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class CategoryDBUpdateOneRequiredWithoutProjectCategoryDbNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBUpdateOneRequiredWithoutProjectCategoryDbNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.CategoryDBCreateWithoutProjectCategoryDbInput,
      _i2.CategoryDBUncheckedCreateWithoutProjectCategoryDbInput>? create;

  final _i2.CategoryDBCreateOrConnectWithoutProjectCategoryDbInput?
      connectOrCreate;

  final _i2.CategoryDBUpsertWithoutProjectCategoryDbInput? upsert;

  final _i2.CategoryDBWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.CategoryDBUpdateToOneWithWhereWithoutProjectCategoryDbInput,
      _i1.PrismaUnion<_i2.CategoryDBUpdateWithoutProjectCategoryDbInput,
          _i2.CategoryDBUncheckedUpdateWithoutProjectCategoryDbInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class ProjectCategoryDBUpdateWithoutBrandingProjectDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBUpdateWithoutBrandingProjectDBInput({this.categoryDB});

  final _i2.CategoryDBUpdateOneRequiredWithoutProjectCategoryDbNestedInput?
      categoryDB;

  @override
  Map<String, dynamic> toJson() => {'CategoryDB': categoryDB};
}

class ProjectCategoryDBUncheckedUpdateWithoutBrandingProjectDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBUncheckedUpdateWithoutBrandingProjectDBInput(
      {this.categoryId});

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      categoryId;

  @override
  Map<String, dynamic> toJson() => {'categoryId': categoryId};
}

class ProjectCategoryDBUpsertWithWhereUniqueWithoutBrandingProjectDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBUpsertWithWhereUniqueWithoutBrandingProjectDBInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.ProjectCategoryDBWhereUniqueInput where;

  final _i1.PrismaUnion<
      _i2.ProjectCategoryDBUpdateWithoutBrandingProjectDBInput,
      _i2.ProjectCategoryDBUncheckedUpdateWithoutBrandingProjectDBInput> update;

  final _i1.PrismaUnion<
      _i2.ProjectCategoryDBCreateWithoutBrandingProjectDBInput,
      _i2.ProjectCategoryDBUncheckedCreateWithoutBrandingProjectDBInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class ProjectCategoryDBUpdateWithWhereUniqueWithoutBrandingProjectDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBUpdateWithWhereUniqueWithoutBrandingProjectDBInput({
    required this.where,
    required this.data,
  });

  final _i2.ProjectCategoryDBWhereUniqueInput where;

  final _i1.PrismaUnion<
      _i2.ProjectCategoryDBUpdateWithoutBrandingProjectDBInput,
      _i2.ProjectCategoryDBUncheckedUpdateWithoutBrandingProjectDBInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ProjectCategoryDBScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.projectId,
    this.categoryId,
  });

  final _i1.PrismaUnion<_i2.ProjectCategoryDBScalarWhereInput,
      Iterable<_i2.ProjectCategoryDBScalarWhereInput>>? AND;

  final Iterable<_i2.ProjectCategoryDBScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBScalarWhereInput,
      Iterable<_i2.ProjectCategoryDBScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? projectId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'projectId': projectId,
        'categoryId': categoryId,
      };
}

class ProjectCategoryDBUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBUpdateManyMutationInput();

  @override
  Map<String, dynamic> toJson() => {};
}

class ProjectCategoryDBUncheckedUpdateManyWithoutBrandingProjectDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBUncheckedUpdateManyWithoutBrandingProjectDBInput(
      {this.categoryId});

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      categoryId;

  @override
  Map<String, dynamic> toJson() => {'categoryId': categoryId};
}

class ProjectCategoryDBUpdateManyWithWhereWithoutBrandingProjectDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBUpdateManyWithWhereWithoutBrandingProjectDBInput({
    required this.where,
    required this.data,
  });

  final _i2.ProjectCategoryDBScalarWhereInput where;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBUpdateManyMutationInput,
          _i2.ProjectCategoryDBUncheckedUpdateManyWithoutBrandingProjectDBInput>
      data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ProjectCategoryDBUpdateManyWithoutBrandingProjectDBNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBUpdateManyWithoutBrandingProjectDBNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1
      .PrismaUnion<
          _i2.ProjectCategoryDBCreateWithoutBrandingProjectDBInput,
          _i1.PrismaUnion<
              Iterable<
                  _i2.ProjectCategoryDBCreateWithoutBrandingProjectDBInput>,
              _i1.PrismaUnion<
                  _i2
                  .ProjectCategoryDBUncheckedCreateWithoutBrandingProjectDBInput,
                  Iterable<
                      _i2
                      .ProjectCategoryDBUncheckedCreateWithoutBrandingProjectDBInput>>>>?
      create;

  final _i1.PrismaUnion<
          _i2.ProjectCategoryDBCreateOrConnectWithoutBrandingProjectDBInput,
          Iterable<
              _i2
              .ProjectCategoryDBCreateOrConnectWithoutBrandingProjectDBInput>>?
      connectOrCreate;

  final _i1
      .PrismaUnion<
          _i2
          .ProjectCategoryDBUpsertWithWhereUniqueWithoutBrandingProjectDBInput,
          Iterable<
              _i2
              .ProjectCategoryDBUpsertWithWhereUniqueWithoutBrandingProjectDBInput>>?
      upsert;

  final _i2.ProjectCategoryDBCreateManyBrandingProjectDBInputEnvelope?
      createMany;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBWhereUniqueInput,
      Iterable<_i2.ProjectCategoryDBWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBWhereUniqueInput,
      Iterable<_i2.ProjectCategoryDBWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBWhereUniqueInput,
      Iterable<_i2.ProjectCategoryDBWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBWhereUniqueInput,
      Iterable<_i2.ProjectCategoryDBWhereUniqueInput>>? connect;

  final _i1
      .PrismaUnion<
          _i2
          .ProjectCategoryDBUpdateWithWhereUniqueWithoutBrandingProjectDBInput,
          Iterable<
              _i2
              .ProjectCategoryDBUpdateWithWhereUniqueWithoutBrandingProjectDBInput>>?
      update;

  final _i1.PrismaUnion<
          _i2.ProjectCategoryDBUpdateManyWithWhereWithoutBrandingProjectDBInput,
          Iterable<
              _i2
              .ProjectCategoryDBUpdateManyWithWhereWithoutBrandingProjectDBInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBScalarWhereInput,
      Iterable<_i2.ProjectCategoryDBScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class BrandingProjectDBUpdateWithoutChildrenInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBUpdateWithoutChildrenInput({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.categories,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.ProjectCategoryDBUpdateManyWithoutBrandingProjectDBNestedInput?
      categories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'categories': categories,
      };
}

class ProjectCategoryDBUncheckedUpdateManyWithoutBrandingProjectDBNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBUncheckedUpdateManyWithoutBrandingProjectDBNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1
      .PrismaUnion<
          _i2.ProjectCategoryDBCreateWithoutBrandingProjectDBInput,
          _i1.PrismaUnion<
              Iterable<
                  _i2.ProjectCategoryDBCreateWithoutBrandingProjectDBInput>,
              _i1.PrismaUnion<
                  _i2
                  .ProjectCategoryDBUncheckedCreateWithoutBrandingProjectDBInput,
                  Iterable<
                      _i2
                      .ProjectCategoryDBUncheckedCreateWithoutBrandingProjectDBInput>>>>?
      create;

  final _i1.PrismaUnion<
          _i2.ProjectCategoryDBCreateOrConnectWithoutBrandingProjectDBInput,
          Iterable<
              _i2
              .ProjectCategoryDBCreateOrConnectWithoutBrandingProjectDBInput>>?
      connectOrCreate;

  final _i1
      .PrismaUnion<
          _i2
          .ProjectCategoryDBUpsertWithWhereUniqueWithoutBrandingProjectDBInput,
          Iterable<
              _i2
              .ProjectCategoryDBUpsertWithWhereUniqueWithoutBrandingProjectDBInput>>?
      upsert;

  final _i2.ProjectCategoryDBCreateManyBrandingProjectDBInputEnvelope?
      createMany;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBWhereUniqueInput,
      Iterable<_i2.ProjectCategoryDBWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBWhereUniqueInput,
      Iterable<_i2.ProjectCategoryDBWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBWhereUniqueInput,
      Iterable<_i2.ProjectCategoryDBWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBWhereUniqueInput,
      Iterable<_i2.ProjectCategoryDBWhereUniqueInput>>? connect;

  final _i1
      .PrismaUnion<
          _i2
          .ProjectCategoryDBUpdateWithWhereUniqueWithoutBrandingProjectDBInput,
          Iterable<
              _i2
              .ProjectCategoryDBUpdateWithWhereUniqueWithoutBrandingProjectDBInput>>?
      update;

  final _i1.PrismaUnion<
          _i2.ProjectCategoryDBUpdateManyWithWhereWithoutBrandingProjectDBInput,
          Iterable<
              _i2
              .ProjectCategoryDBUpdateManyWithWhereWithoutBrandingProjectDBInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBScalarWhereInput,
      Iterable<_i2.ProjectCategoryDBScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class BrandingProjectDBUncheckedUpdateWithoutChildrenInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBUncheckedUpdateWithoutChildrenInput({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.categories,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2
      .ProjectCategoryDBUncheckedUpdateManyWithoutBrandingProjectDBNestedInput?
      categories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'categories': categories,
      };
}

class BrandingProjectDBUpsertWithoutChildrenInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBUpsertWithoutChildrenInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.BrandingProjectDBUpdateWithoutChildrenInput,
      _i2.BrandingProjectDBUncheckedUpdateWithoutChildrenInput> update;

  final _i1.PrismaUnion<_i2.BrandingProjectDBCreateWithoutChildrenInput,
      _i2.BrandingProjectDBUncheckedCreateWithoutChildrenInput> create;

  final _i2.BrandingProjectDBWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class BrandingProjectDBUpdateToOneWithWhereWithoutChildrenInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBUpdateToOneWithWhereWithoutChildrenInput({
    this.where,
    required this.data,
  });

  final _i2.BrandingProjectDBWhereInput? where;

  final _i1.PrismaUnion<_i2.BrandingProjectDBUpdateWithoutChildrenInput,
      _i2.BrandingProjectDBUncheckedUpdateWithoutChildrenInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class BrandingProjectDBUpdateOneRequiredWithoutChildrenNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBUpdateOneRequiredWithoutChildrenNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.BrandingProjectDBCreateWithoutChildrenInput,
      _i2.BrandingProjectDBUncheckedCreateWithoutChildrenInput>? create;

  final _i2.BrandingProjectDBCreateOrConnectWithoutChildrenInput?
      connectOrCreate;

  final _i2.BrandingProjectDBUpsertWithoutChildrenInput? upsert;

  final _i2.BrandingProjectDBWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.BrandingProjectDBUpdateToOneWithWhereWithoutChildrenInput,
      _i1.PrismaUnion<_i2.BrandingProjectDBUpdateWithoutChildrenInput,
          _i2.BrandingProjectDBUncheckedUpdateWithoutChildrenInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class BrandingPostDBUpdateWithoutCategoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBUpdateWithoutCategoriesInput({
    this.id,
    this.name,
    this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.sortOrder,
    this.parent,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      description;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? sortOrder;

  final _i2.BrandingProjectDBUpdateOneRequiredWithoutChildrenNestedInput?
      parent;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
        'parent': parent,
      };
}

class BrandingPostDBUncheckedUpdateWithoutCategoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBUncheckedUpdateWithoutCategoriesInput({
    this.id,
    this.parentId,
    this.name,
    this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.sortOrder,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? parentId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      description;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? sortOrder;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parentId': parentId,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
      };
}

class BrandingPostDBUpsertWithoutCategoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBUpsertWithoutCategoriesInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.BrandingPostDBUpdateWithoutCategoriesInput,
      _i2.BrandingPostDBUncheckedUpdateWithoutCategoriesInput> update;

  final _i1.PrismaUnion<_i2.BrandingPostDBCreateWithoutCategoriesInput,
      _i2.BrandingPostDBUncheckedCreateWithoutCategoriesInput> create;

  final _i2.BrandingPostDBWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class BrandingPostDBUpdateToOneWithWhereWithoutCategoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBUpdateToOneWithWhereWithoutCategoriesInput({
    this.where,
    required this.data,
  });

  final _i2.BrandingPostDBWhereInput? where;

  final _i1.PrismaUnion<_i2.BrandingPostDBUpdateWithoutCategoriesInput,
      _i2.BrandingPostDBUncheckedUpdateWithoutCategoriesInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class BrandingPostDBUpdateOneRequiredWithoutCategoriesNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBUpdateOneRequiredWithoutCategoriesNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.BrandingPostDBCreateWithoutCategoriesInput,
      _i2.BrandingPostDBUncheckedCreateWithoutCategoriesInput>? create;

  final _i2.BrandingPostDBCreateOrConnectWithoutCategoriesInput?
      connectOrCreate;

  final _i2.BrandingPostDBUpsertWithoutCategoriesInput? upsert;

  final _i2.BrandingPostDBWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.BrandingPostDBUpdateToOneWithWhereWithoutCategoriesInput,
      _i1.PrismaUnion<_i2.BrandingPostDBUpdateWithoutCategoriesInput,
          _i2.BrandingPostDBUncheckedUpdateWithoutCategoriesInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class PostCategoryDBUpdateWithoutCategoryDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBUpdateWithoutCategoryDBInput({this.brandingPostDB});

  final _i2.BrandingPostDBUpdateOneRequiredWithoutCategoriesNestedInput?
      brandingPostDB;

  @override
  Map<String, dynamic> toJson() => {'BrandingPostDB': brandingPostDB};
}

class PostCategoryDBUpsertWithWhereUniqueWithoutCategoryDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBUpsertWithWhereUniqueWithoutCategoryDBInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.PostCategoryDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostCategoryDBUpdateWithoutCategoryDBInput,
      _i2.PostCategoryDBUncheckedUpdateWithoutCategoryDBInput> update;

  final _i1.PrismaUnion<_i2.PostCategoryDBCreateWithoutCategoryDBInput,
      _i2.PostCategoryDBUncheckedCreateWithoutCategoryDBInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class PostCategoryDBUpdateManyWithoutCategoryDBNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBUpdateManyWithoutCategoryDBNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.PostCategoryDBCreateWithoutCategoryDBInput,
          _i1.PrismaUnion<
              Iterable<_i2.PostCategoryDBCreateWithoutCategoryDBInput>,
              _i1.PrismaUnion<
                  _i2.PostCategoryDBUncheckedCreateWithoutCategoryDBInput,
                  Iterable<
                      _i2
                      .PostCategoryDBUncheckedCreateWithoutCategoryDBInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.PostCategoryDBCreateOrConnectWithoutCategoryDBInput,
          Iterable<_i2.PostCategoryDBCreateOrConnectWithoutCategoryDBInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<
          _i2.PostCategoryDBUpsertWithWhereUniqueWithoutCategoryDBInput,
          Iterable<
              _i2.PostCategoryDBUpsertWithWhereUniqueWithoutCategoryDBInput>>?
      upsert;

  final _i2.PostCategoryDBCreateManyCategoryDBInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostCategoryDBWhereUniqueInput,
      Iterable<_i2.PostCategoryDBWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PostCategoryDBWhereUniqueInput,
      Iterable<_i2.PostCategoryDBWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PostCategoryDBWhereUniqueInput,
      Iterable<_i2.PostCategoryDBWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PostCategoryDBWhereUniqueInput,
      Iterable<_i2.PostCategoryDBWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<
          _i2.PostCategoryDBUpdateWithWhereUniqueWithoutCategoryDBInput,
          Iterable<
              _i2.PostCategoryDBUpdateWithWhereUniqueWithoutCategoryDBInput>>?
      update;

  final _i1.PrismaUnion<
          _i2.PostCategoryDBUpdateManyWithWhereWithoutCategoryDBInput,
          Iterable<
              _i2.PostCategoryDBUpdateManyWithWhereWithoutCategoryDBInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.PostCategoryDBScalarWhereInput,
      Iterable<_i2.PostCategoryDBScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class CategoryDBUpdateWithoutPostCategoryDbInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBUpdateWithoutPostCategoryDbInput({
    this.id,
    this.key,
    this.value,
    this.properties,
    this.createdAt,
    this.updatedAt,
    this.projectCategoryDb,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? key;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? value;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      properties;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.ProjectCategoryDBUpdateManyWithoutCategoryDBNestedInput?
      projectCategoryDb;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'ProjectCategoryDb': projectCategoryDb,
      };
}

class ProjectCategoryDBUncheckedUpdateWithoutCategoryDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBUncheckedUpdateWithoutCategoryDBInput(
      {this.projectId});

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      projectId;

  @override
  Map<String, dynamic> toJson() => {'projectId': projectId};
}

class ProjectCategoryDBUpdateWithWhereUniqueWithoutCategoryDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBUpdateWithWhereUniqueWithoutCategoryDBInput({
    required this.where,
    required this.data,
  });

  final _i2.ProjectCategoryDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBUpdateWithoutCategoryDBInput,
      _i2.ProjectCategoryDBUncheckedUpdateWithoutCategoryDBInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ProjectCategoryDBUncheckedUpdateManyWithoutCategoryDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBUncheckedUpdateManyWithoutCategoryDBInput(
      {this.projectId});

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      projectId;

  @override
  Map<String, dynamic> toJson() => {'projectId': projectId};
}

class ProjectCategoryDBUpdateManyWithWhereWithoutCategoryDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBUpdateManyWithWhereWithoutCategoryDBInput({
    required this.where,
    required this.data,
  });

  final _i2.ProjectCategoryDBScalarWhereInput where;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBUpdateManyMutationInput,
      _i2.ProjectCategoryDBUncheckedUpdateManyWithoutCategoryDBInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ProjectCategoryDBUncheckedUpdateManyWithoutCategoryDBNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBUncheckedUpdateManyWithoutCategoryDBNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.ProjectCategoryDBCreateWithoutCategoryDBInput,
          _i1.PrismaUnion<
              Iterable<_i2.ProjectCategoryDBCreateWithoutCategoryDBInput>,
              _i1.PrismaUnion<
                  _i2.ProjectCategoryDBUncheckedCreateWithoutCategoryDBInput,
                  Iterable<
                      _i2
                      .ProjectCategoryDBUncheckedCreateWithoutCategoryDBInput>>>>?
      create;

  final _i1.PrismaUnion<
          _i2.ProjectCategoryDBCreateOrConnectWithoutCategoryDBInput,
          Iterable<_i2.ProjectCategoryDBCreateOrConnectWithoutCategoryDBInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<
          _i2.ProjectCategoryDBUpsertWithWhereUniqueWithoutCategoryDBInput,
          Iterable<
              _i2
              .ProjectCategoryDBUpsertWithWhereUniqueWithoutCategoryDBInput>>?
      upsert;

  final _i2.ProjectCategoryDBCreateManyCategoryDBInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBWhereUniqueInput,
      Iterable<_i2.ProjectCategoryDBWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBWhereUniqueInput,
      Iterable<_i2.ProjectCategoryDBWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBWhereUniqueInput,
      Iterable<_i2.ProjectCategoryDBWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBWhereUniqueInput,
      Iterable<_i2.ProjectCategoryDBWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<
          _i2.ProjectCategoryDBUpdateWithWhereUniqueWithoutCategoryDBInput,
          Iterable<
              _i2
              .ProjectCategoryDBUpdateWithWhereUniqueWithoutCategoryDBInput>>?
      update;

  final _i1.PrismaUnion<
          _i2.ProjectCategoryDBUpdateManyWithWhereWithoutCategoryDBInput,
          Iterable<
              _i2.ProjectCategoryDBUpdateManyWithWhereWithoutCategoryDBInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBScalarWhereInput,
      Iterable<_i2.ProjectCategoryDBScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class CategoryDBUncheckedUpdateWithoutPostCategoryDbInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBUncheckedUpdateWithoutPostCategoryDbInput({
    this.id,
    this.key,
    this.value,
    this.properties,
    this.createdAt,
    this.updatedAt,
    this.projectCategoryDb,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? key;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? value;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      properties;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.ProjectCategoryDBUncheckedUpdateManyWithoutCategoryDBNestedInput?
      projectCategoryDb;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'ProjectCategoryDb': projectCategoryDb,
      };
}

class CategoryDBUpsertWithoutPostCategoryDbInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBUpsertWithoutPostCategoryDbInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.CategoryDBUpdateWithoutPostCategoryDbInput,
      _i2.CategoryDBUncheckedUpdateWithoutPostCategoryDbInput> update;

  final _i1.PrismaUnion<_i2.CategoryDBCreateWithoutPostCategoryDbInput,
      _i2.CategoryDBUncheckedCreateWithoutPostCategoryDbInput> create;

  final _i2.CategoryDBWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class CategoryDBUpdateToOneWithWhereWithoutPostCategoryDbInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBUpdateToOneWithWhereWithoutPostCategoryDbInput({
    this.where,
    required this.data,
  });

  final _i2.CategoryDBWhereInput? where;

  final _i1.PrismaUnion<_i2.CategoryDBUpdateWithoutPostCategoryDbInput,
      _i2.CategoryDBUncheckedUpdateWithoutPostCategoryDbInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class CategoryDBUpdateOneRequiredWithoutPostCategoryDbNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBUpdateOneRequiredWithoutPostCategoryDbNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.CategoryDBCreateWithoutPostCategoryDbInput,
      _i2.CategoryDBUncheckedCreateWithoutPostCategoryDbInput>? create;

  final _i2.CategoryDBCreateOrConnectWithoutPostCategoryDbInput?
      connectOrCreate;

  final _i2.CategoryDBUpsertWithoutPostCategoryDbInput? upsert;

  final _i2.CategoryDBWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.CategoryDBUpdateToOneWithWhereWithoutPostCategoryDbInput,
      _i1.PrismaUnion<_i2.CategoryDBUpdateWithoutPostCategoryDbInput,
          _i2.CategoryDBUncheckedUpdateWithoutPostCategoryDbInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class PostCategoryDBUpdateWithoutBrandingPostDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBUpdateWithoutBrandingPostDBInput({this.categoryDB});

  final _i2.CategoryDBUpdateOneRequiredWithoutPostCategoryDbNestedInput?
      categoryDB;

  @override
  Map<String, dynamic> toJson() => {'CategoryDB': categoryDB};
}

class PostCategoryDBUncheckedUpdateWithoutBrandingPostDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBUncheckedUpdateWithoutBrandingPostDBInput(
      {this.categoryId});

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      categoryId;

  @override
  Map<String, dynamic> toJson() => {'categoryId': categoryId};
}

class PostCategoryDBUpsertWithWhereUniqueWithoutBrandingPostDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBUpsertWithWhereUniqueWithoutBrandingPostDBInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.PostCategoryDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostCategoryDBUpdateWithoutBrandingPostDBInput,
      _i2.PostCategoryDBUncheckedUpdateWithoutBrandingPostDBInput> update;

  final _i1.PrismaUnion<_i2.PostCategoryDBCreateWithoutBrandingPostDBInput,
      _i2.PostCategoryDBUncheckedCreateWithoutBrandingPostDBInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class PostCategoryDBUpdateWithWhereUniqueWithoutBrandingPostDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBUpdateWithWhereUniqueWithoutBrandingPostDBInput({
    required this.where,
    required this.data,
  });

  final _i2.PostCategoryDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PostCategoryDBUpdateWithoutBrandingPostDBInput,
      _i2.PostCategoryDBUncheckedUpdateWithoutBrandingPostDBInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PostCategoryDBUncheckedUpdateManyWithoutBrandingPostDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBUncheckedUpdateManyWithoutBrandingPostDBInput(
      {this.categoryId});

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      categoryId;

  @override
  Map<String, dynamic> toJson() => {'categoryId': categoryId};
}

class PostCategoryDBUpdateManyWithWhereWithoutBrandingPostDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBUpdateManyWithWhereWithoutBrandingPostDBInput({
    required this.where,
    required this.data,
  });

  final _i2.PostCategoryDBScalarWhereInput where;

  final _i1.PrismaUnion<_i2.PostCategoryDBUpdateManyMutationInput,
      _i2.PostCategoryDBUncheckedUpdateManyWithoutBrandingPostDBInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PostCategoryDBUpdateManyWithoutBrandingPostDBNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBUpdateManyWithoutBrandingPostDBNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.PostCategoryDBCreateWithoutBrandingPostDBInput,
          _i1.PrismaUnion<
              Iterable<_i2.PostCategoryDBCreateWithoutBrandingPostDBInput>,
              _i1.PrismaUnion<
                  _i2.PostCategoryDBUncheckedCreateWithoutBrandingPostDBInput,
                  Iterable<
                      _i2
                      .PostCategoryDBUncheckedCreateWithoutBrandingPostDBInput>>>>?
      create;

  final _i1.PrismaUnion<
          _i2.PostCategoryDBCreateOrConnectWithoutBrandingPostDBInput,
          Iterable<
              _i2.PostCategoryDBCreateOrConnectWithoutBrandingPostDBInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<
          _i2.PostCategoryDBUpsertWithWhereUniqueWithoutBrandingPostDBInput,
          Iterable<
              _i2
              .PostCategoryDBUpsertWithWhereUniqueWithoutBrandingPostDBInput>>?
      upsert;

  final _i2.PostCategoryDBCreateManyBrandingPostDBInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostCategoryDBWhereUniqueInput,
      Iterable<_i2.PostCategoryDBWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PostCategoryDBWhereUniqueInput,
      Iterable<_i2.PostCategoryDBWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PostCategoryDBWhereUniqueInput,
      Iterable<_i2.PostCategoryDBWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PostCategoryDBWhereUniqueInput,
      Iterable<_i2.PostCategoryDBWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<
          _i2.PostCategoryDBUpdateWithWhereUniqueWithoutBrandingPostDBInput,
          Iterable<
              _i2
              .PostCategoryDBUpdateWithWhereUniqueWithoutBrandingPostDBInput>>?
      update;

  final _i1.PrismaUnion<
          _i2.PostCategoryDBUpdateManyWithWhereWithoutBrandingPostDBInput,
          Iterable<
              _i2.PostCategoryDBUpdateManyWithWhereWithoutBrandingPostDBInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.PostCategoryDBScalarWhereInput,
      Iterable<_i2.PostCategoryDBScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class BrandingPostDBUpdateWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBUpdateWithoutParentInput({
    this.id,
    this.name,
    this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.sortOrder,
    this.categories,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      description;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? sortOrder;

  final _i2.PostCategoryDBUpdateManyWithoutBrandingPostDBNestedInput?
      categories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
        'categories': categories,
      };
}

class PostCategoryDBUncheckedUpdateManyWithoutBrandingPostDBNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBUncheckedUpdateManyWithoutBrandingPostDBNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.PostCategoryDBCreateWithoutBrandingPostDBInput,
          _i1.PrismaUnion<
              Iterable<_i2.PostCategoryDBCreateWithoutBrandingPostDBInput>,
              _i1.PrismaUnion<
                  _i2.PostCategoryDBUncheckedCreateWithoutBrandingPostDBInput,
                  Iterable<
                      _i2
                      .PostCategoryDBUncheckedCreateWithoutBrandingPostDBInput>>>>?
      create;

  final _i1.PrismaUnion<
          _i2.PostCategoryDBCreateOrConnectWithoutBrandingPostDBInput,
          Iterable<
              _i2.PostCategoryDBCreateOrConnectWithoutBrandingPostDBInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<
          _i2.PostCategoryDBUpsertWithWhereUniqueWithoutBrandingPostDBInput,
          Iterable<
              _i2
              .PostCategoryDBUpsertWithWhereUniqueWithoutBrandingPostDBInput>>?
      upsert;

  final _i2.PostCategoryDBCreateManyBrandingPostDBInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PostCategoryDBWhereUniqueInput,
      Iterable<_i2.PostCategoryDBWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PostCategoryDBWhereUniqueInput,
      Iterable<_i2.PostCategoryDBWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PostCategoryDBWhereUniqueInput,
      Iterable<_i2.PostCategoryDBWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PostCategoryDBWhereUniqueInput,
      Iterable<_i2.PostCategoryDBWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<
          _i2.PostCategoryDBUpdateWithWhereUniqueWithoutBrandingPostDBInput,
          Iterable<
              _i2
              .PostCategoryDBUpdateWithWhereUniqueWithoutBrandingPostDBInput>>?
      update;

  final _i1.PrismaUnion<
          _i2.PostCategoryDBUpdateManyWithWhereWithoutBrandingPostDBInput,
          Iterable<
              _i2.PostCategoryDBUpdateManyWithWhereWithoutBrandingPostDBInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.PostCategoryDBScalarWhereInput,
      Iterable<_i2.PostCategoryDBScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class BrandingPostDBUncheckedUpdateWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBUncheckedUpdateWithoutParentInput({
    this.id,
    this.name,
    this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.sortOrder,
    this.categories,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      description;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? sortOrder;

  final _i2.PostCategoryDBUncheckedUpdateManyWithoutBrandingPostDBNestedInput?
      categories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
        'categories': categories,
      };
}

class BrandingPostDBUpsertWithWhereUniqueWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBUpsertWithWhereUniqueWithoutParentInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.BrandingPostDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.BrandingPostDBUpdateWithoutParentInput,
      _i2.BrandingPostDBUncheckedUpdateWithoutParentInput> update;

  final _i1.PrismaUnion<_i2.BrandingPostDBCreateWithoutParentInput,
      _i2.BrandingPostDBUncheckedCreateWithoutParentInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class BrandingPostDBUpdateWithWhereUniqueWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBUpdateWithWhereUniqueWithoutParentInput({
    required this.where,
    required this.data,
  });

  final _i2.BrandingPostDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.BrandingPostDBUpdateWithoutParentInput,
      _i2.BrandingPostDBUncheckedUpdateWithoutParentInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class BrandingPostDBScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.parentId,
    this.name,
    this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.sortOrder,
  });

  final _i1.PrismaUnion<_i2.BrandingPostDBScalarWhereInput,
      Iterable<_i2.BrandingPostDBScalarWhereInput>>? AND;

  final Iterable<_i2.BrandingPostDBScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.BrandingPostDBScalarWhereInput,
      Iterable<_i2.BrandingPostDBScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? parentId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringFilter, String>? description;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.IntFilter, int>? sortOrder;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'parentId': parentId,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
      };
}

class BrandingPostDBUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBUpdateManyMutationInput({
    this.id,
    this.name,
    this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.sortOrder,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      description;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? sortOrder;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
      };
}

class BrandingPostDBUncheckedUpdateManyWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBUncheckedUpdateManyWithoutParentInput({
    this.id,
    this.name,
    this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.sortOrder,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      description;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? sortOrder;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
      };
}

class BrandingPostDBUpdateManyWithWhereWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBUpdateManyWithWhereWithoutParentInput({
    required this.where,
    required this.data,
  });

  final _i2.BrandingPostDBScalarWhereInput where;

  final _i1.PrismaUnion<_i2.BrandingPostDBUpdateManyMutationInput,
      _i2.BrandingPostDBUncheckedUpdateManyWithoutParentInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class BrandingPostDBUpdateManyWithoutParentNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBUpdateManyWithoutParentNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.BrandingPostDBCreateWithoutParentInput,
          _i1.PrismaUnion<
              Iterable<_i2.BrandingPostDBCreateWithoutParentInput>,
              _i1.PrismaUnion<
                  _i2.BrandingPostDBUncheckedCreateWithoutParentInput,
                  Iterable<
                      _i2.BrandingPostDBUncheckedCreateWithoutParentInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.BrandingPostDBCreateOrConnectWithoutParentInput,
          Iterable<_i2.BrandingPostDBCreateOrConnectWithoutParentInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<
          _i2.BrandingPostDBUpsertWithWhereUniqueWithoutParentInput,
          Iterable<_i2.BrandingPostDBUpsertWithWhereUniqueWithoutParentInput>>?
      upsert;

  final _i2.BrandingPostDBCreateManyParentInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.BrandingPostDBWhereUniqueInput,
      Iterable<_i2.BrandingPostDBWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.BrandingPostDBWhereUniqueInput,
      Iterable<_i2.BrandingPostDBWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.BrandingPostDBWhereUniqueInput,
      Iterable<_i2.BrandingPostDBWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.BrandingPostDBWhereUniqueInput,
      Iterable<_i2.BrandingPostDBWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<
          _i2.BrandingPostDBUpdateWithWhereUniqueWithoutParentInput,
          Iterable<_i2.BrandingPostDBUpdateWithWhereUniqueWithoutParentInput>>?
      update;

  final _i1.PrismaUnion<_i2.BrandingPostDBUpdateManyWithWhereWithoutParentInput,
          Iterable<_i2.BrandingPostDBUpdateManyWithWhereWithoutParentInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.BrandingPostDBScalarWhereInput,
      Iterable<_i2.BrandingPostDBScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class BrandingProjectDBUpdateWithoutCategoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBUpdateWithoutCategoriesInput({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.children,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.BrandingPostDBUpdateManyWithoutParentNestedInput? children;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'children': children,
      };
}

class BrandingPostDBUncheckedUpdateManyWithoutParentNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBUncheckedUpdateManyWithoutParentNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.BrandingPostDBCreateWithoutParentInput,
          _i1.PrismaUnion<
              Iterable<_i2.BrandingPostDBCreateWithoutParentInput>,
              _i1.PrismaUnion<
                  _i2.BrandingPostDBUncheckedCreateWithoutParentInput,
                  Iterable<
                      _i2.BrandingPostDBUncheckedCreateWithoutParentInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.BrandingPostDBCreateOrConnectWithoutParentInput,
          Iterable<_i2.BrandingPostDBCreateOrConnectWithoutParentInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<
          _i2.BrandingPostDBUpsertWithWhereUniqueWithoutParentInput,
          Iterable<_i2.BrandingPostDBUpsertWithWhereUniqueWithoutParentInput>>?
      upsert;

  final _i2.BrandingPostDBCreateManyParentInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.BrandingPostDBWhereUniqueInput,
      Iterable<_i2.BrandingPostDBWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.BrandingPostDBWhereUniqueInput,
      Iterable<_i2.BrandingPostDBWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.BrandingPostDBWhereUniqueInput,
      Iterable<_i2.BrandingPostDBWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.BrandingPostDBWhereUniqueInput,
      Iterable<_i2.BrandingPostDBWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<
          _i2.BrandingPostDBUpdateWithWhereUniqueWithoutParentInput,
          Iterable<_i2.BrandingPostDBUpdateWithWhereUniqueWithoutParentInput>>?
      update;

  final _i1.PrismaUnion<_i2.BrandingPostDBUpdateManyWithWhereWithoutParentInput,
          Iterable<_i2.BrandingPostDBUpdateManyWithWhereWithoutParentInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.BrandingPostDBScalarWhereInput,
      Iterable<_i2.BrandingPostDBScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class BrandingProjectDBUncheckedUpdateWithoutCategoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBUncheckedUpdateWithoutCategoriesInput({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.children,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.BrandingPostDBUncheckedUpdateManyWithoutParentNestedInput? children;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'children': children,
      };
}

class BrandingProjectDBUpsertWithoutCategoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBUpsertWithoutCategoriesInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.BrandingProjectDBUpdateWithoutCategoriesInput,
      _i2.BrandingProjectDBUncheckedUpdateWithoutCategoriesInput> update;

  final _i1.PrismaUnion<_i2.BrandingProjectDBCreateWithoutCategoriesInput,
      _i2.BrandingProjectDBUncheckedCreateWithoutCategoriesInput> create;

  final _i2.BrandingProjectDBWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class BrandingProjectDBUpdateToOneWithWhereWithoutCategoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBUpdateToOneWithWhereWithoutCategoriesInput({
    this.where,
    required this.data,
  });

  final _i2.BrandingProjectDBWhereInput? where;

  final _i1.PrismaUnion<_i2.BrandingProjectDBUpdateWithoutCategoriesInput,
      _i2.BrandingProjectDBUncheckedUpdateWithoutCategoriesInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class BrandingProjectDBUpdateOneRequiredWithoutCategoriesNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBUpdateOneRequiredWithoutCategoriesNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.BrandingProjectDBCreateWithoutCategoriesInput,
      _i2.BrandingProjectDBUncheckedCreateWithoutCategoriesInput>? create;

  final _i2.BrandingProjectDBCreateOrConnectWithoutCategoriesInput?
      connectOrCreate;

  final _i2.BrandingProjectDBUpsertWithoutCategoriesInput? upsert;

  final _i2.BrandingProjectDBWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.BrandingProjectDBUpdateToOneWithWhereWithoutCategoriesInput,
      _i1.PrismaUnion<_i2.BrandingProjectDBUpdateWithoutCategoriesInput,
          _i2.BrandingProjectDBUncheckedUpdateWithoutCategoriesInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class ProjectCategoryDBUpdateWithoutCategoryDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBUpdateWithoutCategoryDBInput({this.brandingProjectDB});

  final _i2.BrandingProjectDBUpdateOneRequiredWithoutCategoriesNestedInput?
      brandingProjectDB;

  @override
  Map<String, dynamic> toJson() => {'BrandingProjectDB': brandingProjectDB};
}

class ProjectCategoryDBUpsertWithWhereUniqueWithoutCategoryDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBUpsertWithWhereUniqueWithoutCategoryDBInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.ProjectCategoryDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBUpdateWithoutCategoryDBInput,
      _i2.ProjectCategoryDBUncheckedUpdateWithoutCategoryDBInput> update;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBCreateWithoutCategoryDBInput,
      _i2.ProjectCategoryDBUncheckedCreateWithoutCategoryDBInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class ProjectCategoryDBUpdateManyWithoutCategoryDBNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBUpdateManyWithoutCategoryDBNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.ProjectCategoryDBCreateWithoutCategoryDBInput,
          _i1.PrismaUnion<
              Iterable<_i2.ProjectCategoryDBCreateWithoutCategoryDBInput>,
              _i1.PrismaUnion<
                  _i2.ProjectCategoryDBUncheckedCreateWithoutCategoryDBInput,
                  Iterable<
                      _i2
                      .ProjectCategoryDBUncheckedCreateWithoutCategoryDBInput>>>>?
      create;

  final _i1.PrismaUnion<
          _i2.ProjectCategoryDBCreateOrConnectWithoutCategoryDBInput,
          Iterable<_i2.ProjectCategoryDBCreateOrConnectWithoutCategoryDBInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<
          _i2.ProjectCategoryDBUpsertWithWhereUniqueWithoutCategoryDBInput,
          Iterable<
              _i2
              .ProjectCategoryDBUpsertWithWhereUniqueWithoutCategoryDBInput>>?
      upsert;

  final _i2.ProjectCategoryDBCreateManyCategoryDBInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBWhereUniqueInput,
      Iterable<_i2.ProjectCategoryDBWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBWhereUniqueInput,
      Iterable<_i2.ProjectCategoryDBWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBWhereUniqueInput,
      Iterable<_i2.ProjectCategoryDBWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBWhereUniqueInput,
      Iterable<_i2.ProjectCategoryDBWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<
          _i2.ProjectCategoryDBUpdateWithWhereUniqueWithoutCategoryDBInput,
          Iterable<
              _i2
              .ProjectCategoryDBUpdateWithWhereUniqueWithoutCategoryDBInput>>?
      update;

  final _i1.PrismaUnion<
          _i2.ProjectCategoryDBUpdateManyWithWhereWithoutCategoryDBInput,
          Iterable<
              _i2.ProjectCategoryDBUpdateManyWithWhereWithoutCategoryDBInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBScalarWhereInput,
      Iterable<_i2.ProjectCategoryDBScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class CategoryDBUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBUpdateInput({
    this.id,
    this.key,
    this.value,
    this.properties,
    this.createdAt,
    this.updatedAt,
    this.postCategoryDb,
    this.projectCategoryDb,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? key;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? value;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      properties;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.PostCategoryDBUpdateManyWithoutCategoryDBNestedInput?
      postCategoryDb;

  final _i2.ProjectCategoryDBUpdateManyWithoutCategoryDBNestedInput?
      projectCategoryDb;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'PostCategoryDb': postCategoryDb,
        'ProjectCategoryDb': projectCategoryDb,
      };
}

class CategoryDBUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBUncheckedUpdateInput({
    this.id,
    this.key,
    this.value,
    this.properties,
    this.createdAt,
    this.updatedAt,
    this.postCategoryDb,
    this.projectCategoryDb,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? key;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? value;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      properties;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.PostCategoryDBUncheckedUpdateManyWithoutCategoryDBNestedInput?
      postCategoryDb;

  final _i2.ProjectCategoryDBUncheckedUpdateManyWithoutCategoryDBNestedInput?
      projectCategoryDb;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'PostCategoryDb': postCategoryDb,
        'ProjectCategoryDb': projectCategoryDb,
      };
}

class CategoryDBUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBUpdateManyMutationInput({
    this.id,
    this.key,
    this.value,
    this.properties,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? key;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? value;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      properties;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CategoryDBUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBUncheckedUpdateManyInput({
    this.id,
    this.key,
    this.value,
    this.properties,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? key;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? value;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      properties;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CategoryDBCountAggregateOutputType {
  const CategoryDBCountAggregateOutputType({
    this.id,
    this.key,
    this.value,
    this.properties,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  factory CategoryDBCountAggregateOutputType.fromJson(Map json) =>
      CategoryDBCountAggregateOutputType(
        id: json['id'],
        key: json['key'],
        value: json['value'],
        properties: json['properties'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        $all: json['_all'],
      );

  final int? id;

  final int? key;

  final int? value;

  final int? properties;

  final int? createdAt;

  final int? updatedAt;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_all': $all,
      };
}

class CategoryDBMinAggregateOutputType {
  const CategoryDBMinAggregateOutputType({
    this.id,
    this.key,
    this.value,
    this.properties,
    this.createdAt,
    this.updatedAt,
  });

  factory CategoryDBMinAggregateOutputType.fromJson(Map json) =>
      CategoryDBMinAggregateOutputType(
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

class CategoryDBMaxAggregateOutputType {
  const CategoryDBMaxAggregateOutputType({
    this.id,
    this.key,
    this.value,
    this.properties,
    this.createdAt,
    this.updatedAt,
  });

  factory CategoryDBMaxAggregateOutputType.fromJson(Map json) =>
      CategoryDBMaxAggregateOutputType(
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

class CategoryDBGroupByOutputType {
  const CategoryDBGroupByOutputType({
    this.id,
    this.key,
    this.value,
    this.properties,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$min,
    this.$max,
  });

  factory CategoryDBGroupByOutputType.fromJson(Map json) =>
      CategoryDBGroupByOutputType(
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
        $count: json['_count'] is Map
            ? _i2.CategoryDBCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.CategoryDBMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.CategoryDBMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? key;

  final String? value;

  final String? properties;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.CategoryDBCountAggregateOutputType? $count;

  final _i2.CategoryDBMinAggregateOutputType? $min;

  final _i2.CategoryDBMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class CategoryDBCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBCountOrderByAggregateInput({
    this.id,
    this.key,
    this.value,
    this.properties,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? key;

  final _i2.SortOrder? value;

  final _i2.SortOrder? properties;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CategoryDBMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBMaxOrderByAggregateInput({
    this.id,
    this.key,
    this.value,
    this.properties,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? key;

  final _i2.SortOrder? value;

  final _i2.SortOrder? properties;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CategoryDBMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBMinOrderByAggregateInput({
    this.id,
    this.key,
    this.value,
    this.properties,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? key;

  final _i2.SortOrder? value;

  final _i2.SortOrder? properties;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CategoryDBOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBOrderByWithAggregationInput({
    this.id,
    this.key,
    this.value,
    this.properties,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? key;

  final _i2.SortOrder? value;

  final _i2.SortOrder? properties;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.CategoryDBCountOrderByAggregateInput? $count;

  final _i2.CategoryDBMaxOrderByAggregateInput? $max;

  final _i2.CategoryDBMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class NestedStringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class StringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedDateTimeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedDateTimeFilter? $min;

  final _i2.NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class DateTimeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedDateTimeFilter? $min;

  final _i2.NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class CategoryDBScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.key,
    this.value,
    this.properties,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.CategoryDBScalarWhereWithAggregatesInput,
      Iterable<_i2.CategoryDBScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.CategoryDBScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.CategoryDBScalarWhereWithAggregatesInput,
      Iterable<_i2.CategoryDBScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? key;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? value;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? properties;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CategoryDBCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBCountAggregateOutputTypeSelect({
    this.id,
    this.key,
    this.value,
    this.properties,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  final bool? id;

  final bool? key;

  final bool? value;

  final bool? properties;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_all': $all,
      };
}

class CategoryDBGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBGroupByOutputTypeCountArgs({this.select});

  final _i2.CategoryDBCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CategoryDBMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBMinAggregateOutputTypeSelect({
    this.id,
    this.key,
    this.value,
    this.properties,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? key;

  final bool? value;

  final bool? properties;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CategoryDBGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBGroupByOutputTypeMinArgs({this.select});

  final _i2.CategoryDBMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CategoryDBMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBMaxAggregateOutputTypeSelect({
    this.id,
    this.key,
    this.value,
    this.properties,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? key;

  final bool? value;

  final bool? properties;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CategoryDBGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBGroupByOutputTypeMaxArgs({this.select});

  final _i2.CategoryDBMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CategoryDBGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryDBGroupByOutputTypeSelect({
    this.id,
    this.key,
    this.value,
    this.properties,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? key;

  final bool? value;

  final bool? properties;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.CategoryDBGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.CategoryDBGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.CategoryDBGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'value': value,
        'properties': properties,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateCategoryDB {
  const AggregateCategoryDB({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateCategoryDB.fromJson(Map json) => AggregateCategoryDB(
        $count: json['_count'] is Map
            ? _i2.CategoryDBCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.CategoryDBMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.CategoryDBMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.CategoryDBCountAggregateOutputType? $count;

  final _i2.CategoryDBMinAggregateOutputType? $min;

  final _i2.CategoryDBMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateCategoryDBCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCategoryDBCountArgs({this.select});

  final _i2.CategoryDBCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateCategoryDBMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCategoryDBMinArgs({this.select});

  final _i2.CategoryDBMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateCategoryDBMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCategoryDBMaxArgs({this.select});

  final _i2.CategoryDBMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateCategoryDBSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCategoryDBSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateCategoryDBCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateCategoryDBMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateCategoryDBMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedEnumDailyLinkTypeDBFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedEnumDailyLinkTypeDBFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
  });

  final _i1
      .PrismaUnion<_i3.DailyLinkTypeDB, _i1.Reference<_i3.DailyLinkTypeDB>>?
      equals;

  final _i1.PrismaUnion<Iterable<_i3.DailyLinkTypeDB>,
      _i1.Reference<Iterable<_i3.DailyLinkTypeDB>>>? $in;

  final _i1.PrismaUnion<Iterable<_i3.DailyLinkTypeDB>,
      _i1.Reference<Iterable<_i3.DailyLinkTypeDB>>>? notIn;

  final _i1
      .PrismaUnion<_i3.DailyLinkTypeDB, _i2.NestedEnumDailyLinkTypeDBFilter>?
      not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
      };
}

class EnumDailyLinkTypeDBFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EnumDailyLinkTypeDBFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
  });

  final _i1
      .PrismaUnion<_i3.DailyLinkTypeDB, _i1.Reference<_i3.DailyLinkTypeDB>>?
      equals;

  final _i1.PrismaUnion<Iterable<_i3.DailyLinkTypeDB>,
      _i1.Reference<Iterable<_i3.DailyLinkTypeDB>>>? $in;

  final _i1.PrismaUnion<Iterable<_i3.DailyLinkTypeDB>,
      _i1.Reference<Iterable<_i3.DailyLinkTypeDB>>>? notIn;

  final _i1
      .PrismaUnion<_i3.DailyLinkTypeDB, _i2.NestedEnumDailyLinkTypeDBFilter>?
      not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
      };
}

class DailyLinkDBWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DailyLinkDBWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.title,
    this.url,
    this.previewImageUrl,
    this.date,
    this.type,
  });

  final _i1.PrismaUnion<_i2.DailyLinkDBWhereInput,
      Iterable<_i2.DailyLinkDBWhereInput>>? AND;

  final Iterable<_i2.DailyLinkDBWhereInput>? OR;

  final _i1.PrismaUnion<_i2.DailyLinkDBWhereInput,
      Iterable<_i2.DailyLinkDBWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? title;

  final _i1.PrismaUnion<_i2.StringFilter, String>? url;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? previewImageUrl;

  final _i1.PrismaUnion<_i2.StringFilter, String>? date;

  final _i1.PrismaUnion<_i2.EnumDailyLinkTypeDBFilter, _i3.DailyLinkTypeDB>?
      type;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'title': title,
        'url': url,
        'previewImageUrl': previewImageUrl,
        'date': date,
        'type': type,
      };
}

class DailyLinkDBWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DailyLinkDBWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.title,
    this.url,
    this.previewImageUrl,
    this.date,
    this.type,
  });

  final String? id;

  final _i1.PrismaUnion<_i2.DailyLinkDBWhereInput,
      Iterable<_i2.DailyLinkDBWhereInput>>? AND;

  final Iterable<_i2.DailyLinkDBWhereInput>? OR;

  final _i1.PrismaUnion<_i2.DailyLinkDBWhereInput,
      Iterable<_i2.DailyLinkDBWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? title;

  final _i1.PrismaUnion<_i2.StringFilter, String>? url;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? previewImageUrl;

  final _i1.PrismaUnion<_i2.StringFilter, String>? date;

  final _i1.PrismaUnion<_i2.EnumDailyLinkTypeDBFilter, _i3.DailyLinkTypeDB>?
      type;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'title': title,
        'url': url,
        'previewImageUrl': previewImageUrl,
        'date': date,
        'type': type,
      };
}

class DailyLinkDBSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DailyLinkDBSelect({
    this.id,
    this.title,
    this.url,
    this.previewImageUrl,
    this.date,
    this.type,
  });

  final bool? id;

  final bool? title;

  final bool? url;

  final bool? previewImageUrl;

  final bool? date;

  final bool? type;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'url': url,
        'previewImageUrl': previewImageUrl,
        'date': date,
        'type': type,
      };
}

class DailyLinkDBOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DailyLinkDBOrderByWithRelationInput({
    this.id,
    this.title,
    this.url,
    this.previewImageUrl,
    this.date,
    this.type,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? title;

  final _i2.SortOrder? url;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? previewImageUrl;

  final _i2.SortOrder? date;

  final _i2.SortOrder? type;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'url': url,
        'previewImageUrl': previewImageUrl,
        'date': date,
        'type': type,
      };
}

enum DailyLinkDBScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'DailyLinkDB'),
  title<String>('title', 'DailyLinkDB'),
  url<String>('url', 'DailyLinkDB'),
  previewImageUrl<String>('previewImageUrl', 'DailyLinkDB'),
  date<String>('date', 'DailyLinkDB'),
  type<_i3.DailyLinkTypeDB>('type', 'DailyLinkDB');

  const DailyLinkDBScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class DailyLinkDBCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DailyLinkDBCreateInput({
    this.id,
    required this.title,
    required this.url,
    this.previewImageUrl,
    required this.date,
    required this.type,
  });

  final String? id;

  final String title;

  final String url;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? previewImageUrl;

  final String date;

  final _i3.DailyLinkTypeDB type;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'url': url,
        'previewImageUrl': previewImageUrl,
        'date': date,
        'type': type,
      };
}

class DailyLinkDBUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DailyLinkDBUncheckedCreateInput({
    this.id,
    required this.title,
    required this.url,
    this.previewImageUrl,
    required this.date,
    required this.type,
  });

  final String? id;

  final String title;

  final String url;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? previewImageUrl;

  final String date;

  final _i3.DailyLinkTypeDB type;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'url': url,
        'previewImageUrl': previewImageUrl,
        'date': date,
        'type': type,
      };
}

class DailyLinkDBCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DailyLinkDBCreateManyInput({
    this.id,
    required this.title,
    required this.url,
    this.previewImageUrl,
    required this.date,
    required this.type,
  });

  final String? id;

  final String title;

  final String url;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? previewImageUrl;

  final String date;

  final _i3.DailyLinkTypeDB type;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'url': url,
        'previewImageUrl': previewImageUrl,
        'date': date,
        'type': type,
      };
}

class CreateManyDailyLinkDBAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyDailyLinkDBAndReturnOutputTypeSelect({
    this.id,
    this.title,
    this.url,
    this.previewImageUrl,
    this.date,
    this.type,
  });

  final bool? id;

  final bool? title;

  final bool? url;

  final bool? previewImageUrl;

  final bool? date;

  final bool? type;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'url': url,
        'previewImageUrl': previewImageUrl,
        'date': date,
        'type': type,
      };
}

class EnumDailyLinkTypeDBFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EnumDailyLinkTypeDBFieldUpdateOperationsInput({this.set});

  final _i3.DailyLinkTypeDB? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class DailyLinkDBUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DailyLinkDBUpdateInput({
    this.id,
    this.title,
    this.url,
    this.previewImageUrl,
    this.date,
    this.type,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? url;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? previewImageUrl;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? date;

  final _i1.PrismaUnion<_i3.DailyLinkTypeDB,
      _i2.EnumDailyLinkTypeDBFieldUpdateOperationsInput>? type;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'url': url,
        'previewImageUrl': previewImageUrl,
        'date': date,
        'type': type,
      };
}

class DailyLinkDBUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DailyLinkDBUncheckedUpdateInput({
    this.id,
    this.title,
    this.url,
    this.previewImageUrl,
    this.date,
    this.type,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? url;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? previewImageUrl;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? date;

  final _i1.PrismaUnion<_i3.DailyLinkTypeDB,
      _i2.EnumDailyLinkTypeDBFieldUpdateOperationsInput>? type;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'url': url,
        'previewImageUrl': previewImageUrl,
        'date': date,
        'type': type,
      };
}

class DailyLinkDBUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DailyLinkDBUpdateManyMutationInput({
    this.id,
    this.title,
    this.url,
    this.previewImageUrl,
    this.date,
    this.type,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? url;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? previewImageUrl;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? date;

  final _i1.PrismaUnion<_i3.DailyLinkTypeDB,
      _i2.EnumDailyLinkTypeDBFieldUpdateOperationsInput>? type;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'url': url,
        'previewImageUrl': previewImageUrl,
        'date': date,
        'type': type,
      };
}

class DailyLinkDBUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DailyLinkDBUncheckedUpdateManyInput({
    this.id,
    this.title,
    this.url,
    this.previewImageUrl,
    this.date,
    this.type,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? url;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? previewImageUrl;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? date;

  final _i1.PrismaUnion<_i3.DailyLinkTypeDB,
      _i2.EnumDailyLinkTypeDBFieldUpdateOperationsInput>? type;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'url': url,
        'previewImageUrl': previewImageUrl,
        'date': date,
        'type': type,
      };
}

class DailyLinkDBCountAggregateOutputType {
  const DailyLinkDBCountAggregateOutputType({
    this.id,
    this.title,
    this.url,
    this.previewImageUrl,
    this.date,
    this.type,
    this.$all,
  });

  factory DailyLinkDBCountAggregateOutputType.fromJson(Map json) =>
      DailyLinkDBCountAggregateOutputType(
        id: json['id'],
        title: json['title'],
        url: json['url'],
        previewImageUrl: json['previewImageUrl'],
        date: json['date'],
        type: json['type'],
        $all: json['_all'],
      );

  final int? id;

  final int? title;

  final int? url;

  final int? previewImageUrl;

  final int? date;

  final int? type;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'url': url,
        'previewImageUrl': previewImageUrl,
        'date': date,
        'type': type,
        '_all': $all,
      };
}

class DailyLinkDBMinAggregateOutputType {
  const DailyLinkDBMinAggregateOutputType({
    this.id,
    this.title,
    this.url,
    this.previewImageUrl,
    this.date,
    this.type,
  });

  factory DailyLinkDBMinAggregateOutputType.fromJson(Map json) =>
      DailyLinkDBMinAggregateOutputType(
        id: json['id'],
        title: json['title'],
        url: json['url'],
        previewImageUrl: json['previewImageUrl'],
        date: json['date'],
        type: json['type'] != null
            ? _i3.DailyLinkTypeDB.values
                .firstWhere((e) => e.name == json['type'])
            : null,
      );

  final String? id;

  final String? title;

  final String? url;

  final String? previewImageUrl;

  final String? date;

  final _i3.DailyLinkTypeDB? type;

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'url': url,
        'previewImageUrl': previewImageUrl,
        'date': date,
        'type': type?.name,
      };
}

class DailyLinkDBMaxAggregateOutputType {
  const DailyLinkDBMaxAggregateOutputType({
    this.id,
    this.title,
    this.url,
    this.previewImageUrl,
    this.date,
    this.type,
  });

  factory DailyLinkDBMaxAggregateOutputType.fromJson(Map json) =>
      DailyLinkDBMaxAggregateOutputType(
        id: json['id'],
        title: json['title'],
        url: json['url'],
        previewImageUrl: json['previewImageUrl'],
        date: json['date'],
        type: json['type'] != null
            ? _i3.DailyLinkTypeDB.values
                .firstWhere((e) => e.name == json['type'])
            : null,
      );

  final String? id;

  final String? title;

  final String? url;

  final String? previewImageUrl;

  final String? date;

  final _i3.DailyLinkTypeDB? type;

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'url': url,
        'previewImageUrl': previewImageUrl,
        'date': date,
        'type': type?.name,
      };
}

class DailyLinkDBGroupByOutputType {
  const DailyLinkDBGroupByOutputType({
    this.id,
    this.title,
    this.url,
    this.previewImageUrl,
    this.date,
    this.type,
    this.$count,
    this.$min,
    this.$max,
  });

  factory DailyLinkDBGroupByOutputType.fromJson(Map json) =>
      DailyLinkDBGroupByOutputType(
        id: json['id'],
        title: json['title'],
        url: json['url'],
        previewImageUrl: json['previewImageUrl'],
        date: json['date'],
        type: json['type'] != null
            ? _i3.DailyLinkTypeDB.values
                .firstWhere((e) => e.name == json['type'])
            : null,
        $count: json['_count'] is Map
            ? _i2.DailyLinkDBCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.DailyLinkDBMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.DailyLinkDBMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? title;

  final String? url;

  final String? previewImageUrl;

  final String? date;

  final _i3.DailyLinkTypeDB? type;

  final _i2.DailyLinkDBCountAggregateOutputType? $count;

  final _i2.DailyLinkDBMinAggregateOutputType? $min;

  final _i2.DailyLinkDBMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'url': url,
        'previewImageUrl': previewImageUrl,
        'date': date,
        'type': type?.name,
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class DailyLinkDBCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DailyLinkDBCountOrderByAggregateInput({
    this.id,
    this.title,
    this.url,
    this.previewImageUrl,
    this.date,
    this.type,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? title;

  final _i2.SortOrder? url;

  final _i2.SortOrder? previewImageUrl;

  final _i2.SortOrder? date;

  final _i2.SortOrder? type;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'url': url,
        'previewImageUrl': previewImageUrl,
        'date': date,
        'type': type,
      };
}

class DailyLinkDBMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DailyLinkDBMaxOrderByAggregateInput({
    this.id,
    this.title,
    this.url,
    this.previewImageUrl,
    this.date,
    this.type,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? title;

  final _i2.SortOrder? url;

  final _i2.SortOrder? previewImageUrl;

  final _i2.SortOrder? date;

  final _i2.SortOrder? type;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'url': url,
        'previewImageUrl': previewImageUrl,
        'date': date,
        'type': type,
      };
}

class DailyLinkDBMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DailyLinkDBMinOrderByAggregateInput({
    this.id,
    this.title,
    this.url,
    this.previewImageUrl,
    this.date,
    this.type,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? title;

  final _i2.SortOrder? url;

  final _i2.SortOrder? previewImageUrl;

  final _i2.SortOrder? date;

  final _i2.SortOrder? type;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'url': url,
        'previewImageUrl': previewImageUrl,
        'date': date,
        'type': type,
      };
}

class DailyLinkDBOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DailyLinkDBOrderByWithAggregationInput({
    this.id,
    this.title,
    this.url,
    this.previewImageUrl,
    this.date,
    this.type,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? title;

  final _i2.SortOrder? url;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? previewImageUrl;

  final _i2.SortOrder? date;

  final _i2.SortOrder? type;

  final _i2.DailyLinkDBCountOrderByAggregateInput? $count;

  final _i2.DailyLinkDBMaxOrderByAggregateInput? $max;

  final _i2.DailyLinkDBMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'url': url,
        'previewImageUrl': previewImageUrl,
        'date': date,
        'type': type,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class NestedIntNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1
      .PrismaUnion<int, _i1.PrismaUnion<_i1.Reference<int>, _i1.PrismaNull>>?
      equals;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int,
      _i1.PrismaUnion<_i2.NestedIntNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedStringNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NestedStringNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedStringNullableFilter? $min;

  final _i2.NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class StringNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NestedStringNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedStringNullableFilter? $min;

  final _i2.NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedEnumDailyLinkTypeDBWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedEnumDailyLinkTypeDBWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1
      .PrismaUnion<_i3.DailyLinkTypeDB, _i1.Reference<_i3.DailyLinkTypeDB>>?
      equals;

  final _i1.PrismaUnion<Iterable<_i3.DailyLinkTypeDB>,
      _i1.Reference<Iterable<_i3.DailyLinkTypeDB>>>? $in;

  final _i1.PrismaUnion<Iterable<_i3.DailyLinkTypeDB>,
      _i1.Reference<Iterable<_i3.DailyLinkTypeDB>>>? notIn;

  final _i1.PrismaUnion<_i3.DailyLinkTypeDB,
      _i2.NestedEnumDailyLinkTypeDBWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedEnumDailyLinkTypeDBFilter? $min;

  final _i2.NestedEnumDailyLinkTypeDBFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class EnumDailyLinkTypeDBWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EnumDailyLinkTypeDBWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1
      .PrismaUnion<_i3.DailyLinkTypeDB, _i1.Reference<_i3.DailyLinkTypeDB>>?
      equals;

  final _i1.PrismaUnion<Iterable<_i3.DailyLinkTypeDB>,
      _i1.Reference<Iterable<_i3.DailyLinkTypeDB>>>? $in;

  final _i1.PrismaUnion<Iterable<_i3.DailyLinkTypeDB>,
      _i1.Reference<Iterable<_i3.DailyLinkTypeDB>>>? notIn;

  final _i1.PrismaUnion<_i3.DailyLinkTypeDB,
      _i2.NestedEnumDailyLinkTypeDBWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedEnumDailyLinkTypeDBFilter? $min;

  final _i2.NestedEnumDailyLinkTypeDBFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class DailyLinkDBScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DailyLinkDBScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.title,
    this.url,
    this.previewImageUrl,
    this.date,
    this.type,
  });

  final _i1.PrismaUnion<_i2.DailyLinkDBScalarWhereWithAggregatesInput,
      Iterable<_i2.DailyLinkDBScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.DailyLinkDBScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.DailyLinkDBScalarWhereWithAggregatesInput,
      Iterable<_i2.DailyLinkDBScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? title;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? url;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? previewImageUrl;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? date;

  final _i1.PrismaUnion<_i2.EnumDailyLinkTypeDBWithAggregatesFilter,
      _i3.DailyLinkTypeDB>? type;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'title': title,
        'url': url,
        'previewImageUrl': previewImageUrl,
        'date': date,
        'type': type,
      };
}

class DailyLinkDBCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DailyLinkDBCountAggregateOutputTypeSelect({
    this.id,
    this.title,
    this.url,
    this.previewImageUrl,
    this.date,
    this.type,
    this.$all,
  });

  final bool? id;

  final bool? title;

  final bool? url;

  final bool? previewImageUrl;

  final bool? date;

  final bool? type;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'url': url,
        'previewImageUrl': previewImageUrl,
        'date': date,
        'type': type,
        '_all': $all,
      };
}

class DailyLinkDBGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DailyLinkDBGroupByOutputTypeCountArgs({this.select});

  final _i2.DailyLinkDBCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class DailyLinkDBMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DailyLinkDBMinAggregateOutputTypeSelect({
    this.id,
    this.title,
    this.url,
    this.previewImageUrl,
    this.date,
    this.type,
  });

  final bool? id;

  final bool? title;

  final bool? url;

  final bool? previewImageUrl;

  final bool? date;

  final bool? type;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'url': url,
        'previewImageUrl': previewImageUrl,
        'date': date,
        'type': type,
      };
}

class DailyLinkDBGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DailyLinkDBGroupByOutputTypeMinArgs({this.select});

  final _i2.DailyLinkDBMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class DailyLinkDBMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DailyLinkDBMaxAggregateOutputTypeSelect({
    this.id,
    this.title,
    this.url,
    this.previewImageUrl,
    this.date,
    this.type,
  });

  final bool? id;

  final bool? title;

  final bool? url;

  final bool? previewImageUrl;

  final bool? date;

  final bool? type;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'url': url,
        'previewImageUrl': previewImageUrl,
        'date': date,
        'type': type,
      };
}

class DailyLinkDBGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DailyLinkDBGroupByOutputTypeMaxArgs({this.select});

  final _i2.DailyLinkDBMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class DailyLinkDBGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DailyLinkDBGroupByOutputTypeSelect({
    this.id,
    this.title,
    this.url,
    this.previewImageUrl,
    this.date,
    this.type,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? title;

  final bool? url;

  final bool? previewImageUrl;

  final bool? date;

  final bool? type;

  final _i1.PrismaUnion<bool, _i2.DailyLinkDBGroupByOutputTypeCountArgs>?
      $count;

  final _i1.PrismaUnion<bool, _i2.DailyLinkDBGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.DailyLinkDBGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'url': url,
        'previewImageUrl': previewImageUrl,
        'date': date,
        'type': type,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateDailyLinkDB {
  const AggregateDailyLinkDB({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateDailyLinkDB.fromJson(Map json) => AggregateDailyLinkDB(
        $count: json['_count'] is Map
            ? _i2.DailyLinkDBCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.DailyLinkDBMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.DailyLinkDBMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.DailyLinkDBCountAggregateOutputType? $count;

  final _i2.DailyLinkDBMinAggregateOutputType? $min;

  final _i2.DailyLinkDBMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateDailyLinkDBCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateDailyLinkDBCountArgs({this.select});

  final _i2.DailyLinkDBCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateDailyLinkDBMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateDailyLinkDBMinArgs({this.select});

  final _i2.DailyLinkDBMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateDailyLinkDBMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateDailyLinkDBMaxArgs({this.select});

  final _i2.DailyLinkDBMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateDailyLinkDBSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateDailyLinkDBSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateDailyLinkDBCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateDailyLinkDBMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateDailyLinkDBMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

enum BrandingProjectDBScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'BrandingProjectDB'),
  name$<String>('name', 'BrandingProjectDB'),
  description<String>('description', 'BrandingProjectDB'),
  createdAt<DateTime>('createdAt', 'BrandingProjectDB'),
  updatedAt<DateTime>('updatedAt', 'BrandingProjectDB');

  const BrandingProjectDBScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class BrandingProjectDBCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBCreateInput({
    this.id,
    required this.name,
    required this.description,
    this.createdAt,
    this.updatedAt,
    this.children,
    this.categories,
  });

  final String? id;

  final String name;

  final String description;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.BrandingPostDBCreateNestedManyWithoutParentInput? children;

  final _i2.ProjectCategoryDBCreateNestedManyWithoutBrandingProjectDBInput?
      categories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'children': children,
        'categories': categories,
      };
}

class BrandingProjectDBUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBUncheckedCreateInput({
    this.id,
    required this.name,
    required this.description,
    this.createdAt,
    this.updatedAt,
    this.children,
    this.categories,
  });

  final String? id;

  final String name;

  final String description;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.BrandingPostDBUncheckedCreateNestedManyWithoutParentInput? children;

  final _i2
      .ProjectCategoryDBUncheckedCreateNestedManyWithoutBrandingProjectDBInput?
      categories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'children': children,
        'categories': categories,
      };
}

class BrandingProjectDBCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBCreateManyInput({
    this.id,
    required this.name,
    required this.description,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String name;

  final String description;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CreateManyBrandingProjectDBAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyBrandingProjectDBAndReturnOutputTypeSelect({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? name;

  final bool? description;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class BrandingProjectDBUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBUpdateInput({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.children,
    this.categories,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.BrandingPostDBUpdateManyWithoutParentNestedInput? children;

  final _i2.ProjectCategoryDBUpdateManyWithoutBrandingProjectDBNestedInput?
      categories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'children': children,
        'categories': categories,
      };
}

class BrandingProjectDBUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBUncheckedUpdateInput({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.children,
    this.categories,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.BrandingPostDBUncheckedUpdateManyWithoutParentNestedInput? children;

  final _i2
      .ProjectCategoryDBUncheckedUpdateManyWithoutBrandingProjectDBNestedInput?
      categories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'children': children,
        'categories': categories,
      };
}

class BrandingProjectDBUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBUpdateManyMutationInput({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class BrandingProjectDBUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBUncheckedUpdateManyInput({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class BrandingProjectDBCountAggregateOutputType {
  const BrandingProjectDBCountAggregateOutputType({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  factory BrandingProjectDBCountAggregateOutputType.fromJson(Map json) =>
      BrandingProjectDBCountAggregateOutputType(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        $all: json['_all'],
      );

  final int? id;

  final int? name;

  final int? description;

  final int? createdAt;

  final int? updatedAt;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_all': $all,
      };
}

class BrandingProjectDBMinAggregateOutputType {
  const BrandingProjectDBMinAggregateOutputType({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  factory BrandingProjectDBMinAggregateOutputType.fromJson(Map json) =>
      BrandingProjectDBMinAggregateOutputType(
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

class BrandingProjectDBMaxAggregateOutputType {
  const BrandingProjectDBMaxAggregateOutputType({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  factory BrandingProjectDBMaxAggregateOutputType.fromJson(Map json) =>
      BrandingProjectDBMaxAggregateOutputType(
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

class BrandingProjectDBGroupByOutputType {
  const BrandingProjectDBGroupByOutputType({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$min,
    this.$max,
  });

  factory BrandingProjectDBGroupByOutputType.fromJson(Map json) =>
      BrandingProjectDBGroupByOutputType(
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
        $count: json['_count'] is Map
            ? _i2.BrandingProjectDBCountAggregateOutputType.fromJson(
                json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.BrandingProjectDBMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.BrandingProjectDBMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? name;

  final String? description;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.BrandingProjectDBCountAggregateOutputType? $count;

  final _i2.BrandingProjectDBMinAggregateOutputType? $min;

  final _i2.BrandingProjectDBMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class BrandingProjectDBCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBCountOrderByAggregateInput({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? description;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class BrandingProjectDBMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBMaxOrderByAggregateInput({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? description;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class BrandingProjectDBMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBMinOrderByAggregateInput({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? description;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class BrandingProjectDBOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBOrderByWithAggregationInput({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? description;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.BrandingProjectDBCountOrderByAggregateInput? $count;

  final _i2.BrandingProjectDBMaxOrderByAggregateInput? $max;

  final _i2.BrandingProjectDBMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class BrandingProjectDBScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.BrandingProjectDBScalarWhereWithAggregatesInput,
      Iterable<_i2.BrandingProjectDBScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.BrandingProjectDBScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.BrandingProjectDBScalarWhereWithAggregatesInput,
      Iterable<_i2.BrandingProjectDBScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? description;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class BrandingProjectDBCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBCountAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  final bool? id;

  final bool? name;

  final bool? description;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_all': $all,
      };
}

class BrandingProjectDBGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBGroupByOutputTypeCountArgs({this.select});

  final _i2.BrandingProjectDBCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class BrandingProjectDBMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBMinAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? name;

  final bool? description;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class BrandingProjectDBGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBGroupByOutputTypeMinArgs({this.select});

  final _i2.BrandingProjectDBMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class BrandingProjectDBMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBMaxAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? name;

  final bool? description;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class BrandingProjectDBGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBGroupByOutputTypeMaxArgs({this.select});

  final _i2.BrandingProjectDBMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class BrandingProjectDBGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingProjectDBGroupByOutputTypeSelect({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? name;

  final bool? description;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.BrandingProjectDBGroupByOutputTypeCountArgs>?
      $count;

  final _i1.PrismaUnion<bool, _i2.BrandingProjectDBGroupByOutputTypeMinArgs>?
      $min;

  final _i1.PrismaUnion<bool, _i2.BrandingProjectDBGroupByOutputTypeMaxArgs>?
      $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateBrandingProjectDB {
  const AggregateBrandingProjectDB({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateBrandingProjectDB.fromJson(Map json) =>
      AggregateBrandingProjectDB(
        $count: json['_count'] is Map
            ? _i2.BrandingProjectDBCountAggregateOutputType.fromJson(
                json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.BrandingProjectDBMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.BrandingProjectDBMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.BrandingProjectDBCountAggregateOutputType? $count;

  final _i2.BrandingProjectDBMinAggregateOutputType? $min;

  final _i2.BrandingProjectDBMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateBrandingProjectDBCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateBrandingProjectDBCountArgs({this.select});

  final _i2.BrandingProjectDBCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateBrandingProjectDBMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateBrandingProjectDBMinArgs({this.select});

  final _i2.BrandingProjectDBMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateBrandingProjectDBMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateBrandingProjectDBMaxArgs({this.select});

  final _i2.BrandingProjectDBMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateBrandingProjectDBSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateBrandingProjectDBSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateBrandingProjectDBCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateBrandingProjectDBMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateBrandingProjectDBMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class BrandingPostDBCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBCreateInput({
    this.id,
    required this.name,
    required this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    required this.sortOrder,
    required this.parent,
    this.categories,
  });

  final String? id;

  final String name;

  final String description;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final int sortOrder;

  final _i2.BrandingProjectDBCreateNestedOneWithoutChildrenInput parent;

  final _i2.PostCategoryDBCreateNestedManyWithoutBrandingPostDBInput?
      categories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
        'parent': parent,
        'categories': categories,
      };
}

class BrandingPostDBUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBUncheckedCreateInput({
    this.id,
    required this.parentId,
    required this.name,
    required this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    required this.sortOrder,
    this.categories,
  });

  final String? id;

  final String parentId;

  final String name;

  final String description;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final int sortOrder;

  final _i2.PostCategoryDBUncheckedCreateNestedManyWithoutBrandingPostDBInput?
      categories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parentId': parentId,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
        'categories': categories,
      };
}

class BrandingPostDBCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBCreateManyInput({
    this.id,
    required this.parentId,
    required this.name,
    required this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    required this.sortOrder,
  });

  final String? id;

  final String parentId;

  final String name;

  final String description;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final int sortOrder;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parentId': parentId,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
      };
}

class CreateManyBrandingPostDBAndReturnOutputTypeParentArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyBrandingPostDBAndReturnOutputTypeParentArgs({
    this.select,
    this.include,
  });

  final _i2.BrandingProjectDBSelect? select;

  final _i2.BrandingProjectDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyBrandingPostDBAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyBrandingPostDBAndReturnOutputTypeSelect({
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

  final bool? id;

  final bool? parentId;

  final bool? name;

  final bool? description;

  final bool? imageUrl;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? sortOrder;

  final _i1.PrismaUnion<bool,
      _i2.CreateManyBrandingPostDBAndReturnOutputTypeParentArgs>? parent;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parentId': parentId,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
        'parent': parent,
      };
}

class CreateManyBrandingPostDBAndReturnOutputTypeInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyBrandingPostDBAndReturnOutputTypeInclude({this.parent});

  final _i1.PrismaUnion<bool,
      _i2.CreateManyBrandingPostDBAndReturnOutputTypeParentArgs>? parent;

  @override
  Map<String, dynamic> toJson() => {'parent': parent};
}

class BrandingPostDBUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBUpdateInput({
    this.id,
    this.name,
    this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.sortOrder,
    this.parent,
    this.categories,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      description;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? sortOrder;

  final _i2.BrandingProjectDBUpdateOneRequiredWithoutChildrenNestedInput?
      parent;

  final _i2.PostCategoryDBUpdateManyWithoutBrandingPostDBNestedInput?
      categories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
        'parent': parent,
        'categories': categories,
      };
}

class BrandingPostDBUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBUncheckedUpdateInput({
    this.id,
    this.parentId,
    this.name,
    this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.sortOrder,
    this.categories,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? parentId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      description;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? sortOrder;

  final _i2.PostCategoryDBUncheckedUpdateManyWithoutBrandingPostDBNestedInput?
      categories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parentId': parentId,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
        'categories': categories,
      };
}

class BrandingPostDBUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBUncheckedUpdateManyInput({
    this.id,
    this.parentId,
    this.name,
    this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.sortOrder,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? parentId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      description;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? sortOrder;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parentId': parentId,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
      };
}

class BrandingPostDBCountAggregateOutputType {
  const BrandingPostDBCountAggregateOutputType({
    this.id,
    this.parentId,
    this.name,
    this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.sortOrder,
    this.$all,
  });

  factory BrandingPostDBCountAggregateOutputType.fromJson(Map json) =>
      BrandingPostDBCountAggregateOutputType(
        id: json['id'],
        parentId: json['parentId'],
        name: json['name'],
        description: json['description'],
        imageUrl: json['imageUrl'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        sortOrder: json['sortOrder'],
        $all: json['_all'],
      );

  final int? id;

  final int? parentId;

  final int? name;

  final int? description;

  final int? imageUrl;

  final int? createdAt;

  final int? updatedAt;

  final int? sortOrder;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'parentId': parentId,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
        '_all': $all,
      };
}

class BrandingPostDBAvgAggregateOutputType {
  const BrandingPostDBAvgAggregateOutputType({this.sortOrder});

  factory BrandingPostDBAvgAggregateOutputType.fromJson(Map json) =>
      BrandingPostDBAvgAggregateOutputType(sortOrder: json['sortOrder']);

  final double? sortOrder;

  Map<String, dynamic> toJson() => {'sortOrder': sortOrder};
}

class BrandingPostDBSumAggregateOutputType {
  const BrandingPostDBSumAggregateOutputType({this.sortOrder});

  factory BrandingPostDBSumAggregateOutputType.fromJson(Map json) =>
      BrandingPostDBSumAggregateOutputType(sortOrder: json['sortOrder']);

  final int? sortOrder;

  Map<String, dynamic> toJson() => {'sortOrder': sortOrder};
}

class BrandingPostDBMinAggregateOutputType {
  const BrandingPostDBMinAggregateOutputType({
    this.id,
    this.parentId,
    this.name,
    this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.sortOrder,
  });

  factory BrandingPostDBMinAggregateOutputType.fromJson(Map json) =>
      BrandingPostDBMinAggregateOutputType(
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
      );

  final String? id;

  final String? parentId;

  final String? name;

  final String? description;

  final String? imageUrl;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final int? sortOrder;

  Map<String, dynamic> toJson() => {
        'id': id,
        'parentId': parentId,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'sortOrder': sortOrder,
      };
}

class BrandingPostDBMaxAggregateOutputType {
  const BrandingPostDBMaxAggregateOutputType({
    this.id,
    this.parentId,
    this.name,
    this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.sortOrder,
  });

  factory BrandingPostDBMaxAggregateOutputType.fromJson(Map json) =>
      BrandingPostDBMaxAggregateOutputType(
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
      );

  final String? id;

  final String? parentId;

  final String? name;

  final String? description;

  final String? imageUrl;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final int? sortOrder;

  Map<String, dynamic> toJson() => {
        'id': id,
        'parentId': parentId,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'sortOrder': sortOrder,
      };
}

class BrandingPostDBGroupByOutputType {
  const BrandingPostDBGroupByOutputType({
    this.id,
    this.parentId,
    this.name,
    this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.sortOrder,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory BrandingPostDBGroupByOutputType.fromJson(Map json) =>
      BrandingPostDBGroupByOutputType(
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
        $count: json['_count'] is Map
            ? _i2.BrandingPostDBCountAggregateOutputType.fromJson(
                json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.BrandingPostDBAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.BrandingPostDBSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.BrandingPostDBMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.BrandingPostDBMaxAggregateOutputType.fromJson(json['_max'])
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

  final _i2.BrandingPostDBCountAggregateOutputType? $count;

  final _i2.BrandingPostDBAvgAggregateOutputType? $avg;

  final _i2.BrandingPostDBSumAggregateOutputType? $sum;

  final _i2.BrandingPostDBMinAggregateOutputType? $min;

  final _i2.BrandingPostDBMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'parentId': parentId,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'sortOrder': sortOrder,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class BrandingPostDBCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBCountOrderByAggregateInput({
    this.id,
    this.parentId,
    this.name,
    this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.sortOrder,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? parentId;

  final _i2.SortOrder? name;

  final _i2.SortOrder? description;

  final _i2.SortOrder? imageUrl;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? sortOrder;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parentId': parentId,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
      };
}

class BrandingPostDBAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBAvgOrderByAggregateInput({this.sortOrder});

  final _i2.SortOrder? sortOrder;

  @override
  Map<String, dynamic> toJson() => {'sortOrder': sortOrder};
}

class BrandingPostDBMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBMaxOrderByAggregateInput({
    this.id,
    this.parentId,
    this.name,
    this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.sortOrder,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? parentId;

  final _i2.SortOrder? name;

  final _i2.SortOrder? description;

  final _i2.SortOrder? imageUrl;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? sortOrder;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parentId': parentId,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
      };
}

class BrandingPostDBMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBMinOrderByAggregateInput({
    this.id,
    this.parentId,
    this.name,
    this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.sortOrder,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? parentId;

  final _i2.SortOrder? name;

  final _i2.SortOrder? description;

  final _i2.SortOrder? imageUrl;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? sortOrder;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parentId': parentId,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
      };
}

class BrandingPostDBSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBSumOrderByAggregateInput({this.sortOrder});

  final _i2.SortOrder? sortOrder;

  @override
  Map<String, dynamic> toJson() => {'sortOrder': sortOrder};
}

class BrandingPostDBOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBOrderByWithAggregationInput({
    this.id,
    this.parentId,
    this.name,
    this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.sortOrder,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? parentId;

  final _i2.SortOrder? name;

  final _i2.SortOrder? description;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? imageUrl;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? sortOrder;

  final _i2.BrandingPostDBCountOrderByAggregateInput? $count;

  final _i2.BrandingPostDBAvgOrderByAggregateInput? $avg;

  final _i2.BrandingPostDBMaxOrderByAggregateInput? $max;

  final _i2.BrandingPostDBMinOrderByAggregateInput? $min;

  final _i2.BrandingPostDBSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parentId': parentId,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class NestedFloatFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedFloatFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<double, _i1.Reference<double>>? equals;

  final _i1.PrismaUnion<Iterable<double>, _i1.Reference<Iterable<double>>>? $in;

  final _i1.PrismaUnion<Iterable<double>, _i1.Reference<Iterable<double>>>?
      notIn;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lte;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gte;

  final _i1.PrismaUnion<double, _i2.NestedFloatFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedIntWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedFloatFilter? $avg;

  final _i2.NestedIntFilter? $sum;

  final _i2.NestedIntFilter? $min;

  final _i2.NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class IntWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedFloatFilter? $avg;

  final _i2.NestedIntFilter? $sum;

  final _i2.NestedIntFilter? $min;

  final _i2.NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class BrandingPostDBScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.parentId,
    this.name,
    this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.sortOrder,
  });

  final _i1.PrismaUnion<_i2.BrandingPostDBScalarWhereWithAggregatesInput,
      Iterable<_i2.BrandingPostDBScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.BrandingPostDBScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.BrandingPostDBScalarWhereWithAggregatesInput,
      Iterable<_i2.BrandingPostDBScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? parentId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? description;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? sortOrder;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'parentId': parentId,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
      };
}

class BrandingPostDBCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBCountAggregateOutputTypeSelect({
    this.id,
    this.parentId,
    this.name,
    this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.sortOrder,
    this.$all,
  });

  final bool? id;

  final bool? parentId;

  final bool? name;

  final bool? description;

  final bool? imageUrl;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? sortOrder;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parentId': parentId,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
        '_all': $all,
      };
}

class BrandingPostDBGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBGroupByOutputTypeCountArgs({this.select});

  final _i2.BrandingPostDBCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class BrandingPostDBAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBAvgAggregateOutputTypeSelect({this.sortOrder});

  final bool? sortOrder;

  @override
  Map<String, dynamic> toJson() => {'sortOrder': sortOrder};
}

class BrandingPostDBGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBGroupByOutputTypeAvgArgs({this.select});

  final _i2.BrandingPostDBAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class BrandingPostDBSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBSumAggregateOutputTypeSelect({this.sortOrder});

  final bool? sortOrder;

  @override
  Map<String, dynamic> toJson() => {'sortOrder': sortOrder};
}

class BrandingPostDBGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBGroupByOutputTypeSumArgs({this.select});

  final _i2.BrandingPostDBSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class BrandingPostDBMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBMinAggregateOutputTypeSelect({
    this.id,
    this.parentId,
    this.name,
    this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.sortOrder,
  });

  final bool? id;

  final bool? parentId;

  final bool? name;

  final bool? description;

  final bool? imageUrl;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? sortOrder;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parentId': parentId,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
      };
}

class BrandingPostDBGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBGroupByOutputTypeMinArgs({this.select});

  final _i2.BrandingPostDBMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class BrandingPostDBMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBMaxAggregateOutputTypeSelect({
    this.id,
    this.parentId,
    this.name,
    this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.sortOrder,
  });

  final bool? id;

  final bool? parentId;

  final bool? name;

  final bool? description;

  final bool? imageUrl;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? sortOrder;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parentId': parentId,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
      };
}

class BrandingPostDBGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBGroupByOutputTypeMaxArgs({this.select});

  final _i2.BrandingPostDBMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class BrandingPostDBGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BrandingPostDBGroupByOutputTypeSelect({
    this.id,
    this.parentId,
    this.name,
    this.description,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.sortOrder,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? parentId;

  final bool? name;

  final bool? description;

  final bool? imageUrl;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? sortOrder;

  final _i1.PrismaUnion<bool, _i2.BrandingPostDBGroupByOutputTypeCountArgs>?
      $count;

  final _i1.PrismaUnion<bool, _i2.BrandingPostDBGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.BrandingPostDBGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.BrandingPostDBGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.BrandingPostDBGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parentId': parentId,
        'name': name,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'sortOrder': sortOrder,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateBrandingPostDB {
  const AggregateBrandingPostDB({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateBrandingPostDB.fromJson(Map json) => AggregateBrandingPostDB(
        $count: json['_count'] is Map
            ? _i2.BrandingPostDBCountAggregateOutputType.fromJson(
                json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.BrandingPostDBAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.BrandingPostDBSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.BrandingPostDBMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.BrandingPostDBMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.BrandingPostDBCountAggregateOutputType? $count;

  final _i2.BrandingPostDBAvgAggregateOutputType? $avg;

  final _i2.BrandingPostDBSumAggregateOutputType? $sum;

  final _i2.BrandingPostDBMinAggregateOutputType? $min;

  final _i2.BrandingPostDBMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateBrandingPostDBCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateBrandingPostDBCountArgs({this.select});

  final _i2.BrandingPostDBCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateBrandingPostDBAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateBrandingPostDBAvgArgs({this.select});

  final _i2.BrandingPostDBAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateBrandingPostDBSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateBrandingPostDBSumArgs({this.select});

  final _i2.BrandingPostDBSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateBrandingPostDBMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateBrandingPostDBMinArgs({this.select});

  final _i2.BrandingPostDBMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateBrandingPostDBMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateBrandingPostDBMaxArgs({this.select});

  final _i2.BrandingPostDBMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateBrandingPostDBSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateBrandingPostDBSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateBrandingPostDBCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateBrandingPostDBAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateBrandingPostDBSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateBrandingPostDBMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateBrandingPostDBMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class PostCategoryDBCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBCreateInput({
    required this.brandingPostDB,
    required this.categoryDB,
  });

  final _i2.BrandingPostDBCreateNestedOneWithoutCategoriesInput brandingPostDB;

  final _i2.CategoryDBCreateNestedOneWithoutPostCategoryDbInput categoryDB;

  @override
  Map<String, dynamic> toJson() => {
        'BrandingPostDB': brandingPostDB,
        'CategoryDB': categoryDB,
      };
}

class PostCategoryDBUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBUncheckedCreateInput({
    required this.postId,
    required this.categoryId,
  });

  final String postId;

  final String categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'postId': postId,
        'categoryId': categoryId,
      };
}

class PostCategoryDBCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBCreateManyInput({
    required this.postId,
    required this.categoryId,
  });

  final String postId;

  final String categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'postId': postId,
        'categoryId': categoryId,
      };
}

class CreateManyPostCategoryDBAndReturnOutputTypeBrandingPostDBArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyPostCategoryDBAndReturnOutputTypeBrandingPostDBArgs({
    this.select,
    this.include,
  });

  final _i2.BrandingPostDBSelect? select;

  final _i2.BrandingPostDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyPostCategoryDBAndReturnOutputTypeCategoryDBArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyPostCategoryDBAndReturnOutputTypeCategoryDBArgs({
    this.select,
    this.include,
  });

  final _i2.CategoryDBSelect? select;

  final _i2.CategoryDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyPostCategoryDBAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyPostCategoryDBAndReturnOutputTypeSelect({
    this.postId,
    this.categoryId,
    this.brandingPostDB,
    this.categoryDB,
  });

  final bool? postId;

  final bool? categoryId;

  final _i1.PrismaUnion<bool,
          _i2.CreateManyPostCategoryDBAndReturnOutputTypeBrandingPostDBArgs>?
      brandingPostDB;

  final _i1.PrismaUnion<bool,
          _i2.CreateManyPostCategoryDBAndReturnOutputTypeCategoryDBArgs>?
      categoryDB;

  @override
  Map<String, dynamic> toJson() => {
        'postId': postId,
        'categoryId': categoryId,
        'BrandingPostDB': brandingPostDB,
        'CategoryDB': categoryDB,
      };
}

class CreateManyPostCategoryDBAndReturnOutputTypeInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyPostCategoryDBAndReturnOutputTypeInclude({
    this.brandingPostDB,
    this.categoryDB,
  });

  final _i1.PrismaUnion<bool,
          _i2.CreateManyPostCategoryDBAndReturnOutputTypeBrandingPostDBArgs>?
      brandingPostDB;

  final _i1.PrismaUnion<bool,
          _i2.CreateManyPostCategoryDBAndReturnOutputTypeCategoryDBArgs>?
      categoryDB;

  @override
  Map<String, dynamic> toJson() => {
        'BrandingPostDB': brandingPostDB,
        'CategoryDB': categoryDB,
      };
}

class PostCategoryDBUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBUpdateInput({
    this.brandingPostDB,
    this.categoryDB,
  });

  final _i2.BrandingPostDBUpdateOneRequiredWithoutCategoriesNestedInput?
      brandingPostDB;

  final _i2.CategoryDBUpdateOneRequiredWithoutPostCategoryDbNestedInput?
      categoryDB;

  @override
  Map<String, dynamic> toJson() => {
        'BrandingPostDB': brandingPostDB,
        'CategoryDB': categoryDB,
      };
}

class PostCategoryDBUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBUncheckedUpdateInput({
    this.postId,
    this.categoryId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? postId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'postId': postId,
        'categoryId': categoryId,
      };
}

class PostCategoryDBUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBUncheckedUpdateManyInput({
    this.postId,
    this.categoryId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? postId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'postId': postId,
        'categoryId': categoryId,
      };
}

class PostCategoryDBCountAggregateOutputType {
  const PostCategoryDBCountAggregateOutputType({
    this.postId,
    this.categoryId,
    this.$all,
  });

  factory PostCategoryDBCountAggregateOutputType.fromJson(Map json) =>
      PostCategoryDBCountAggregateOutputType(
        postId: json['postId'],
        categoryId: json['categoryId'],
        $all: json['_all'],
      );

  final int? postId;

  final int? categoryId;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'postId': postId,
        'categoryId': categoryId,
        '_all': $all,
      };
}

class PostCategoryDBMinAggregateOutputType {
  const PostCategoryDBMinAggregateOutputType({
    this.postId,
    this.categoryId,
  });

  factory PostCategoryDBMinAggregateOutputType.fromJson(Map json) =>
      PostCategoryDBMinAggregateOutputType(
        postId: json['postId'],
        categoryId: json['categoryId'],
      );

  final String? postId;

  final String? categoryId;

  Map<String, dynamic> toJson() => {
        'postId': postId,
        'categoryId': categoryId,
      };
}

class PostCategoryDBMaxAggregateOutputType {
  const PostCategoryDBMaxAggregateOutputType({
    this.postId,
    this.categoryId,
  });

  factory PostCategoryDBMaxAggregateOutputType.fromJson(Map json) =>
      PostCategoryDBMaxAggregateOutputType(
        postId: json['postId'],
        categoryId: json['categoryId'],
      );

  final String? postId;

  final String? categoryId;

  Map<String, dynamic> toJson() => {
        'postId': postId,
        'categoryId': categoryId,
      };
}

class PostCategoryDBGroupByOutputType {
  const PostCategoryDBGroupByOutputType({
    this.postId,
    this.categoryId,
    this.$count,
    this.$min,
    this.$max,
  });

  factory PostCategoryDBGroupByOutputType.fromJson(Map json) =>
      PostCategoryDBGroupByOutputType(
        postId: json['postId'],
        categoryId: json['categoryId'],
        $count: json['_count'] is Map
            ? _i2.PostCategoryDBCountAggregateOutputType.fromJson(
                json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.PostCategoryDBMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.PostCategoryDBMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? postId;

  final String? categoryId;

  final _i2.PostCategoryDBCountAggregateOutputType? $count;

  final _i2.PostCategoryDBMinAggregateOutputType? $min;

  final _i2.PostCategoryDBMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'postId': postId,
        'categoryId': categoryId,
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class PostCategoryDBCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBCountOrderByAggregateInput({
    this.postId,
    this.categoryId,
  });

  final _i2.SortOrder? postId;

  final _i2.SortOrder? categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'postId': postId,
        'categoryId': categoryId,
      };
}

class PostCategoryDBMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBMaxOrderByAggregateInput({
    this.postId,
    this.categoryId,
  });

  final _i2.SortOrder? postId;

  final _i2.SortOrder? categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'postId': postId,
        'categoryId': categoryId,
      };
}

class PostCategoryDBMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBMinOrderByAggregateInput({
    this.postId,
    this.categoryId,
  });

  final _i2.SortOrder? postId;

  final _i2.SortOrder? categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'postId': postId,
        'categoryId': categoryId,
      };
}

class PostCategoryDBOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBOrderByWithAggregationInput({
    this.postId,
    this.categoryId,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? postId;

  final _i2.SortOrder? categoryId;

  final _i2.PostCategoryDBCountOrderByAggregateInput? $count;

  final _i2.PostCategoryDBMaxOrderByAggregateInput? $max;

  final _i2.PostCategoryDBMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'postId': postId,
        'categoryId': categoryId,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class PostCategoryDBScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.postId,
    this.categoryId,
  });

  final _i1.PrismaUnion<_i2.PostCategoryDBScalarWhereWithAggregatesInput,
      Iterable<_i2.PostCategoryDBScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.PostCategoryDBScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.PostCategoryDBScalarWhereWithAggregatesInput,
      Iterable<_i2.PostCategoryDBScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? postId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'postId': postId,
        'categoryId': categoryId,
      };
}

class PostCategoryDBCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBCountAggregateOutputTypeSelect({
    this.postId,
    this.categoryId,
    this.$all,
  });

  final bool? postId;

  final bool? categoryId;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'postId': postId,
        'categoryId': categoryId,
        '_all': $all,
      };
}

class PostCategoryDBGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBGroupByOutputTypeCountArgs({this.select});

  final _i2.PostCategoryDBCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PostCategoryDBMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBMinAggregateOutputTypeSelect({
    this.postId,
    this.categoryId,
  });

  final bool? postId;

  final bool? categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'postId': postId,
        'categoryId': categoryId,
      };
}

class PostCategoryDBGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBGroupByOutputTypeMinArgs({this.select});

  final _i2.PostCategoryDBMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PostCategoryDBMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBMaxAggregateOutputTypeSelect({
    this.postId,
    this.categoryId,
  });

  final bool? postId;

  final bool? categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'postId': postId,
        'categoryId': categoryId,
      };
}

class PostCategoryDBGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBGroupByOutputTypeMaxArgs({this.select});

  final _i2.PostCategoryDBMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PostCategoryDBGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PostCategoryDBGroupByOutputTypeSelect({
    this.postId,
    this.categoryId,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? postId;

  final bool? categoryId;

  final _i1.PrismaUnion<bool, _i2.PostCategoryDBGroupByOutputTypeCountArgs>?
      $count;

  final _i1.PrismaUnion<bool, _i2.PostCategoryDBGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.PostCategoryDBGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'postId': postId,
        'categoryId': categoryId,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregatePostCategoryDB {
  const AggregatePostCategoryDB({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregatePostCategoryDB.fromJson(Map json) => AggregatePostCategoryDB(
        $count: json['_count'] is Map
            ? _i2.PostCategoryDBCountAggregateOutputType.fromJson(
                json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.PostCategoryDBMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.PostCategoryDBMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.PostCategoryDBCountAggregateOutputType? $count;

  final _i2.PostCategoryDBMinAggregateOutputType? $min;

  final _i2.PostCategoryDBMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregatePostCategoryDBCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePostCategoryDBCountArgs({this.select});

  final _i2.PostCategoryDBCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePostCategoryDBMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePostCategoryDBMinArgs({this.select});

  final _i2.PostCategoryDBMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePostCategoryDBMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePostCategoryDBMaxArgs({this.select});

  final _i2.PostCategoryDBMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePostCategoryDBSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePostCategoryDBSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregatePostCategoryDBCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregatePostCategoryDBMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregatePostCategoryDBMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class ProjectCategoryDBCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBCreateInput({
    required this.brandingProjectDB,
    required this.categoryDB,
  });

  final _i2.BrandingProjectDBCreateNestedOneWithoutCategoriesInput
      brandingProjectDB;

  final _i2.CategoryDBCreateNestedOneWithoutProjectCategoryDbInput categoryDB;

  @override
  Map<String, dynamic> toJson() => {
        'BrandingProjectDB': brandingProjectDB,
        'CategoryDB': categoryDB,
      };
}

class ProjectCategoryDBUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBUncheckedCreateInput({
    required this.projectId,
    required this.categoryId,
  });

  final String projectId;

  final String categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'categoryId': categoryId,
      };
}

class ProjectCategoryDBCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBCreateManyInput({
    required this.projectId,
    required this.categoryId,
  });

  final String projectId;

  final String categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'categoryId': categoryId,
      };
}

class CreateManyProjectCategoryDBAndReturnOutputTypeBrandingProjectDBArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyProjectCategoryDBAndReturnOutputTypeBrandingProjectDBArgs({
    this.select,
    this.include,
  });

  final _i2.BrandingProjectDBSelect? select;

  final _i2.BrandingProjectDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyProjectCategoryDBAndReturnOutputTypeCategoryDBArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyProjectCategoryDBAndReturnOutputTypeCategoryDBArgs({
    this.select,
    this.include,
  });

  final _i2.CategoryDBSelect? select;

  final _i2.CategoryDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyProjectCategoryDBAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyProjectCategoryDBAndReturnOutputTypeSelect({
    this.projectId,
    this.categoryId,
    this.brandingProjectDB,
    this.categoryDB,
  });

  final bool? projectId;

  final bool? categoryId;

  final _i1.PrismaUnion<
          bool,
          _i2
          .CreateManyProjectCategoryDBAndReturnOutputTypeBrandingProjectDBArgs>?
      brandingProjectDB;

  final _i1.PrismaUnion<bool,
          _i2.CreateManyProjectCategoryDBAndReturnOutputTypeCategoryDBArgs>?
      categoryDB;

  @override
  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'categoryId': categoryId,
        'BrandingProjectDB': brandingProjectDB,
        'CategoryDB': categoryDB,
      };
}

class CreateManyProjectCategoryDBAndReturnOutputTypeInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyProjectCategoryDBAndReturnOutputTypeInclude({
    this.brandingProjectDB,
    this.categoryDB,
  });

  final _i1.PrismaUnion<
          bool,
          _i2
          .CreateManyProjectCategoryDBAndReturnOutputTypeBrandingProjectDBArgs>?
      brandingProjectDB;

  final _i1.PrismaUnion<bool,
          _i2.CreateManyProjectCategoryDBAndReturnOutputTypeCategoryDBArgs>?
      categoryDB;

  @override
  Map<String, dynamic> toJson() => {
        'BrandingProjectDB': brandingProjectDB,
        'CategoryDB': categoryDB,
      };
}

class ProjectCategoryDBUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBUpdateInput({
    this.brandingProjectDB,
    this.categoryDB,
  });

  final _i2.BrandingProjectDBUpdateOneRequiredWithoutCategoriesNestedInput?
      brandingProjectDB;

  final _i2.CategoryDBUpdateOneRequiredWithoutProjectCategoryDbNestedInput?
      categoryDB;

  @override
  Map<String, dynamic> toJson() => {
        'BrandingProjectDB': brandingProjectDB,
        'CategoryDB': categoryDB,
      };
}

class ProjectCategoryDBUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBUncheckedUpdateInput({
    this.projectId,
    this.categoryId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      projectId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'categoryId': categoryId,
      };
}

class ProjectCategoryDBUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBUncheckedUpdateManyInput({
    this.projectId,
    this.categoryId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      projectId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'categoryId': categoryId,
      };
}

class ProjectCategoryDBCountAggregateOutputType {
  const ProjectCategoryDBCountAggregateOutputType({
    this.projectId,
    this.categoryId,
    this.$all,
  });

  factory ProjectCategoryDBCountAggregateOutputType.fromJson(Map json) =>
      ProjectCategoryDBCountAggregateOutputType(
        projectId: json['projectId'],
        categoryId: json['categoryId'],
        $all: json['_all'],
      );

  final int? projectId;

  final int? categoryId;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'categoryId': categoryId,
        '_all': $all,
      };
}

class ProjectCategoryDBMinAggregateOutputType {
  const ProjectCategoryDBMinAggregateOutputType({
    this.projectId,
    this.categoryId,
  });

  factory ProjectCategoryDBMinAggregateOutputType.fromJson(Map json) =>
      ProjectCategoryDBMinAggregateOutputType(
        projectId: json['projectId'],
        categoryId: json['categoryId'],
      );

  final String? projectId;

  final String? categoryId;

  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'categoryId': categoryId,
      };
}

class ProjectCategoryDBMaxAggregateOutputType {
  const ProjectCategoryDBMaxAggregateOutputType({
    this.projectId,
    this.categoryId,
  });

  factory ProjectCategoryDBMaxAggregateOutputType.fromJson(Map json) =>
      ProjectCategoryDBMaxAggregateOutputType(
        projectId: json['projectId'],
        categoryId: json['categoryId'],
      );

  final String? projectId;

  final String? categoryId;

  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'categoryId': categoryId,
      };
}

class ProjectCategoryDBGroupByOutputType {
  const ProjectCategoryDBGroupByOutputType({
    this.projectId,
    this.categoryId,
    this.$count,
    this.$min,
    this.$max,
  });

  factory ProjectCategoryDBGroupByOutputType.fromJson(Map json) =>
      ProjectCategoryDBGroupByOutputType(
        projectId: json['projectId'],
        categoryId: json['categoryId'],
        $count: json['_count'] is Map
            ? _i2.ProjectCategoryDBCountAggregateOutputType.fromJson(
                json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.ProjectCategoryDBMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.ProjectCategoryDBMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? projectId;

  final String? categoryId;

  final _i2.ProjectCategoryDBCountAggregateOutputType? $count;

  final _i2.ProjectCategoryDBMinAggregateOutputType? $min;

  final _i2.ProjectCategoryDBMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'categoryId': categoryId,
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class ProjectCategoryDBCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBCountOrderByAggregateInput({
    this.projectId,
    this.categoryId,
  });

  final _i2.SortOrder? projectId;

  final _i2.SortOrder? categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'categoryId': categoryId,
      };
}

class ProjectCategoryDBMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBMaxOrderByAggregateInput({
    this.projectId,
    this.categoryId,
  });

  final _i2.SortOrder? projectId;

  final _i2.SortOrder? categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'categoryId': categoryId,
      };
}

class ProjectCategoryDBMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBMinOrderByAggregateInput({
    this.projectId,
    this.categoryId,
  });

  final _i2.SortOrder? projectId;

  final _i2.SortOrder? categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'categoryId': categoryId,
      };
}

class ProjectCategoryDBOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBOrderByWithAggregationInput({
    this.projectId,
    this.categoryId,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? projectId;

  final _i2.SortOrder? categoryId;

  final _i2.ProjectCategoryDBCountOrderByAggregateInput? $count;

  final _i2.ProjectCategoryDBMaxOrderByAggregateInput? $max;

  final _i2.ProjectCategoryDBMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'categoryId': categoryId,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class ProjectCategoryDBScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.projectId,
    this.categoryId,
  });

  final _i1.PrismaUnion<_i2.ProjectCategoryDBScalarWhereWithAggregatesInput,
      Iterable<_i2.ProjectCategoryDBScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.ProjectCategoryDBScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.ProjectCategoryDBScalarWhereWithAggregatesInput,
      Iterable<_i2.ProjectCategoryDBScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? projectId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'projectId': projectId,
        'categoryId': categoryId,
      };
}

class ProjectCategoryDBCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBCountAggregateOutputTypeSelect({
    this.projectId,
    this.categoryId,
    this.$all,
  });

  final bool? projectId;

  final bool? categoryId;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'categoryId': categoryId,
        '_all': $all,
      };
}

class ProjectCategoryDBGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBGroupByOutputTypeCountArgs({this.select});

  final _i2.ProjectCategoryDBCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ProjectCategoryDBMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBMinAggregateOutputTypeSelect({
    this.projectId,
    this.categoryId,
  });

  final bool? projectId;

  final bool? categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'categoryId': categoryId,
      };
}

class ProjectCategoryDBGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBGroupByOutputTypeMinArgs({this.select});

  final _i2.ProjectCategoryDBMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ProjectCategoryDBMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBMaxAggregateOutputTypeSelect({
    this.projectId,
    this.categoryId,
  });

  final bool? projectId;

  final bool? categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'categoryId': categoryId,
      };
}

class ProjectCategoryDBGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBGroupByOutputTypeMaxArgs({this.select});

  final _i2.ProjectCategoryDBMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ProjectCategoryDBGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectCategoryDBGroupByOutputTypeSelect({
    this.projectId,
    this.categoryId,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? projectId;

  final bool? categoryId;

  final _i1.PrismaUnion<bool, _i2.ProjectCategoryDBGroupByOutputTypeCountArgs>?
      $count;

  final _i1.PrismaUnion<bool, _i2.ProjectCategoryDBGroupByOutputTypeMinArgs>?
      $min;

  final _i1.PrismaUnion<bool, _i2.ProjectCategoryDBGroupByOutputTypeMaxArgs>?
      $max;

  @override
  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'categoryId': categoryId,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateProjectCategoryDB {
  const AggregateProjectCategoryDB({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateProjectCategoryDB.fromJson(Map json) =>
      AggregateProjectCategoryDB(
        $count: json['_count'] is Map
            ? _i2.ProjectCategoryDBCountAggregateOutputType.fromJson(
                json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.ProjectCategoryDBMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.ProjectCategoryDBMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.ProjectCategoryDBCountAggregateOutputType? $count;

  final _i2.ProjectCategoryDBMinAggregateOutputType? $min;

  final _i2.ProjectCategoryDBMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateProjectCategoryDBCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProjectCategoryDBCountArgs({this.select});

  final _i2.ProjectCategoryDBCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateProjectCategoryDBMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProjectCategoryDBMinArgs({this.select});

  final _i2.ProjectCategoryDBMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateProjectCategoryDBMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProjectCategoryDBMaxArgs({this.select});

  final _i2.ProjectCategoryDBMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateProjectCategoryDBSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProjectCategoryDBSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateProjectCategoryDBCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateProjectCategoryDBMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateProjectCategoryDBMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}
