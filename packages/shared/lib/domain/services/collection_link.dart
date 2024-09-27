import 'package:shared/domain.dart';

abstract interface class CollectionLinkService {
  Future<ListDataOrFailure<Date>> getDates();

  Future<ListDataOrFailure<DailyLink>> getLinksByDate(Date date);
}
