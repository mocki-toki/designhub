import 'package:backend/domain.dart';
import 'package:backend/infrastructure.dart';

Future<Response> onRequest(RequestContext context, String key) {
  return switch (context.request.method) {
    HttpMethod.get => _get(context, key),
    _ => Future.value(Response(statusCode: HttpStatus.methodNotAllowed)),
  };
}

Future<Response> _get(RequestContext context, String key) async {
  return context.getParametersFromQuery(
    ['cursor', 'limit'],
    [UuidValue, const Required(int)],
    (map) => context
        .read<CategoryService>()
        .getCategoriesByKey(
          key,
          cursor: map['cursor'],
          limit: map['limit'],
        )
        .toResponse(),
  );
}
