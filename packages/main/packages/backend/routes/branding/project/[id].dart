import 'package:backend/domain.dart';
import 'package:backend/infrastructure.dart';

Future<Response> onRequest(RequestContext context, String id) {
  return switch (context.request.method) {
    HttpMethod.get => _get(context, id),
    _ => Future.value(Response(statusCode: HttpStatus.methodNotAllowed)),
  };
}

Future<Response> _get(RequestContext context, String id) async {
  return context.getParametersFromQuery(
    ['children_limit'],
    [const Required(int)],
    (map) => context
        .read<BrandingService>()
        .getProjectById(UuidValue.fromString(id),
            childrenLimit: map['children_limit'])
        .toResponse(),
  );
}
