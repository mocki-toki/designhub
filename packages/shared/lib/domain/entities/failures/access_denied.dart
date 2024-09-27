import 'package:shared/domain.dart';

final class AccessDeniedFailure extends BackendFailure {
  AccessDeniedFailure() : super(HttpStatus.forbidden);

  static const type = 'access_denied_failure';
}
