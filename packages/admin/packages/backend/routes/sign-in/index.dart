import 'package:backend/domain.dart';
import 'package:backend/infrastructure.dart';

Future<Response> onRequest(RequestContext context) async {
  return switch (context.request.method) {
    HttpMethod.post => _post(context),
    _ => Future.value(Response(statusCode: HttpStatus.methodNotAllowed)),
  };
}

Future<Response> _post(RequestContext context) async {
  return context.getRequiredParametersFromBody(
    ['email', 'totp_code'],
    [String, String],
    (map) => context
        .read<AdminSessionService>()
        .signIn(email: map['email'], totpCode: map['totp_code'])
        .toResponse(),
  );
}
