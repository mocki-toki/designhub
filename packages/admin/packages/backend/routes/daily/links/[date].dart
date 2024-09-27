import 'package:backend/domain.dart';
import 'package:backend/infrastructure.dart';

Future<Response> onRequest(RequestContext context, String date) async {
  if (!RegExp(r'^\d{4}-\d{2}-\d{2}$').hasMatch(date)) {
    return InvalidParameterValuesFailure([
      InvalidParameterValue('date', [date], ['yyyy-MM-dd']),
    ]).toResponse();
  }
  return switch (context.request.method) {
    HttpMethod.get => _get(context, date),
    HttpMethod.put => _put(context, date),
    HttpMethod.delete => _delete(context, date),
    _ => Future.value(Response(statusCode: HttpStatus.methodNotAllowed)),
  };
}

Future<Response> _get(RequestContext context, String date) async {
  return context.requiredAuthAndPermissions(
    [AdminAccountPermission.daily],
    () {
      return context
          .read<AdminDailyService>()
          .getLinksByDate(Date.parse(date))
          .toResponse();
    },
  );
}

Future<Response> _put(RequestContext context, String date) async {
  return context.requiredAuthAndPermissions(
    [AdminAccountPermission.daily],
    () => context.getRequiredParametersFromBody(
      ['items'],
      [List],
      (map) {
        final items = map['items'] as List;
        late final List<DailyLinkRequest> links;
        try {
          links = items
              .map((e) => DailyLinkRequest.fromJson(e as Map<String, dynamic>))
              .toList();
        } catch (_) {
          return Future.value(
            InvalidParameterValuesFailure(
              [InvalidParameterValue('items', items, [])],
            ).toResponse(),
          );
        }

        return context
            .read<AdminDailyService>()
            .setLinksByDate(Date.parse(date), links)
            .toResponse();
      },
    ),
  );
}

Future<Response> _delete(RequestContext context, String date) async {
  return context.requiredAuthAndPermissions(
    [AdminAccountPermission.daily],
    () {
      final splittedDate = date.split('-');
      final year = int.parse(splittedDate[0]);
      final month = int.parse(splittedDate[1]);
      final day = int.parse(splittedDate[2]);

      return context
          .read<AdminDailyService>()
          .deleteByDate(Date(DateTime(year, month, day)))
          .toResponse();
    },
  );
}
