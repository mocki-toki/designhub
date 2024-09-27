import 'dart:convert';

import 'package:app/infrastructure.dart';
import 'package:app/domain.dart';

final class AdminDailyServiceImpl implements AdminDailyService {
  AdminDailyServiceImpl(this._dio);
  final Dio _dio;

  @override
  Future<ListDataOrFailure<Date>> getDates() {
    return _dio.get('/daily/dates').toListData((r) => Date.fromJson(r));
  }

  @override
  Future<ListDataOrFailure<DailyLink>> getLinksByDate(Date date) {
    return _dio
        .get('/daily/links/$date')
        .toListData((r) => DailyLink.fromJson(r));
  }

  @override
  Future<SuccessOrFailure> deleteByDate(Date date) {
    return _dio.delete('/daily/links/$date').toSuccess();
  }

  @override
  Future<SuccessOrFailure> setLinksByDate(
    Date date,
    List<DailyLinkRequest> links,
  ) {
    return _dio
        .put(
          '/daily/links/$date',
          data: jsonEncode({'items': links}),
        )
        .toSuccess();
  }
}
