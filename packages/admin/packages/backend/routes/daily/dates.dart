import 'package:backend/domain.dart';
import 'package:backend/infrastructure.dart';

Future<Response> onRequest(RequestContext context) {
  return switch (context.request.method) {
    HttpMethod.get => _get(context),
    _ => Future.value(Response(statusCode: HttpStatus.methodNotAllowed)),
  };
}

Future<Response> _get(RequestContext context) async {
  return context.requiredAuthAndPermissions(
    [AdminAccountPermission.daily],
    () => context.read<AdminDailyService>().getDates().toResponse(),
  );
}
