import 'package:backend/domain.dart';
import 'package:backend/infrastructure.dart';

final class AdminAccountManagementEndpoint
    implements AdminAccountManagementService {
  AdminAccountManagementEndpoint(
    this._account,
    this._accountManager,
  );

  final AdminAccount? _account;
  final AdminAccountManager _accountManager;

  @override
  Future<DataOrFailure<AdminAccountWithTotp>> createAccount({
    required String email,
    required List<AdminAccountPermission> permissions,
  }) async {
    if (_account != null) return failed(AlreadySignedInFailure());

    final account = await _accountManager.getByEmailOrNull(email);
    if (account != null) return failed(AccountAlreadyExistsFailure());

    return successful(await _accountManager.create(
      email: email,
      permissions: permissions,
    ));
  }

  @override
  Future<ListDataOrFailure<AdminAccount>> getAccounts() async {
    if (_account == null) return failed(NotSignedInFailure());
    if (!_account.hasPermissions([AdminAccountPermission.adminAccounts])) {
      return failed(AccessDeniedFailure());
    }

    return successful(await _accountManager.getAll());
  }

  @override
  Future<DataOrFailure<AdminAccount>> getAccount({
    required UuidValue id,
  }) async {
    if (_account == null) return failed(NotSignedInFailure());
    if (!_account.hasPermissions([AdminAccountPermission.adminAccounts])) {
      return failed(AccessDeniedFailure());
    }

    if (_account.id == id) return successful(_account);

    final account = await _accountManager.getByIdOrNull(id);
    if (account == null) return failed(AccountNotFoundFailure());

    return successful(account);
  }

  @override
  Future<DataOrFailure<AdminAccount>> updateAccount({
    required UuidValue id,
    required String? email,
    required String? password,
    required List<AdminAccountPermission>? permissions,
  }) async {
    if (_account == null) return failed(NotSignedInFailure());
    if (!_account.hasPermissions([AdminAccountPermission.adminAccounts])) {
      return failed(AccessDeniedFailure());
    }

    final account = await _accountManager.getByIdOrNull(id);
    if (account == null) return failed(AccountNotFoundFailure());

    return successful(await _accountManager.of(account.id).update(
          email: email ?? account.email,
          permissions: permissions ?? account.permissions,
        ));
  }

  @override
  Future<SuccessOrFailure> deleteAccount({
    required UuidValue id,
  }) async {
    if (_account == null) return failed(NotSignedInFailure());
    if (!_account.hasPermissions([AdminAccountPermission.adminAccounts])) {
      return failed(AccessDeniedFailure());
    }

    final account = await _accountManager.getByIdOrNull(id);
    if (account == null) return failed(AccountNotFoundFailure());

    return successful(await _accountManager.of(account.id).delete());
  }
}
