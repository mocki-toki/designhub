import 'package:shared/domain.dart';

final class InvalidCredentialsFailure extends BackendFailure {
  InvalidCredentialsFailure() : super(HttpStatus.unauthorized);

  static const type = 'invalid_credentials_failure';
}
