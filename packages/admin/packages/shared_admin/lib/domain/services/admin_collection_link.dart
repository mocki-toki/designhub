import 'package:shared_admin/domain.dart';

abstract interface class AdminDailyService implements CollectionLinkService {
  @override
  Future<ListDataOrFailure<Date>> getDates();

  @override
  Future<ListDataOrFailure<DailyLink>> getLinksByDate(Date date);

  Future<SuccessOrFailure> deleteByDate(Date date);

  Future<SuccessOrFailure> setLinksByDate(
    Date date,
    List<DailyLinkRequest> links,
  );
}
