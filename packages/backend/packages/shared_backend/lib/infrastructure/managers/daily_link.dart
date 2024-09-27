import 'package:shared_backend/domain.dart';
import 'package:shared_backend/infrastructure.dart';
import 'package:shared_prisma_backend/client.dart';

final class DailyLinkManager {
  DailyLinkManager(this._client);

  final PrismaSharedClient _client;

  Future<List<Date>> getDates() async {
    final dates = await _client.dailyLinkDB.findMany(
      select: DailyLinkDBSelect(date: true),
      orderBy: $2(DailyLinkDBOrderByWithRelationInput(
        date: SortOrder.asc,
      )),
    );

    return dates.map((e) => Date.parse(e.date!)).toSet().toList();
  }

  Future<List<DailyLink>> getLinksByDate(Date date) async {
    final links = await _client.dailyLinkDB.findMany(
      where: DailyLinkDBWhereInput(date: $2('$date')),
    );

    return links.map((e) => e.toDomain()).toList();
  }

  Future<bool> existsDate(Date date) async {
    final link = await _client.dailyLinkDB.findFirst(
      where: DailyLinkDBWhereInput(date: $2('$date')),
    );

    return link != null;
  }

  Future<void> deleteByDate(Date date) {
    return _client.dailyLinkDB.delete(
      where: DailyLinkDBWhereUniqueInput(date: $2('$date')),
    );
  }

  Future<void> setLinksByDate(
    Date date,
    List<DailyLinkRequest> links,
  ) async {
    if (await existsDate(date)) {
      await deleteByDate(date);
      if (links.isEmpty) return Future.value();
    }

    await _client.dailyLinkDB.createMany(
      data: $2(links.map(
        (e) => DailyLinkDBCreateManyInput(
          title: e.title,
          url: e.url.toString(),
          previewImageUrl: $1(e.previewImageUrl.toString()),
          type: DailyLinkTypeDB.values.byName(e.type.name),
          date: '$date',
        ),
      )),
    );
  }
}

extension on DailyLinkDB {
  DailyLink toDomain() {
    return DailyLink(
      id: id.toUuidOrNull()!,
      title: title!,
      url: Uri.dataFromString(url!),
      previewImageUrl: Uri.dataFromString(previewImageUrl!),
      type: DailyLinkType.values.byName(type!.name),
      date: Date.parse(date!),
    );
  }
}
