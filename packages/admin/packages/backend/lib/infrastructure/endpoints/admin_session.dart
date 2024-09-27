import 'package:backend/domain.dart';
import 'package:backend/infrastructure.dart';

final class AdminSessionEndpoint implements AdminSessionService {
  AdminSessionEndpoint(
    this._account,
    this._sessionManager,
    this._accountManager,
  );

  final AdminAccount? _account;
  final AdminSessionManager _sessionManager;
  final AdminAccountManager _accountManager;

  @override
  Future<DataOrFailure<AdminSession>> signIn({
    required String email,
    required String totpCode,
  }) async {
    if (_account != null) return failed(AlreadySignedInFailure());

    final account =
        await _accountManager.getByCredentialsOrNull(email, totpCode);
    if (account == null) return failed(InvalidCredentialsFailure());

    await _sessionManager.deleteByAccountId(account.id);
    return successful(await _sessionManager.create(account.id));
  }

  @override
  Future<SuccessOrFailure> signOut() async {
    if (_account == null) return failed(NotSignedInFailure());
    return successful(await _sessionManager.deleteByAccountId(_account.id));
  }
}
