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
    ['cursor', 'limit', 'by_project', 'by_categories'],
    [UuidValue, const Required(int), UuidValue, List<UuidValue>],
    (map) => context
        .read<BrandingService>()
        .getPosts(
          cursor: map['cursor'],
          limit: map['limit'],
          byProject: map['by_project'],
          byCategories: map['by_categories'],
        )
        .toResponse(),
  );
}
