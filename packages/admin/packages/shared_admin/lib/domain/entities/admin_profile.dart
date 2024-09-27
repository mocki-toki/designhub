import 'package:shared_admin/domain.dart';

final class AdminProfile {
  AdminProfile({
    required this.accountId,
    required this.name,
  });

  final UuidValue accountId;
  final String name;

  Map<String, dynamic> toJson() {
    return {
      'account_id': '$accountId',
      'name': '$name',
    };
  }

  static AdminProfile fromJson(Map<String, dynamic> json) {
    return AdminProfile(
      accountId: UuidValue.fromString(json['account_id'] as String),
      name: json['name'] as String,
    );
  }
}
