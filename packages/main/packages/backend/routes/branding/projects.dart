import 'package:backend/domain.dart';
import 'package:backend/infrastructure.dart';

Future<Response> onRequest(RequestContext context) {
  return switch (context.request.method) {
    HttpMethod.get => _get(context),
    _ => Future.value(Response(statusCode: HttpStatus.methodNotAllowed)),
  };
}

Future<Response> _get(RequestContext context) async {
  return context.getParametersFromQuery(
    ['cursor', 'limit', 'children_limit'],
    [UuidValue, const Required(int), const Required(int)],
    (map) => context
        .read<BrandingService>()
        .getProjects(
          cursor: map['cursor'],
          limit: map['limit'],
          childrenLimit: map['children_limit'],
        )
        .toResponse(),
  );
}
