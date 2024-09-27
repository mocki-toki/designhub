import 'package:shared_admin/domain.dart';

abstract interface class AdminAccountManagementService {
  Future<DataOrFailure<AdminAccountWithTotp>> createAccount({
    required String email,
    required List<AdminAccountPermission> permissions,
  });

  Future<ListDataOrFailure<AdminAccount>> getAccounts();

  Future<DataOrFailure<AdminAccount>> getAccount({
    required UuidValue id,
  });

  Future<DataOrFailure<AdminAccount>> updateAccount({
    required UuidValue id,
    required String email,
    required String password,
    required List<AdminAccountPermission> permissions,
  });

  Future<SuccessOrFailure> deleteAccount({
    required UuidValue id,
  });
}
