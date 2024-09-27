import 'package:app/domain.dart';
import 'package:app/infrastructure.dart';

final class AdminAccountManagementServiceImpl
    implements AdminAccountManagementService {
  AdminAccountManagementServiceImpl(this._dio);

  final Dio _dio;

  @override
  Future<DataOrFailure<AdminAccountWithTotp>> createAccount({
    required String email,
    required List<AdminAccountPermission> permissions,
  }) {
    return _dio.post('/sign-up', data: {
      'email': email,
      'permissions': permissions.map((e) => e.name).toList(),
    }).toData((r) => AdminAccountWithTotp.fromJson(r));
  }

  @override
  Future<ListDataOrFailure<AdminAccount>> getAccounts() {
    return _dio
        .get('/account')
        .toListData((r) => r.map((e) => AdminAccount.fromJson(e)).toList());
  }

  @override
  Future<DataOrFailure<AdminAccount>> getAccount({
    required UuidValue id,
  }) {
    return _dio.get('/account/$id').toData((r) => AdminAccount.fromJson(r));
  }

  @override
  Future<DataOrFailure<AdminAccount>> updateAccount({
    required UuidValue id,
    required String email,
    required String password,
    required List<AdminAccountPermission> permissions,
  }) {
    return _dio.put('/account/$id', data: {
      'email': email,
      'password': password,
      'permissions': permissions.map((e) => e.name).toList(),
    }).toData((r) => AdminAccount.fromJson(r));
  }

  @override
  Future<SuccessOrFailure> deleteAccount({
    required UuidValue id,
  }) {
    return _dio.delete('/account/$id').toSuccess();
  }
}
