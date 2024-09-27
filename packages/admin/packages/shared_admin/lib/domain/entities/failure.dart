import 'package:shared_admin/domain.dart';

final class AdminBackendFailure extends BackendFailure {
  AdminBackendFailure(int statusCode) : super(statusCode);

  static BackendFailure fromJson(Map<String, dynamic> json) {
    final type = json['type'] as String;
    switch (type) {
      default:
        return BackendFailure.fromJson(json);
    }
  }
}
