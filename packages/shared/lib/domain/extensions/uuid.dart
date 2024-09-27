import 'package:shared/domain.dart';

extension UuidExtension on String? {
  UuidValue? toUuidOrNull() {
    if (this == null || this!.isEmpty) return null;
    return UuidValue.fromString(this!);
  }
}
