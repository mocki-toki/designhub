import 'package:shared_backend/domain.dart';

extension ListToPaginatedListExtension<T> on Iterable<T> {
  PaginatedList<T> toPaginatedList(UuidValue? nextCursor) {
    return PaginatedList<T>(this.toList(), nextCursor);
  }
}
