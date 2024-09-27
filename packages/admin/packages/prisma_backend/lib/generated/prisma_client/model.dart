// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/orm.dart' as _i1;

import 'model.dart' as _i2;

enum PermissionsDB implements _i1.PrismaEnum {
  daily._('daily'),
  posts._('posts'),
  users._('users'),
  adminAccounts._('adminAccounts');

  const PermissionsDB._(this.name);

  @override
  final String name;
}

class AdminProfileDB {
  const AdminProfileDB({
    this.id,
    this.accountId,
    this.name,
    this.createdAt,
    this.updatedAt,
    this.account,
  });

  factory AdminProfileDB.fromJson(Map json) => AdminProfileDB(
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
        account: json['account'] is Map
            ? _i2.AdminAccountDB.fromJson(json['account'])
            : null,
      );

  final String? id;

  final String? accountId;

  final String? name;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.AdminAccountDB? account;

  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'name': name,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'account': account?.toJson(),
      };
}

class AdminSessionDB {
  const AdminSessionDB({
    this.id,
    this.accountId,
    this.token,
    this.expires,
    this.createdAt,
    this.account,
  });

  factory AdminSessionDB.fromJson(Map json) => AdminSessionDB(
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
        account: json['account'] is Map
            ? _i2.AdminAccountDB.fromJson(json['account'])
            : null,
      );

  final String? id;

  final String? accountId;

  final String? token;

  final DateTime? expires;

  final DateTime? createdAt;

  final _i2.AdminAccountDB? account;

  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'token': token,
        'expires': expires?.toIso8601String(),
        'createdAt': createdAt?.toIso8601String(),
        'account': account?.toJson(),
      };
}

class AdminAccountDB {
  const AdminAccountDB({
    this.id,
    this.email,
    this.totp,
    this.permissions,
    this.createdAt,
    this.updatedAt,
    this.adminProfileDB,
    this.adminSessionDB,
  });

  factory AdminAccountDB.fromJson(Map json) => AdminAccountDB(
        id: json['id'],
        email: json['email'],
        totp: json['totp'],
        permissions: json['permissions'] != null
            ? (json['permissions'] as Iterable).map((child) =>
                _i2.PermissionsDB.values.firstWhere((e) => e.name == child))
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
        adminProfileDB: json['AdminProfileDB'] is Map
            ? _i2.AdminProfileDB.fromJson(json['AdminProfileDB'])
            : null,
        adminSessionDB: json['AdminSessionDB'] is Map
            ? _i2.AdminSessionDB.fromJson(json['AdminSessionDB'])
            : null,
      );

  final String? id;

  final String? email;

  final String? totp;

  final Iterable<_i2.PermissionsDB>? permissions;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.AdminProfileDB? adminProfileDB;

  final _i2.AdminSessionDB? adminSessionDB;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'permissions': permissions?.map((e) => e.name),
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'AdminProfileDB': adminProfileDB?.toJson(),
        'AdminSessionDB': adminSessionDB?.toJson(),
      };
}

class CreateManyAdminAccountDBAndReturnOutputType {
  const CreateManyAdminAccountDBAndReturnOutputType({
    this.id,
    this.email,
    this.totp,
    this.permissions,
    this.createdAt,
    this.updatedAt,
  });

  factory CreateManyAdminAccountDBAndReturnOutputType.fromJson(Map json) =>
      CreateManyAdminAccountDBAndReturnOutputType(
        id: json['id'],
        email: json['email'],
        totp: json['totp'],
        permissions: json['permissions'] != null
            ? (json['permissions'] as Iterable).map((child) =>
                _i2.PermissionsDB.values.firstWhere((e) => e.name == child))
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
      );

  final String? id;

  final String? email;

  final String? totp;

  final Iterable<_i2.PermissionsDB>? permissions;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'totp': totp,
        'permissions': permissions?.map((e) => e.name),
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
      };
}

class CreateManyAdminProfileDBAndReturnOutputType {
  const CreateManyAdminProfileDBAndReturnOutputType({
    this.id,
    this.accountId,
    this.name,
    this.createdAt,
    this.updatedAt,
    this.account,
  });

  factory CreateManyAdminProfileDBAndReturnOutputType.fromJson(Map json) =>
      CreateManyAdminProfileDBAndReturnOutputType(
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
        account: json['account'] is Map
            ? _i2.AdminAccountDB.fromJson(json['account'])
            : null,
      );

  final String? id;

  final String? accountId;

  final String? name;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.AdminAccountDB? account;

  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'name': name,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'account': account?.toJson(),
      };
}

class CreateManyAdminSessionDBAndReturnOutputType {
  const CreateManyAdminSessionDBAndReturnOutputType({
    this.id,
    this.accountId,
    this.token,
    this.expires,
    this.createdAt,
    this.account,
  });

  factory CreateManyAdminSessionDBAndReturnOutputType.fromJson(Map json) =>
      CreateManyAdminSessionDBAndReturnOutputType(
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
        account: json['account'] is Map
            ? _i2.AdminAccountDB.fromJson(json['account'])
            : null,
      );

  final String? id;

  final String? accountId;

  final String? token;

  final DateTime? expires;

  final DateTime? createdAt;

  final _i2.AdminAccountDB? account;

  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'token': token,
        'expires': expires?.toIso8601String(),
        'createdAt': createdAt?.toIso8601String(),
        'account': account?.toJson(),
      };
}
