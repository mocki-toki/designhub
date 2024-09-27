import 'package:backend/domain.dart';
import 'package:backend/infrastructure.dart';

final class AdminCollectionLinkEndpoint implements AdminDailyService {
  AdminCollectionLinkEndpoint(
    this._collectionLinkManager,
  );

  final DailyLinkManager _collectionLinkManager;

  @override
  Future<ListDataOrFailure<Date>> getDates() async =>
      successful(await _collectionLinkManager.getDates());

  @override
  Future<ListDataOrFailure<DailyLink>> getLinksByDate(
    Date date,
  ) async {
    if (!await _collectionLinkManager.existsDate(date)) {
      return failed(DateNotFoundFailure());
    }

    return successful(await _collectionLinkManager.getLinksByDate(date));
  }

  @override
  Future<DataOrFailure<void>> deleteByDate(Date date) async {
    if (!await _collectionLinkManager.existsDate(date)) {
      return failed(DateNotFoundFailure());
    }

    return successful(await _collectionLinkManager.deleteByDate(date));
  }

  @override
  Future<DataOrFailure<void>> setLinksByDate(
    Date date,
    List<DailyLinkRequest> links,
  ) async =>
      successful(await _collectionLinkManager.setLinksByDate(date, links));
}
