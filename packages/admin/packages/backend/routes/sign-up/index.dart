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
    ['email', 'permissions'],
    [String, List],
    (map) {
      final permissions = map['permissions'] as List;
      if (!AdminAccountPermission.values.containsAllAndNotNull(permissions)) {
        return Future.value(
          InvalidParameterValuesFailure(
            [
              AdminAccountPermission.values
                  .getInvalidParameterValue('permissions', permissions),
            ],
          ).toResponse(),
        );
      }

      return context
          .read<AdminAccountManagementService>()
          .createAccount(
              email: map['email'],
              permissions: permissions
                  .map((e) => AdminAccountPermission.values.byName(e))
                  .toList())
          .toResponse();
    },
  );
}
