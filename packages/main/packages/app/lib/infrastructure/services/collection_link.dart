import 'package:app/domain.dart';
import 'package:app/infrastructure.dart';

final class CollectionLinkServiceImpl implements CollectionLinkService {
  CollectionLinkServiceImpl(this._dio);

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
}
