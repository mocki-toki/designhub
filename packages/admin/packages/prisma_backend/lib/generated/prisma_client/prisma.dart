// ignore_for_file: non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/orm.dart' as _i1;

import 'model.dart' as _i3;
import 'prisma.dart' as _i2;

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

class EnumPermissionsDBNullableListFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EnumPermissionsDBNullableListFilter({
    this.equals,
    this.has,
    this.hasEvery,
    this.hasSome,
    this.isEmpty,
  });

  final _i1.PrismaUnion<
      Iterable<_i3.PermissionsDB>,
      _i1.PrismaUnion<_i1.Reference<Iterable<_i3.PermissionsDB>>,
          _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<_i3.PermissionsDB,
      _i1.PrismaUnion<_i1.Reference<_i3.PermissionsDB>, _i1.PrismaNull>>? has;

  final _i1.PrismaUnion<Iterable<_i3.PermissionsDB>,
      _i1.Reference<Iterable<_i3.PermissionsDB>>>? hasEvery;

  final _i1.PrismaUnion<Iterable<_i3.PermissionsDB>,
      _i1.Reference<Iterable<_i3.PermissionsDB>>>? hasSome;

  final bool? isEmpty;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'has': has,
        'hasEvery': hasEvery,
        'hasSome': hasSome,
        'isEmpty': isEmpty,
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

class AdminAccountDBRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.AdminAccountDBWhereInput? $is;

  final _i2.AdminAccountDBWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class AdminProfileDBWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.accountId,
    this.name,
    this.createdAt,
    this.updatedAt,
    this.account,
  });

  final _i1.PrismaUnion<_i2.AdminProfileDBWhereInput,
      Iterable<_i2.AdminProfileDBWhereInput>>? AND;

  final Iterable<_i2.AdminProfileDBWhereInput>? OR;

  final _i1.PrismaUnion<_i2.AdminProfileDBWhereInput,
      Iterable<_i2.AdminProfileDBWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? accountId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.AdminAccountDBRelationFilter,
      _i2.AdminAccountDBWhereInput>? account;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'accountId': accountId,
        'name': name,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'account': account,
      };
}

class AdminProfileDBNullableRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBNullableRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i1.PrismaUnion<_i2.AdminProfileDBWhereInput, _i1.PrismaNull>? $is;

  final _i1.PrismaUnion<_i2.AdminProfileDBWhereInput, _i1.PrismaNull>? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class AdminSessionDBWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.accountId,
    this.token,
    this.expires,
    this.createdAt,
    this.account,
  });

  final _i1.PrismaUnion<_i2.AdminSessionDBWhereInput,
      Iterable<_i2.AdminSessionDBWhereInput>>? AND;

  final Iterable<_i2.AdminSessionDBWhereInput>? OR;

  final _i1.PrismaUnion<_i2.AdminSessionDBWhereInput,
      Iterable<_i2.AdminSessionDBWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? accountId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? token;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? expires;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.AdminAccountDBRelationFilter,
      _i2.AdminAccountDBWhereInput>? account;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'accountId': accountId,
        'token': token,
        'expires': expires,
        'createdAt': createdAt,
        'account': account,
      };
}

class AdminSessionDBNullableRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBNullableRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i1.PrismaUnion<_i2.AdminSessionDBWhereInput, _i1.PrismaNull>? $is;

  final _i1.PrismaUnion<_i2.AdminSessionDBWhereInput, _i1.PrismaNull>? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class AdminAccountDBWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.email,
    this.totp,
    this.permissions,
    this.createdAt,
    this.updatedAt,
    this.adminProfileDB,
    this.adminSessionDB,
  });

  final _i1.PrismaUnion<_i2.AdminAccountDBWhereInput,
      Iterable<_i2.AdminAccountDBWhereInput>>? AND;

  final Iterable<_i2.AdminAccountDBWhereInput>? OR;

  final _i1.PrismaUnion<_i2.AdminAccountDBWhereInput,
      Iterable<_i2.AdminAccountDBWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringFilter, String>? totp;

  final _i2.EnumPermissionsDBNullableListFilter? permissions;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.AdminProfileDBNullableRelationFilter,
          _i1.PrismaUnion<_i2.AdminProfileDBWhereInput, _i1.PrismaNull>>?
      adminProfileDB;

  final _i1.PrismaUnion<_i2.AdminSessionDBNullableRelationFilter,
          _i1.PrismaUnion<_i2.AdminSessionDBWhereInput, _i1.PrismaNull>>?
      adminSessionDB;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'email': email,
        'totp': totp,
        'permissions': permissions,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'AdminProfileDB': adminProfileDB,
        'AdminSessionDB': adminSessionDB,
      };
}

class AdminAccountDBWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBWhereUniqueInput({
    this.id,
    this.email,
    this.totp,
    this.AND,
    this.OR,
    this.NOT,
    this.permissions,
    this.createdAt,
    this.updatedAt,
    this.adminProfileDB,
    this.adminSessionDB,
  });

  final String? id;

  final String? email;

  final String? totp;

  final _i1.PrismaUnion<_i2.AdminAccountDBWhereInput,
      Iterable<_i2.AdminAccountDBWhereInput>>? AND;

  final Iterable<_i2.AdminAccountDBWhereInput>? OR;

  final _i1.PrismaUnion<_i2.AdminAccountDBWhereInput,
      Iterable<_i2.AdminAccountDBWhereInput>>? NOT;

  final _i2.EnumPermissionsDBNullableListFilter? permissions;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.AdminProfileDBNullableRelationFilter,
          _i1.PrismaUnion<_i2.AdminProfileDBWhereInput, _i1.PrismaNull>>?
      adminProfileDB;

  final _i1.PrismaUnion<_i2.AdminSessionDBNullableRelationFilter,
          _i1.PrismaUnion<_i2.AdminSessionDBWhereInput, _i1.PrismaNull>>?
      adminSessionDB;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'permissions': permissions,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'AdminProfileDB': adminProfileDB,
        'AdminSessionDB': adminSessionDB,
      };
}

class AdminProfileDBAccountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBAccountArgs({
    this.select,
    this.include,
  });

  final _i2.AdminAccountDBSelect? select;

  final _i2.AdminAccountDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class AdminProfileDBInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBInclude({this.account});

  final _i1.PrismaUnion<bool, _i2.AdminProfileDBAccountArgs>? account;

  @override
  Map<String, dynamic> toJson() => {'account': account};
}

class AdminAccountDBAdminProfileDBArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBAdminProfileDBArgs({
    this.where,
    this.select,
    this.include,
  });

  final _i2.AdminProfileDBWhereInput? where;

  final _i2.AdminProfileDBSelect? select;

  final _i2.AdminProfileDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'select': select,
        'include': include,
      };
}

class AdminSessionDBAccountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBAccountArgs({
    this.select,
    this.include,
  });

  final _i2.AdminAccountDBSelect? select;

  final _i2.AdminAccountDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class AdminSessionDBSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBSelect({
    this.id,
    this.accountId,
    this.token,
    this.expires,
    this.createdAt,
    this.account,
  });

  final bool? id;

  final bool? accountId;

  final bool? token;

  final bool? expires;

  final bool? createdAt;

  final _i1.PrismaUnion<bool, _i2.AdminSessionDBAccountArgs>? account;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'token': token,
        'expires': expires,
        'createdAt': createdAt,
        'account': account,
      };
}

class AdminSessionDBInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBInclude({this.account});

  final _i1.PrismaUnion<bool, _i2.AdminSessionDBAccountArgs>? account;

  @override
  Map<String, dynamic> toJson() => {'account': account};
}

class AdminAccountDBAdminSessionDBArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBAdminSessionDBArgs({
    this.where,
    this.select,
    this.include,
  });

  final _i2.AdminSessionDBWhereInput? where;

  final _i2.AdminSessionDBSelect? select;

  final _i2.AdminSessionDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'select': select,
        'include': include,
      };
}

class AdminAccountDBInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBInclude({
    this.adminProfileDB,
    this.adminSessionDB,
  });

  final _i1.PrismaUnion<bool, _i2.AdminAccountDBAdminProfileDBArgs>?
      adminProfileDB;

  final _i1.PrismaUnion<bool, _i2.AdminAccountDBAdminSessionDBArgs>?
      adminSessionDB;

  @override
  Map<String, dynamic> toJson() => {
        'AdminProfileDB': adminProfileDB,
        'AdminSessionDB': adminSessionDB,
      };
}

class AdminProfileDBSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBSelect({
    this.id,
    this.accountId,
    this.name,
    this.createdAt,
    this.updatedAt,
    this.account,
  });

  final bool? id;

  final bool? accountId;

  final bool? name;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.AdminProfileDBAccountArgs>? account;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'name': name,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'account': account,
      };
}

class AdminAccountDBSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBSelect({
    this.id,
    this.email,
    this.totp,
    this.permissions,
    this.createdAt,
    this.updatedAt,
    this.adminProfileDB,
    this.adminSessionDB,
  });

  final bool? id;

  final bool? email;

  final bool? totp;

  final bool? permissions;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.AdminAccountDBAdminProfileDBArgs>?
      adminProfileDB;

  final _i1.PrismaUnion<bool, _i2.AdminAccountDBAdminSessionDBArgs>?
      adminSessionDB;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'permissions': permissions,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'AdminProfileDB': adminProfileDB,
        'AdminSessionDB': adminSessionDB,
      };
}

enum SortOrder implements _i1.PrismaEnum {
  asc._('asc'),
  desc._('desc');

  const SortOrder._(this.name);

  @override
  final String name;
}

class AdminProfileDBOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBOrderByWithRelationInput({
    this.id,
    this.accountId,
    this.name,
    this.createdAt,
    this.updatedAt,
    this.account,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? accountId;

  final _i2.SortOrder? name;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.AdminAccountDBOrderByWithRelationInput? account;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'name': name,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'account': account,
      };
}

class AdminSessionDBOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBOrderByWithRelationInput({
    this.id,
    this.accountId,
    this.token,
    this.expires,
    this.createdAt,
    this.account,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? accountId;

  final _i2.SortOrder? token;

  final _i2.SortOrder? expires;

  final _i2.SortOrder? createdAt;

  final _i2.AdminAccountDBOrderByWithRelationInput? account;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'token': token,
        'expires': expires,
        'createdAt': createdAt,
        'account': account,
      };
}

class AdminAccountDBOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBOrderByWithRelationInput({
    this.id,
    this.email,
    this.totp,
    this.permissions,
    this.createdAt,
    this.updatedAt,
    this.adminProfileDB,
    this.adminSessionDB,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? totp;

  final _i2.SortOrder? permissions;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.AdminProfileDBOrderByWithRelationInput? adminProfileDB;

  final _i2.AdminSessionDBOrderByWithRelationInput? adminSessionDB;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'permissions': permissions,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'AdminProfileDB': adminProfileDB,
        'AdminSessionDB': adminSessionDB,
      };
}

enum AdminAccountDBScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'AdminAccountDB'),
  email<String>('email', 'AdminAccountDB'),
  totp<String>('totp', 'AdminAccountDB'),
  permissions<Iterable<_i3.PermissionsDB>>('permissions', 'AdminAccountDB'),
  createdAt<DateTime>('createdAt', 'AdminAccountDB'),
  updatedAt<DateTime>('updatedAt', 'AdminAccountDB');

  const AdminAccountDBScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class AdminAccountDBCreatepermissionsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBCreatepermissionsInput({required this.set});

  final Iterable<_i3.PermissionsDB> set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class AdminProfileDBCreateWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBCreateWithoutAccountInput({
    this.id,
    required this.name,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String name;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class AdminProfileDBUncheckedCreateWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBUncheckedCreateWithoutAccountInput({
    this.id,
    required this.name,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String name;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class AdminProfileDBWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBWhereUniqueInput({
    this.id,
    this.accountId,
    this.name,
    this.AND,
    this.OR,
    this.NOT,
    this.createdAt,
    this.updatedAt,
    this.account,
  });

  final String? id;

  final String? accountId;

  final String? name;

  final _i1.PrismaUnion<_i2.AdminProfileDBWhereInput,
      Iterable<_i2.AdminProfileDBWhereInput>>? AND;

  final Iterable<_i2.AdminProfileDBWhereInput>? OR;

  final _i1.PrismaUnion<_i2.AdminProfileDBWhereInput,
      Iterable<_i2.AdminProfileDBWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.AdminAccountDBRelationFilter,
      _i2.AdminAccountDBWhereInput>? account;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'name': name,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'account': account,
      };
}

class AdminProfileDBCreateOrConnectWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBCreateOrConnectWithoutAccountInput({
    required this.where,
    required this.create,
  });

  final _i2.AdminProfileDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.AdminProfileDBCreateWithoutAccountInput,
      _i2.AdminProfileDBUncheckedCreateWithoutAccountInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class AdminProfileDBCreateNestedOneWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBCreateNestedOneWithoutAccountInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.AdminProfileDBCreateWithoutAccountInput,
      _i2.AdminProfileDBUncheckedCreateWithoutAccountInput>? create;

  final _i2.AdminProfileDBCreateOrConnectWithoutAccountInput? connectOrCreate;

  final _i2.AdminProfileDBWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class AdminSessionDBCreateWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBCreateWithoutAccountInput({
    this.id,
    required this.token,
    required this.expires,
    this.createdAt,
  });

  final String? id;

  final String token;

  final DateTime expires;

  final DateTime? createdAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'token': token,
        'expires': expires,
        'createdAt': createdAt,
      };
}

class AdminSessionDBUncheckedCreateWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBUncheckedCreateWithoutAccountInput({
    this.id,
    required this.token,
    required this.expires,
    this.createdAt,
  });

  final String? id;

  final String token;

  final DateTime expires;

  final DateTime? createdAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'token': token,
        'expires': expires,
        'createdAt': createdAt,
      };
}

class AdminSessionDBWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBWhereUniqueInput({
    this.id,
    this.accountId,
    this.token,
    this.AND,
    this.OR,
    this.NOT,
    this.expires,
    this.createdAt,
    this.account,
  });

  final String? id;

  final String? accountId;

  final String? token;

  final _i1.PrismaUnion<_i2.AdminSessionDBWhereInput,
      Iterable<_i2.AdminSessionDBWhereInput>>? AND;

  final Iterable<_i2.AdminSessionDBWhereInput>? OR;

  final _i1.PrismaUnion<_i2.AdminSessionDBWhereInput,
      Iterable<_i2.AdminSessionDBWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? expires;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.AdminAccountDBRelationFilter,
      _i2.AdminAccountDBWhereInput>? account;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'token': token,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'expires': expires,
        'createdAt': createdAt,
        'account': account,
      };
}

class AdminSessionDBCreateOrConnectWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBCreateOrConnectWithoutAccountInput({
    required this.where,
    required this.create,
  });

  final _i2.AdminSessionDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.AdminSessionDBCreateWithoutAccountInput,
      _i2.AdminSessionDBUncheckedCreateWithoutAccountInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class AdminSessionDBCreateNestedOneWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBCreateNestedOneWithoutAccountInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.AdminSessionDBCreateWithoutAccountInput,
      _i2.AdminSessionDBUncheckedCreateWithoutAccountInput>? create;

  final _i2.AdminSessionDBCreateOrConnectWithoutAccountInput? connectOrCreate;

  final _i2.AdminSessionDBWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class AdminAccountDBCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBCreateInput({
    this.id,
    required this.email,
    required this.totp,
    this.permissions,
    this.createdAt,
    this.updatedAt,
    this.adminProfileDB,
    this.adminSessionDB,
  });

  final String? id;

  final String email;

  final String totp;

  final _i1.PrismaUnion<_i2.AdminAccountDBCreatepermissionsInput,
      Iterable<_i3.PermissionsDB>>? permissions;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.AdminProfileDBCreateNestedOneWithoutAccountInput? adminProfileDB;

  final _i2.AdminSessionDBCreateNestedOneWithoutAccountInput? adminSessionDB;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'permissions': permissions,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'AdminProfileDB': adminProfileDB,
        'AdminSessionDB': adminSessionDB,
      };
}

class AdminProfileDBUncheckedCreateNestedOneWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBUncheckedCreateNestedOneWithoutAccountInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.AdminProfileDBCreateWithoutAccountInput,
      _i2.AdminProfileDBUncheckedCreateWithoutAccountInput>? create;

  final _i2.AdminProfileDBCreateOrConnectWithoutAccountInput? connectOrCreate;

  final _i2.AdminProfileDBWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class AdminSessionDBUncheckedCreateNestedOneWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBUncheckedCreateNestedOneWithoutAccountInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.AdminSessionDBCreateWithoutAccountInput,
      _i2.AdminSessionDBUncheckedCreateWithoutAccountInput>? create;

  final _i2.AdminSessionDBCreateOrConnectWithoutAccountInput? connectOrCreate;

  final _i2.AdminSessionDBWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class AdminAccountDBUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBUncheckedCreateInput({
    this.id,
    required this.email,
    required this.totp,
    this.permissions,
    this.createdAt,
    this.updatedAt,
    this.adminProfileDB,
    this.adminSessionDB,
  });

  final String? id;

  final String email;

  final String totp;

  final _i1.PrismaUnion<_i2.AdminAccountDBCreatepermissionsInput,
      Iterable<_i3.PermissionsDB>>? permissions;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.AdminProfileDBUncheckedCreateNestedOneWithoutAccountInput?
      adminProfileDB;

  final _i2.AdminSessionDBUncheckedCreateNestedOneWithoutAccountInput?
      adminSessionDB;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'permissions': permissions,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'AdminProfileDB': adminProfileDB,
        'AdminSessionDB': adminSessionDB,
      };
}

class AffectedRowsOutput {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map json) =>
      AffectedRowsOutput(count: json['count']);

  final int? count;

  Map<String, dynamic> toJson() => {'count': count};
}

class AdminAccountDBCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBCreateManyInput({
    this.id,
    required this.email,
    required this.totp,
    this.permissions,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String email;

  final String totp;

  final _i1.PrismaUnion<_i2.AdminAccountDBCreatepermissionsInput,
      Iterable<_i3.PermissionsDB>>? permissions;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'permissions': permissions,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CreateManyAdminAccountDBAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyAdminAccountDBAndReturnOutputTypeSelect({
    this.id,
    this.email,
    this.totp,
    this.permissions,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? email;

  final bool? totp;

  final bool? permissions;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'permissions': permissions,
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

class AdminAccountDBUpdatepermissionsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBUpdatepermissionsInput({
    this.set,
    this.push,
  });

  final Iterable<_i3.PermissionsDB>? set;

  final _i1.PrismaUnion<_i3.PermissionsDB, Iterable<_i3.PermissionsDB>>? push;

  @override
  Map<String, dynamic> toJson() => {
        'set': set,
        'push': push,
      };
}

class DateTimeFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeFieldUpdateOperationsInput({this.set});

  final DateTime? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class AdminProfileDBUpdateWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBUpdateWithoutAccountInput({
    this.id,
    this.name,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class AdminProfileDBUncheckedUpdateWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBUncheckedUpdateWithoutAccountInput({
    this.id,
    this.name,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class AdminProfileDBUpsertWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBUpsertWithoutAccountInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.AdminProfileDBUpdateWithoutAccountInput,
      _i2.AdminProfileDBUncheckedUpdateWithoutAccountInput> update;

  final _i1.PrismaUnion<_i2.AdminProfileDBCreateWithoutAccountInput,
      _i2.AdminProfileDBUncheckedCreateWithoutAccountInput> create;

  final _i2.AdminProfileDBWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class AdminProfileDBUpdateToOneWithWhereWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBUpdateToOneWithWhereWithoutAccountInput({
    this.where,
    required this.data,
  });

  final _i2.AdminProfileDBWhereInput? where;

  final _i1.PrismaUnion<_i2.AdminProfileDBUpdateWithoutAccountInput,
      _i2.AdminProfileDBUncheckedUpdateWithoutAccountInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class AdminProfileDBUpdateOneWithoutAccountNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBUpdateOneWithoutAccountNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.AdminProfileDBCreateWithoutAccountInput,
      _i2.AdminProfileDBUncheckedCreateWithoutAccountInput>? create;

  final _i2.AdminProfileDBCreateOrConnectWithoutAccountInput? connectOrCreate;

  final _i2.AdminProfileDBUpsertWithoutAccountInput? upsert;

  final _i1.PrismaUnion<bool, _i2.AdminProfileDBWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.AdminProfileDBWhereInput>? delete;

  final _i2.AdminProfileDBWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.AdminProfileDBUpdateToOneWithWhereWithoutAccountInput,
      _i1.PrismaUnion<_i2.AdminProfileDBUpdateWithoutAccountInput,
          _i2.AdminProfileDBUncheckedUpdateWithoutAccountInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class AdminSessionDBUpdateWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBUpdateWithoutAccountInput({
    this.id,
    this.token,
    this.expires,
    this.createdAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? token;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      expires;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'token': token,
        'expires': expires,
        'createdAt': createdAt,
      };
}

class AdminSessionDBUncheckedUpdateWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBUncheckedUpdateWithoutAccountInput({
    this.id,
    this.token,
    this.expires,
    this.createdAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? token;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      expires;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'token': token,
        'expires': expires,
        'createdAt': createdAt,
      };
}

class AdminSessionDBUpsertWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBUpsertWithoutAccountInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.AdminSessionDBUpdateWithoutAccountInput,
      _i2.AdminSessionDBUncheckedUpdateWithoutAccountInput> update;

  final _i1.PrismaUnion<_i2.AdminSessionDBCreateWithoutAccountInput,
      _i2.AdminSessionDBUncheckedCreateWithoutAccountInput> create;

  final _i2.AdminSessionDBWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class AdminSessionDBUpdateToOneWithWhereWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBUpdateToOneWithWhereWithoutAccountInput({
    this.where,
    required this.data,
  });

  final _i2.AdminSessionDBWhereInput? where;

  final _i1.PrismaUnion<_i2.AdminSessionDBUpdateWithoutAccountInput,
      _i2.AdminSessionDBUncheckedUpdateWithoutAccountInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class AdminSessionDBUpdateOneWithoutAccountNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBUpdateOneWithoutAccountNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.AdminSessionDBCreateWithoutAccountInput,
      _i2.AdminSessionDBUncheckedCreateWithoutAccountInput>? create;

  final _i2.AdminSessionDBCreateOrConnectWithoutAccountInput? connectOrCreate;

  final _i2.AdminSessionDBUpsertWithoutAccountInput? upsert;

  final _i1.PrismaUnion<bool, _i2.AdminSessionDBWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.AdminSessionDBWhereInput>? delete;

  final _i2.AdminSessionDBWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.AdminSessionDBUpdateToOneWithWhereWithoutAccountInput,
      _i1.PrismaUnion<_i2.AdminSessionDBUpdateWithoutAccountInput,
          _i2.AdminSessionDBUncheckedUpdateWithoutAccountInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class AdminAccountDBUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBUpdateInput({
    this.id,
    this.email,
    this.totp,
    this.permissions,
    this.createdAt,
    this.updatedAt,
    this.adminProfileDB,
    this.adminSessionDB,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? totp;

  final _i1.PrismaUnion<_i2.AdminAccountDBUpdatepermissionsInput,
      Iterable<_i3.PermissionsDB>>? permissions;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.AdminProfileDBUpdateOneWithoutAccountNestedInput? adminProfileDB;

  final _i2.AdminSessionDBUpdateOneWithoutAccountNestedInput? adminSessionDB;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'permissions': permissions,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'AdminProfileDB': adminProfileDB,
        'AdminSessionDB': adminSessionDB,
      };
}

class AdminProfileDBUncheckedUpdateOneWithoutAccountNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBUncheckedUpdateOneWithoutAccountNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.AdminProfileDBCreateWithoutAccountInput,
      _i2.AdminProfileDBUncheckedCreateWithoutAccountInput>? create;

  final _i2.AdminProfileDBCreateOrConnectWithoutAccountInput? connectOrCreate;

  final _i2.AdminProfileDBUpsertWithoutAccountInput? upsert;

  final _i1.PrismaUnion<bool, _i2.AdminProfileDBWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.AdminProfileDBWhereInput>? delete;

  final _i2.AdminProfileDBWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.AdminProfileDBUpdateToOneWithWhereWithoutAccountInput,
      _i1.PrismaUnion<_i2.AdminProfileDBUpdateWithoutAccountInput,
          _i2.AdminProfileDBUncheckedUpdateWithoutAccountInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class AdminSessionDBUncheckedUpdateOneWithoutAccountNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBUncheckedUpdateOneWithoutAccountNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.AdminSessionDBCreateWithoutAccountInput,
      _i2.AdminSessionDBUncheckedCreateWithoutAccountInput>? create;

  final _i2.AdminSessionDBCreateOrConnectWithoutAccountInput? connectOrCreate;

  final _i2.AdminSessionDBUpsertWithoutAccountInput? upsert;

  final _i1.PrismaUnion<bool, _i2.AdminSessionDBWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.AdminSessionDBWhereInput>? delete;

  final _i2.AdminSessionDBWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.AdminSessionDBUpdateToOneWithWhereWithoutAccountInput,
      _i1.PrismaUnion<_i2.AdminSessionDBUpdateWithoutAccountInput,
          _i2.AdminSessionDBUncheckedUpdateWithoutAccountInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class AdminAccountDBUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBUncheckedUpdateInput({
    this.id,
    this.email,
    this.totp,
    this.permissions,
    this.createdAt,
    this.updatedAt,
    this.adminProfileDB,
    this.adminSessionDB,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? totp;

  final _i1.PrismaUnion<_i2.AdminAccountDBUpdatepermissionsInput,
      Iterable<_i3.PermissionsDB>>? permissions;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.AdminProfileDBUncheckedUpdateOneWithoutAccountNestedInput?
      adminProfileDB;

  final _i2.AdminSessionDBUncheckedUpdateOneWithoutAccountNestedInput?
      adminSessionDB;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'permissions': permissions,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'AdminProfileDB': adminProfileDB,
        'AdminSessionDB': adminSessionDB,
      };
}

class AdminAccountDBUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBUpdateManyMutationInput({
    this.id,
    this.email,
    this.totp,
    this.permissions,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? totp;

  final _i1.PrismaUnion<_i2.AdminAccountDBUpdatepermissionsInput,
      Iterable<_i3.PermissionsDB>>? permissions;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'permissions': permissions,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class AdminAccountDBUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBUncheckedUpdateManyInput({
    this.id,
    this.email,
    this.totp,
    this.permissions,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? totp;

  final _i1.PrismaUnion<_i2.AdminAccountDBUpdatepermissionsInput,
      Iterable<_i3.PermissionsDB>>? permissions;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'permissions': permissions,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class AdminAccountDBCountAggregateOutputType {
  const AdminAccountDBCountAggregateOutputType({
    this.id,
    this.email,
    this.totp,
    this.permissions,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  factory AdminAccountDBCountAggregateOutputType.fromJson(Map json) =>
      AdminAccountDBCountAggregateOutputType(
        id: json['id'],
        email: json['email'],
        totp: json['totp'],
        permissions: json['permissions'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        $all: json['_all'],
      );

  final int? id;

  final int? email;

  final int? totp;

  final int? permissions;

  final int? createdAt;

  final int? updatedAt;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'permissions': permissions,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_all': $all,
      };
}

class AdminAccountDBMinAggregateOutputType {
  const AdminAccountDBMinAggregateOutputType({
    this.id,
    this.email,
    this.totp,
    this.createdAt,
    this.updatedAt,
  });

  factory AdminAccountDBMinAggregateOutputType.fromJson(Map json) =>
      AdminAccountDBMinAggregateOutputType(
        id: json['id'],
        email: json['email'],
        totp: json['totp'],
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

  final String? email;

  final String? totp;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
      };
}

class AdminAccountDBMaxAggregateOutputType {
  const AdminAccountDBMaxAggregateOutputType({
    this.id,
    this.email,
    this.totp,
    this.createdAt,
    this.updatedAt,
  });

  factory AdminAccountDBMaxAggregateOutputType.fromJson(Map json) =>
      AdminAccountDBMaxAggregateOutputType(
        id: json['id'],
        email: json['email'],
        totp: json['totp'],
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

  final String? email;

  final String? totp;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
      };
}

class AdminAccountDBGroupByOutputType {
  const AdminAccountDBGroupByOutputType({
    this.id,
    this.email,
    this.totp,
    this.permissions,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$min,
    this.$max,
  });

  factory AdminAccountDBGroupByOutputType.fromJson(Map json) =>
      AdminAccountDBGroupByOutputType(
        id: json['id'],
        email: json['email'],
        totp: json['totp'],
        permissions: json['permissions'] != null
            ? (json['permissions'] as Iterable).map((child) =>
                _i3.PermissionsDB.values.firstWhere((e) => e.name == child))
            : null,
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
            ? _i2.AdminAccountDBCountAggregateOutputType.fromJson(
                json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.AdminAccountDBMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.AdminAccountDBMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? email;

  final String? totp;

  final Iterable<_i3.PermissionsDB>? permissions;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.AdminAccountDBCountAggregateOutputType? $count;

  final _i2.AdminAccountDBMinAggregateOutputType? $min;

  final _i2.AdminAccountDBMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'permissions': permissions?.map((e) => e.name),
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AdminAccountDBCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBCountOrderByAggregateInput({
    this.id,
    this.email,
    this.totp,
    this.permissions,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? totp;

  final _i2.SortOrder? permissions;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'permissions': permissions,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class AdminAccountDBMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBMaxOrderByAggregateInput({
    this.id,
    this.email,
    this.totp,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? totp;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class AdminAccountDBMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBMinOrderByAggregateInput({
    this.id,
    this.email,
    this.totp,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? totp;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class AdminAccountDBOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBOrderByWithAggregationInput({
    this.id,
    this.email,
    this.totp,
    this.permissions,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? totp;

  final _i2.SortOrder? permissions;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.AdminAccountDBCountOrderByAggregateInput? $count;

  final _i2.AdminAccountDBMaxOrderByAggregateInput? $max;

  final _i2.AdminAccountDBMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'permissions': permissions,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_max': $max,
        '_min': $min,
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

class AdminAccountDBScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.email,
    this.totp,
    this.permissions,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.AdminAccountDBScalarWhereWithAggregatesInput,
      Iterable<_i2.AdminAccountDBScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.AdminAccountDBScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.AdminAccountDBScalarWhereWithAggregatesInput,
      Iterable<_i2.AdminAccountDBScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? totp;

  final _i2.EnumPermissionsDBNullableListFilter? permissions;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'email': email,
        'totp': totp,
        'permissions': permissions,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class AdminAccountDBCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBCountAggregateOutputTypeSelect({
    this.id,
    this.email,
    this.totp,
    this.permissions,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  final bool? id;

  final bool? email;

  final bool? totp;

  final bool? permissions;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'permissions': permissions,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_all': $all,
      };
}

class AdminAccountDBGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBGroupByOutputTypeCountArgs({this.select});

  final _i2.AdminAccountDBCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AdminAccountDBMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBMinAggregateOutputTypeSelect({
    this.id,
    this.email,
    this.totp,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? email;

  final bool? totp;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class AdminAccountDBGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBGroupByOutputTypeMinArgs({this.select});

  final _i2.AdminAccountDBMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AdminAccountDBMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBMaxAggregateOutputTypeSelect({
    this.id,
    this.email,
    this.totp,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? email;

  final bool? totp;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class AdminAccountDBGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBGroupByOutputTypeMaxArgs({this.select});

  final _i2.AdminAccountDBMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AdminAccountDBGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBGroupByOutputTypeSelect({
    this.id,
    this.email,
    this.totp,
    this.permissions,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? email;

  final bool? totp;

  final bool? permissions;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.AdminAccountDBGroupByOutputTypeCountArgs>?
      $count;

  final _i1.PrismaUnion<bool, _i2.AdminAccountDBGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AdminAccountDBGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'permissions': permissions,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateAdminAccountDB {
  const AggregateAdminAccountDB({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateAdminAccountDB.fromJson(Map json) => AggregateAdminAccountDB(
        $count: json['_count'] is Map
            ? _i2.AdminAccountDBCountAggregateOutputType.fromJson(
                json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.AdminAccountDBMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.AdminAccountDBMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.AdminAccountDBCountAggregateOutputType? $count;

  final _i2.AdminAccountDBMinAggregateOutputType? $min;

  final _i2.AdminAccountDBMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateAdminAccountDBCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateAdminAccountDBCountArgs({this.select});

  final _i2.AdminAccountDBCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateAdminAccountDBMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateAdminAccountDBMinArgs({this.select});

  final _i2.AdminAccountDBMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateAdminAccountDBMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateAdminAccountDBMaxArgs({this.select});

  final _i2.AdminAccountDBMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateAdminAccountDBSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateAdminAccountDBSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateAdminAccountDBCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateAdminAccountDBMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateAdminAccountDBMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

enum AdminProfileDBScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'AdminProfileDB'),
  accountId<String>('accountId', 'AdminProfileDB'),
  name$<String>('name', 'AdminProfileDB'),
  createdAt<DateTime>('createdAt', 'AdminProfileDB'),
  updatedAt<DateTime>('updatedAt', 'AdminProfileDB');

  const AdminProfileDBScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class AdminAccountDBCreateWithoutAdminProfileDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBCreateWithoutAdminProfileDBInput({
    this.id,
    required this.email,
    required this.totp,
    this.permissions,
    this.createdAt,
    this.updatedAt,
    this.adminSessionDB,
  });

  final String? id;

  final String email;

  final String totp;

  final _i1.PrismaUnion<_i2.AdminAccountDBCreatepermissionsInput,
      Iterable<_i3.PermissionsDB>>? permissions;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.AdminSessionDBCreateNestedOneWithoutAccountInput? adminSessionDB;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'permissions': permissions,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'AdminSessionDB': adminSessionDB,
      };
}

class AdminAccountDBUncheckedCreateWithoutAdminProfileDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBUncheckedCreateWithoutAdminProfileDBInput({
    this.id,
    required this.email,
    required this.totp,
    this.permissions,
    this.createdAt,
    this.updatedAt,
    this.adminSessionDB,
  });

  final String? id;

  final String email;

  final String totp;

  final _i1.PrismaUnion<_i2.AdminAccountDBCreatepermissionsInput,
      Iterable<_i3.PermissionsDB>>? permissions;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.AdminSessionDBUncheckedCreateNestedOneWithoutAccountInput?
      adminSessionDB;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'permissions': permissions,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'AdminSessionDB': adminSessionDB,
      };
}

class AdminAccountDBCreateOrConnectWithoutAdminProfileDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBCreateOrConnectWithoutAdminProfileDBInput({
    required this.where,
    required this.create,
  });

  final _i2.AdminAccountDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.AdminAccountDBCreateWithoutAdminProfileDBInput,
      _i2.AdminAccountDBUncheckedCreateWithoutAdminProfileDBInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class AdminAccountDBCreateNestedOneWithoutAdminProfileDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBCreateNestedOneWithoutAdminProfileDBInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.AdminAccountDBCreateWithoutAdminProfileDBInput,
      _i2.AdminAccountDBUncheckedCreateWithoutAdminProfileDBInput>? create;

  final _i2.AdminAccountDBCreateOrConnectWithoutAdminProfileDBInput?
      connectOrCreate;

  final _i2.AdminAccountDBWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class AdminProfileDBCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBCreateInput({
    this.id,
    required this.name,
    this.createdAt,
    this.updatedAt,
    required this.account,
  });

  final String? id;

  final String name;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.AdminAccountDBCreateNestedOneWithoutAdminProfileDBInput account;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'account': account,
      };
}

class AdminProfileDBUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBUncheckedCreateInput({
    this.id,
    required this.accountId,
    required this.name,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String accountId;

  final String name;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'name': name,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class AdminProfileDBCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBCreateManyInput({
    this.id,
    required this.accountId,
    required this.name,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String accountId;

  final String name;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'name': name,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CreateManyAdminProfileDBAndReturnOutputTypeAccountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyAdminProfileDBAndReturnOutputTypeAccountArgs({
    this.select,
    this.include,
  });

  final _i2.AdminAccountDBSelect? select;

  final _i2.AdminAccountDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyAdminProfileDBAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyAdminProfileDBAndReturnOutputTypeSelect({
    this.id,
    this.accountId,
    this.name,
    this.createdAt,
    this.updatedAt,
    this.account,
  });

  final bool? id;

  final bool? accountId;

  final bool? name;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool,
      _i2.CreateManyAdminProfileDBAndReturnOutputTypeAccountArgs>? account;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'name': name,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'account': account,
      };
}

class CreateManyAdminProfileDBAndReturnOutputTypeInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyAdminProfileDBAndReturnOutputTypeInclude({this.account});

  final _i1.PrismaUnion<bool,
      _i2.CreateManyAdminProfileDBAndReturnOutputTypeAccountArgs>? account;

  @override
  Map<String, dynamic> toJson() => {'account': account};
}

class AdminAccountDBUpdateWithoutAdminProfileDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBUpdateWithoutAdminProfileDBInput({
    this.id,
    this.email,
    this.totp,
    this.permissions,
    this.createdAt,
    this.updatedAt,
    this.adminSessionDB,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? totp;

  final _i1.PrismaUnion<_i2.AdminAccountDBUpdatepermissionsInput,
      Iterable<_i3.PermissionsDB>>? permissions;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.AdminSessionDBUpdateOneWithoutAccountNestedInput? adminSessionDB;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'permissions': permissions,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'AdminSessionDB': adminSessionDB,
      };
}

class AdminAccountDBUncheckedUpdateWithoutAdminProfileDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBUncheckedUpdateWithoutAdminProfileDBInput({
    this.id,
    this.email,
    this.totp,
    this.permissions,
    this.createdAt,
    this.updatedAt,
    this.adminSessionDB,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? totp;

  final _i1.PrismaUnion<_i2.AdminAccountDBUpdatepermissionsInput,
      Iterable<_i3.PermissionsDB>>? permissions;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.AdminSessionDBUncheckedUpdateOneWithoutAccountNestedInput?
      adminSessionDB;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'permissions': permissions,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'AdminSessionDB': adminSessionDB,
      };
}

class AdminAccountDBUpsertWithoutAdminProfileDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBUpsertWithoutAdminProfileDBInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.AdminAccountDBUpdateWithoutAdminProfileDBInput,
      _i2.AdminAccountDBUncheckedUpdateWithoutAdminProfileDBInput> update;

  final _i1.PrismaUnion<_i2.AdminAccountDBCreateWithoutAdminProfileDBInput,
      _i2.AdminAccountDBUncheckedCreateWithoutAdminProfileDBInput> create;

  final _i2.AdminAccountDBWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class AdminAccountDBUpdateToOneWithWhereWithoutAdminProfileDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBUpdateToOneWithWhereWithoutAdminProfileDBInput({
    this.where,
    required this.data,
  });

  final _i2.AdminAccountDBWhereInput? where;

  final _i1.PrismaUnion<_i2.AdminAccountDBUpdateWithoutAdminProfileDBInput,
      _i2.AdminAccountDBUncheckedUpdateWithoutAdminProfileDBInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class AdminAccountDBUpdateOneRequiredWithoutAdminProfileDBNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBUpdateOneRequiredWithoutAdminProfileDBNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.AdminAccountDBCreateWithoutAdminProfileDBInput,
      _i2.AdminAccountDBUncheckedCreateWithoutAdminProfileDBInput>? create;

  final _i2.AdminAccountDBCreateOrConnectWithoutAdminProfileDBInput?
      connectOrCreate;

  final _i2.AdminAccountDBUpsertWithoutAdminProfileDBInput? upsert;

  final _i2.AdminAccountDBWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.AdminAccountDBUpdateToOneWithWhereWithoutAdminProfileDBInput,
      _i1.PrismaUnion<_i2.AdminAccountDBUpdateWithoutAdminProfileDBInput,
          _i2.AdminAccountDBUncheckedUpdateWithoutAdminProfileDBInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class AdminProfileDBUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBUpdateInput({
    this.id,
    this.name,
    this.createdAt,
    this.updatedAt,
    this.account,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.AdminAccountDBUpdateOneRequiredWithoutAdminProfileDBNestedInput?
      account;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'account': account,
      };
}

class AdminProfileDBUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBUncheckedUpdateInput({
    this.id,
    this.accountId,
    this.name,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      accountId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'name': name,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class AdminProfileDBUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBUpdateManyMutationInput({
    this.id,
    this.name,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class AdminProfileDBUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBUncheckedUpdateManyInput({
    this.id,
    this.accountId,
    this.name,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      accountId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'name': name,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class AdminProfileDBCountAggregateOutputType {
  const AdminProfileDBCountAggregateOutputType({
    this.id,
    this.accountId,
    this.name,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  factory AdminProfileDBCountAggregateOutputType.fromJson(Map json) =>
      AdminProfileDBCountAggregateOutputType(
        id: json['id'],
        accountId: json['accountId'],
        name: json['name'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        $all: json['_all'],
      );

  final int? id;

  final int? accountId;

  final int? name;

  final int? createdAt;

  final int? updatedAt;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'name': name,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_all': $all,
      };
}

class AdminProfileDBMinAggregateOutputType {
  const AdminProfileDBMinAggregateOutputType({
    this.id,
    this.accountId,
    this.name,
    this.createdAt,
    this.updatedAt,
  });

  factory AdminProfileDBMinAggregateOutputType.fromJson(Map json) =>
      AdminProfileDBMinAggregateOutputType(
        id: json['id'],
        accountId: json['accountId'],
        name: json['name'],
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

  final String? accountId;

  final String? name;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'name': name,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
      };
}

class AdminProfileDBMaxAggregateOutputType {
  const AdminProfileDBMaxAggregateOutputType({
    this.id,
    this.accountId,
    this.name,
    this.createdAt,
    this.updatedAt,
  });

  factory AdminProfileDBMaxAggregateOutputType.fromJson(Map json) =>
      AdminProfileDBMaxAggregateOutputType(
        id: json['id'],
        accountId: json['accountId'],
        name: json['name'],
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

  final String? accountId;

  final String? name;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'name': name,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
      };
}

class AdminProfileDBGroupByOutputType {
  const AdminProfileDBGroupByOutputType({
    this.id,
    this.accountId,
    this.name,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$min,
    this.$max,
  });

  factory AdminProfileDBGroupByOutputType.fromJson(Map json) =>
      AdminProfileDBGroupByOutputType(
        id: json['id'],
        accountId: json['accountId'],
        name: json['name'],
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
            ? _i2.AdminProfileDBCountAggregateOutputType.fromJson(
                json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.AdminProfileDBMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.AdminProfileDBMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? accountId;

  final String? name;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.AdminProfileDBCountAggregateOutputType? $count;

  final _i2.AdminProfileDBMinAggregateOutputType? $min;

  final _i2.AdminProfileDBMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'name': name,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AdminProfileDBCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBCountOrderByAggregateInput({
    this.id,
    this.accountId,
    this.name,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? accountId;

  final _i2.SortOrder? name;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'name': name,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class AdminProfileDBMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBMaxOrderByAggregateInput({
    this.id,
    this.accountId,
    this.name,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? accountId;

  final _i2.SortOrder? name;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'name': name,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class AdminProfileDBMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBMinOrderByAggregateInput({
    this.id,
    this.accountId,
    this.name,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? accountId;

  final _i2.SortOrder? name;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'name': name,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class AdminProfileDBOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBOrderByWithAggregationInput({
    this.id,
    this.accountId,
    this.name,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? accountId;

  final _i2.SortOrder? name;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.AdminProfileDBCountOrderByAggregateInput? $count;

  final _i2.AdminProfileDBMaxOrderByAggregateInput? $max;

  final _i2.AdminProfileDBMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'name': name,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class AdminProfileDBScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.accountId,
    this.name,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.AdminProfileDBScalarWhereWithAggregatesInput,
      Iterable<_i2.AdminProfileDBScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.AdminProfileDBScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.AdminProfileDBScalarWhereWithAggregatesInput,
      Iterable<_i2.AdminProfileDBScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? accountId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? name;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'accountId': accountId,
        'name': name,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class AdminProfileDBCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBCountAggregateOutputTypeSelect({
    this.id,
    this.accountId,
    this.name,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  final bool? id;

  final bool? accountId;

  final bool? name;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'name': name,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_all': $all,
      };
}

class AdminProfileDBGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBGroupByOutputTypeCountArgs({this.select});

  final _i2.AdminProfileDBCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AdminProfileDBMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBMinAggregateOutputTypeSelect({
    this.id,
    this.accountId,
    this.name,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? accountId;

  final bool? name;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'name': name,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class AdminProfileDBGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBGroupByOutputTypeMinArgs({this.select});

  final _i2.AdminProfileDBMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AdminProfileDBMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBMaxAggregateOutputTypeSelect({
    this.id,
    this.accountId,
    this.name,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? accountId;

  final bool? name;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'name': name,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class AdminProfileDBGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBGroupByOutputTypeMaxArgs({this.select});

  final _i2.AdminProfileDBMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AdminProfileDBGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminProfileDBGroupByOutputTypeSelect({
    this.id,
    this.accountId,
    this.name,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? accountId;

  final bool? name;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.AdminProfileDBGroupByOutputTypeCountArgs>?
      $count;

  final _i1.PrismaUnion<bool, _i2.AdminProfileDBGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AdminProfileDBGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'name': name,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateAdminProfileDB {
  const AggregateAdminProfileDB({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateAdminProfileDB.fromJson(Map json) => AggregateAdminProfileDB(
        $count: json['_count'] is Map
            ? _i2.AdminProfileDBCountAggregateOutputType.fromJson(
                json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.AdminProfileDBMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.AdminProfileDBMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.AdminProfileDBCountAggregateOutputType? $count;

  final _i2.AdminProfileDBMinAggregateOutputType? $min;

  final _i2.AdminProfileDBMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateAdminProfileDBCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateAdminProfileDBCountArgs({this.select});

  final _i2.AdminProfileDBCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateAdminProfileDBMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateAdminProfileDBMinArgs({this.select});

  final _i2.AdminProfileDBMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateAdminProfileDBMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateAdminProfileDBMaxArgs({this.select});

  final _i2.AdminProfileDBMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateAdminProfileDBSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateAdminProfileDBSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateAdminProfileDBCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateAdminProfileDBMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateAdminProfileDBMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

enum AdminSessionDBScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'AdminSessionDB'),
  accountId<String>('accountId', 'AdminSessionDB'),
  token<String>('token', 'AdminSessionDB'),
  expires<DateTime>('expires', 'AdminSessionDB'),
  createdAt<DateTime>('createdAt', 'AdminSessionDB');

  const AdminSessionDBScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class AdminAccountDBCreateWithoutAdminSessionDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBCreateWithoutAdminSessionDBInput({
    this.id,
    required this.email,
    required this.totp,
    this.permissions,
    this.createdAt,
    this.updatedAt,
    this.adminProfileDB,
  });

  final String? id;

  final String email;

  final String totp;

  final _i1.PrismaUnion<_i2.AdminAccountDBCreatepermissionsInput,
      Iterable<_i3.PermissionsDB>>? permissions;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.AdminProfileDBCreateNestedOneWithoutAccountInput? adminProfileDB;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'permissions': permissions,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'AdminProfileDB': adminProfileDB,
      };
}

class AdminAccountDBUncheckedCreateWithoutAdminSessionDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBUncheckedCreateWithoutAdminSessionDBInput({
    this.id,
    required this.email,
    required this.totp,
    this.permissions,
    this.createdAt,
    this.updatedAt,
    this.adminProfileDB,
  });

  final String? id;

  final String email;

  final String totp;

  final _i1.PrismaUnion<_i2.AdminAccountDBCreatepermissionsInput,
      Iterable<_i3.PermissionsDB>>? permissions;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.AdminProfileDBUncheckedCreateNestedOneWithoutAccountInput?
      adminProfileDB;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'permissions': permissions,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'AdminProfileDB': adminProfileDB,
      };
}

class AdminAccountDBCreateOrConnectWithoutAdminSessionDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBCreateOrConnectWithoutAdminSessionDBInput({
    required this.where,
    required this.create,
  });

  final _i2.AdminAccountDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.AdminAccountDBCreateWithoutAdminSessionDBInput,
      _i2.AdminAccountDBUncheckedCreateWithoutAdminSessionDBInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class AdminAccountDBCreateNestedOneWithoutAdminSessionDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBCreateNestedOneWithoutAdminSessionDBInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.AdminAccountDBCreateWithoutAdminSessionDBInput,
      _i2.AdminAccountDBUncheckedCreateWithoutAdminSessionDBInput>? create;

  final _i2.AdminAccountDBCreateOrConnectWithoutAdminSessionDBInput?
      connectOrCreate;

  final _i2.AdminAccountDBWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class AdminSessionDBCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBCreateInput({
    this.id,
    required this.token,
    required this.expires,
    this.createdAt,
    required this.account,
  });

  final String? id;

  final String token;

  final DateTime expires;

  final DateTime? createdAt;

  final _i2.AdminAccountDBCreateNestedOneWithoutAdminSessionDBInput account;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'token': token,
        'expires': expires,
        'createdAt': createdAt,
        'account': account,
      };
}

class AdminSessionDBUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBUncheckedCreateInput({
    this.id,
    required this.accountId,
    required this.token,
    required this.expires,
    this.createdAt,
  });

  final String? id;

  final String accountId;

  final String token;

  final DateTime expires;

  final DateTime? createdAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'token': token,
        'expires': expires,
        'createdAt': createdAt,
      };
}

class AdminSessionDBCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBCreateManyInput({
    this.id,
    required this.accountId,
    required this.token,
    required this.expires,
    this.createdAt,
  });

  final String? id;

  final String accountId;

  final String token;

  final DateTime expires;

  final DateTime? createdAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'token': token,
        'expires': expires,
        'createdAt': createdAt,
      };
}

class CreateManyAdminSessionDBAndReturnOutputTypeAccountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyAdminSessionDBAndReturnOutputTypeAccountArgs({
    this.select,
    this.include,
  });

  final _i2.AdminAccountDBSelect? select;

  final _i2.AdminAccountDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyAdminSessionDBAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyAdminSessionDBAndReturnOutputTypeSelect({
    this.id,
    this.accountId,
    this.token,
    this.expires,
    this.createdAt,
    this.account,
  });

  final bool? id;

  final bool? accountId;

  final bool? token;

  final bool? expires;

  final bool? createdAt;

  final _i1.PrismaUnion<bool,
      _i2.CreateManyAdminSessionDBAndReturnOutputTypeAccountArgs>? account;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'token': token,
        'expires': expires,
        'createdAt': createdAt,
        'account': account,
      };
}

class CreateManyAdminSessionDBAndReturnOutputTypeInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyAdminSessionDBAndReturnOutputTypeInclude({this.account});

  final _i1.PrismaUnion<bool,
      _i2.CreateManyAdminSessionDBAndReturnOutputTypeAccountArgs>? account;

  @override
  Map<String, dynamic> toJson() => {'account': account};
}

class AdminAccountDBUpdateWithoutAdminSessionDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBUpdateWithoutAdminSessionDBInput({
    this.id,
    this.email,
    this.totp,
    this.permissions,
    this.createdAt,
    this.updatedAt,
    this.adminProfileDB,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? totp;

  final _i1.PrismaUnion<_i2.AdminAccountDBUpdatepermissionsInput,
      Iterable<_i3.PermissionsDB>>? permissions;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.AdminProfileDBUpdateOneWithoutAccountNestedInput? adminProfileDB;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'permissions': permissions,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'AdminProfileDB': adminProfileDB,
      };
}

class AdminAccountDBUncheckedUpdateWithoutAdminSessionDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBUncheckedUpdateWithoutAdminSessionDBInput({
    this.id,
    this.email,
    this.totp,
    this.permissions,
    this.createdAt,
    this.updatedAt,
    this.adminProfileDB,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? totp;

  final _i1.PrismaUnion<_i2.AdminAccountDBUpdatepermissionsInput,
      Iterable<_i3.PermissionsDB>>? permissions;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.AdminProfileDBUncheckedUpdateOneWithoutAccountNestedInput?
      adminProfileDB;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'permissions': permissions,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'AdminProfileDB': adminProfileDB,
      };
}

class AdminAccountDBUpsertWithoutAdminSessionDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBUpsertWithoutAdminSessionDBInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.AdminAccountDBUpdateWithoutAdminSessionDBInput,
      _i2.AdminAccountDBUncheckedUpdateWithoutAdminSessionDBInput> update;

  final _i1.PrismaUnion<_i2.AdminAccountDBCreateWithoutAdminSessionDBInput,
      _i2.AdminAccountDBUncheckedCreateWithoutAdminSessionDBInput> create;

  final _i2.AdminAccountDBWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class AdminAccountDBUpdateToOneWithWhereWithoutAdminSessionDBInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBUpdateToOneWithWhereWithoutAdminSessionDBInput({
    this.where,
    required this.data,
  });

  final _i2.AdminAccountDBWhereInput? where;

  final _i1.PrismaUnion<_i2.AdminAccountDBUpdateWithoutAdminSessionDBInput,
      _i2.AdminAccountDBUncheckedUpdateWithoutAdminSessionDBInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class AdminAccountDBUpdateOneRequiredWithoutAdminSessionDBNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminAccountDBUpdateOneRequiredWithoutAdminSessionDBNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.AdminAccountDBCreateWithoutAdminSessionDBInput,
      _i2.AdminAccountDBUncheckedCreateWithoutAdminSessionDBInput>? create;

  final _i2.AdminAccountDBCreateOrConnectWithoutAdminSessionDBInput?
      connectOrCreate;

  final _i2.AdminAccountDBUpsertWithoutAdminSessionDBInput? upsert;

  final _i2.AdminAccountDBWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.AdminAccountDBUpdateToOneWithWhereWithoutAdminSessionDBInput,
      _i1.PrismaUnion<_i2.AdminAccountDBUpdateWithoutAdminSessionDBInput,
          _i2.AdminAccountDBUncheckedUpdateWithoutAdminSessionDBInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class AdminSessionDBUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBUpdateInput({
    this.id,
    this.token,
    this.expires,
    this.createdAt,
    this.account,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? token;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      expires;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i2.AdminAccountDBUpdateOneRequiredWithoutAdminSessionDBNestedInput?
      account;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'token': token,
        'expires': expires,
        'createdAt': createdAt,
        'account': account,
      };
}

class AdminSessionDBUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBUncheckedUpdateInput({
    this.id,
    this.accountId,
    this.token,
    this.expires,
    this.createdAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      accountId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? token;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      expires;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'token': token,
        'expires': expires,
        'createdAt': createdAt,
      };
}

class AdminSessionDBUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBUpdateManyMutationInput({
    this.id,
    this.token,
    this.expires,
    this.createdAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? token;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      expires;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'token': token,
        'expires': expires,
        'createdAt': createdAt,
      };
}

class AdminSessionDBUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBUncheckedUpdateManyInput({
    this.id,
    this.accountId,
    this.token,
    this.expires,
    this.createdAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      accountId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? token;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      expires;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'token': token,
        'expires': expires,
        'createdAt': createdAt,
      };
}

class AdminSessionDBCountAggregateOutputType {
  const AdminSessionDBCountAggregateOutputType({
    this.id,
    this.accountId,
    this.token,
    this.expires,
    this.createdAt,
    this.$all,
  });

  factory AdminSessionDBCountAggregateOutputType.fromJson(Map json) =>
      AdminSessionDBCountAggregateOutputType(
        id: json['id'],
        accountId: json['accountId'],
        token: json['token'],
        expires: json['expires'],
        createdAt: json['createdAt'],
        $all: json['_all'],
      );

  final int? id;

  final int? accountId;

  final int? token;

  final int? expires;

  final int? createdAt;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'token': token,
        'expires': expires,
        'createdAt': createdAt,
        '_all': $all,
      };
}

class AdminSessionDBMinAggregateOutputType {
  const AdminSessionDBMinAggregateOutputType({
    this.id,
    this.accountId,
    this.token,
    this.expires,
    this.createdAt,
  });

  factory AdminSessionDBMinAggregateOutputType.fromJson(Map json) =>
      AdminSessionDBMinAggregateOutputType(
        id: json['id'],
        accountId: json['accountId'],
        token: json['token'],
        expires: switch (json['expires']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['expires']
        },
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
      );

  final String? id;

  final String? accountId;

  final String? token;

  final DateTime? expires;

  final DateTime? createdAt;

  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'token': token,
        'expires': expires?.toIso8601String(),
        'createdAt': createdAt?.toIso8601String(),
      };
}

class AdminSessionDBMaxAggregateOutputType {
  const AdminSessionDBMaxAggregateOutputType({
    this.id,
    this.accountId,
    this.token,
    this.expires,
    this.createdAt,
  });

  factory AdminSessionDBMaxAggregateOutputType.fromJson(Map json) =>
      AdminSessionDBMaxAggregateOutputType(
        id: json['id'],
        accountId: json['accountId'],
        token: json['token'],
        expires: switch (json['expires']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['expires']
        },
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
      );

  final String? id;

  final String? accountId;

  final String? token;

  final DateTime? expires;

  final DateTime? createdAt;

  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'token': token,
        'expires': expires?.toIso8601String(),
        'createdAt': createdAt?.toIso8601String(),
      };
}

class AdminSessionDBGroupByOutputType {
  const AdminSessionDBGroupByOutputType({
    this.id,
    this.accountId,
    this.token,
    this.expires,
    this.createdAt,
    this.$count,
    this.$min,
    this.$max,
  });

  factory AdminSessionDBGroupByOutputType.fromJson(Map json) =>
      AdminSessionDBGroupByOutputType(
        id: json['id'],
        accountId: json['accountId'],
        token: json['token'],
        expires: switch (json['expires']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['expires']
        },
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        $count: json['_count'] is Map
            ? _i2.AdminSessionDBCountAggregateOutputType.fromJson(
                json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.AdminSessionDBMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.AdminSessionDBMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? accountId;

  final String? token;

  final DateTime? expires;

  final DateTime? createdAt;

  final _i2.AdminSessionDBCountAggregateOutputType? $count;

  final _i2.AdminSessionDBMinAggregateOutputType? $min;

  final _i2.AdminSessionDBMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'token': token,
        'expires': expires?.toIso8601String(),
        'createdAt': createdAt?.toIso8601String(),
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AdminSessionDBCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBCountOrderByAggregateInput({
    this.id,
    this.accountId,
    this.token,
    this.expires,
    this.createdAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? accountId;

  final _i2.SortOrder? token;

  final _i2.SortOrder? expires;

  final _i2.SortOrder? createdAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'token': token,
        'expires': expires,
        'createdAt': createdAt,
      };
}

class AdminSessionDBMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBMaxOrderByAggregateInput({
    this.id,
    this.accountId,
    this.token,
    this.expires,
    this.createdAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? accountId;

  final _i2.SortOrder? token;

  final _i2.SortOrder? expires;

  final _i2.SortOrder? createdAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'token': token,
        'expires': expires,
        'createdAt': createdAt,
      };
}

class AdminSessionDBMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBMinOrderByAggregateInput({
    this.id,
    this.accountId,
    this.token,
    this.expires,
    this.createdAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? accountId;

  final _i2.SortOrder? token;

  final _i2.SortOrder? expires;

  final _i2.SortOrder? createdAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'token': token,
        'expires': expires,
        'createdAt': createdAt,
      };
}

class AdminSessionDBOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBOrderByWithAggregationInput({
    this.id,
    this.accountId,
    this.token,
    this.expires,
    this.createdAt,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? accountId;

  final _i2.SortOrder? token;

  final _i2.SortOrder? expires;

  final _i2.SortOrder? createdAt;

  final _i2.AdminSessionDBCountOrderByAggregateInput? $count;

  final _i2.AdminSessionDBMaxOrderByAggregateInput? $max;

  final _i2.AdminSessionDBMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'token': token,
        'expires': expires,
        'createdAt': createdAt,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class AdminSessionDBScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.accountId,
    this.token,
    this.expires,
    this.createdAt,
  });

  final _i1.PrismaUnion<_i2.AdminSessionDBScalarWhereWithAggregatesInput,
      Iterable<_i2.AdminSessionDBScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.AdminSessionDBScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.AdminSessionDBScalarWhereWithAggregatesInput,
      Iterable<_i2.AdminSessionDBScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? accountId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? token;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? expires;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createdAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'accountId': accountId,
        'token': token,
        'expires': expires,
        'createdAt': createdAt,
      };
}

class AdminSessionDBCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBCountAggregateOutputTypeSelect({
    this.id,
    this.accountId,
    this.token,
    this.expires,
    this.createdAt,
    this.$all,
  });

  final bool? id;

  final bool? accountId;

  final bool? token;

  final bool? expires;

  final bool? createdAt;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'token': token,
        'expires': expires,
        'createdAt': createdAt,
        '_all': $all,
      };
}

class AdminSessionDBGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBGroupByOutputTypeCountArgs({this.select});

  final _i2.AdminSessionDBCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AdminSessionDBMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBMinAggregateOutputTypeSelect({
    this.id,
    this.accountId,
    this.token,
    this.expires,
    this.createdAt,
  });

  final bool? id;

  final bool? accountId;

  final bool? token;

  final bool? expires;

  final bool? createdAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'token': token,
        'expires': expires,
        'createdAt': createdAt,
      };
}

class AdminSessionDBGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBGroupByOutputTypeMinArgs({this.select});

  final _i2.AdminSessionDBMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AdminSessionDBMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBMaxAggregateOutputTypeSelect({
    this.id,
    this.accountId,
    this.token,
    this.expires,
    this.createdAt,
  });

  final bool? id;

  final bool? accountId;

  final bool? token;

  final bool? expires;

  final bool? createdAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'token': token,
        'expires': expires,
        'createdAt': createdAt,
      };
}

class AdminSessionDBGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBGroupByOutputTypeMaxArgs({this.select});

  final _i2.AdminSessionDBMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AdminSessionDBGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AdminSessionDBGroupByOutputTypeSelect({
    this.id,
    this.accountId,
    this.token,
    this.expires,
    this.createdAt,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? accountId;

  final bool? token;

  final bool? expires;

  final bool? createdAt;

  final _i1.PrismaUnion<bool, _i2.AdminSessionDBGroupByOutputTypeCountArgs>?
      $count;

  final _i1.PrismaUnion<bool, _i2.AdminSessionDBGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AdminSessionDBGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'token': token,
        'expires': expires,
        'createdAt': createdAt,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateAdminSessionDB {
  const AggregateAdminSessionDB({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateAdminSessionDB.fromJson(Map json) => AggregateAdminSessionDB(
        $count: json['_count'] is Map
            ? _i2.AdminSessionDBCountAggregateOutputType.fromJson(
                json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.AdminSessionDBMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.AdminSessionDBMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.AdminSessionDBCountAggregateOutputType? $count;

  final _i2.AdminSessionDBMinAggregateOutputType? $min;

  final _i2.AdminSessionDBMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateAdminSessionDBCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateAdminSessionDBCountArgs({this.select});

  final _i2.AdminSessionDBCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateAdminSessionDBMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateAdminSessionDBMinArgs({this.select});

  final _i2.AdminSessionDBMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateAdminSessionDBMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateAdminSessionDBMaxArgs({this.select});

  final _i2.AdminSessionDBMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateAdminSessionDBSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateAdminSessionDBSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateAdminSessionDBCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateAdminSessionDBMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateAdminSessionDBMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}
