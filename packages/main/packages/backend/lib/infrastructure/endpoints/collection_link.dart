import 'package:backend/domain.dart';
import 'package:backend/infrastructure.dart';

final class CollectionLinkEndpoint implements CollectionLinkService {
  CollectionLinkEndpoint(
    this._collectionLinkManager,
  );

  final DailyLinkManager _collectionLinkManager;

  @override
  Future<ListDataOrFailure<Date>> getDates() async {
    final data = await _collectionLinkManager.getDates();
    return successful(
      data
          .where(
            (e) => e.isBefore(Date.now()),
          )
          .toList(),
    );
  }

  @override
  Future<ListDataOrFailure<DailyLink>> getLinksByDate(Date date) async {
    if (!await _collectionLinkManager.existsDate(date)) {
      return failed(DateNotFoundFailure());
    }

    return successful(await _collectionLinkManager.getLinksByDate(date));
  }
}
