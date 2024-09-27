import 'package:shared_admin/domain.dart';

final class AdminAccountWithTotp {
  AdminAccountWithTotp({
    required this.id,
    required this.email,
    required this.totp,
    required this.permissions,
  });

  final UuidValue id;
  final String email;
  final String totp;
  final List<AdminAccountPermission> permissions;

  Map<String, dynamic> toJson() {
    return {
      'id': '$id',
      'email': email,
      'totp': totp,
      'permissions': permissions.map((e) => e.name).toList(),
    };
  }

  AdminAccount toEntity() {
    return AdminAccount(
      id: id,
      email: email,
      permissions: permissions,
    );
  }

  static AdminAccountWithTotp fromJson(Map<String, dynamic> json) {
    return AdminAccountWithTotp(
      id: UuidValue.fromString(json['id'] as String),
      email: json['email'] as String,
      totp: json['totp'] as String,
      permissions: (json['permissions'] as List)
          .map((e) => AdminAccountPermission.values.byName(e as String))
          .toList(),
    );
  }
}
