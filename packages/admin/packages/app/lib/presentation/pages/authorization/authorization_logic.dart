import 'package:app/domain.dart';
import 'package:app/presentation.dart';

final class AuthorizationLogic extends Logic {
  AuthorizationLogic(super.context, this.onResult);

  final VoidCallback onResult;

  late final dataNotifier = DataNotifier<AdminSession>();

  final emailController = TextEditingController();
  final totpCodeController = TextEditingController();

  @override
  void disposeLogic() {
    dataNotifier.dispose();
    emailController.dispose();
    totpCodeController.dispose();
    super.disposeLogic();
  }

  Future<void> signIn() {
    final email = emailController.text;
    final totpCode = totpCodeController.text;
    if (email.isEmpty || totpCode.isEmpty) {
      scaffoldMessenger.showSnackBar(
        SnackBar(
          content: Text(context.sharedAppLocalizations.fillAllFieldsError),
        ),
      );
      return SynchronousFuture(null);
    }

    return dataNotifier.loadData(
      getRequired<AdminSessionService>()
          .signIn(email: email, totpCode: totpCode),
      onSuccess: (data) {
        onResult();
      },
      onFailure: (failure) {
        scaffoldMessenger.showSnackBar(
          SnackBar(
            content: Text(failure.toLocalizedString(context)),
          ),
        );
      },
    );
  }
}
