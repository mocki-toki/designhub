import 'dart:collection';

import 'package:shared/domain.dart';

final class PaginatedList<T> extends ListBase<T> {
  const PaginatedList(this._items, this.nextCursor);

  final List<T> _items;
  final UuidValue? nextCursor;

  @override
  int get length => _items.length;

  @override
  set length(int newLength) => _items.length = newLength;

  @override
  T operator [](int index) => _items[index];

  @override
  void operator []=(int index, T value) => _items[index] = value;

  bool get hasNext => nextCursor != null;

  PaginatedList<T> merge(PaginatedList<T> other) {
    return PaginatedList(
      _items + other._items,
      other.nextCursor,
    );
  }
}
