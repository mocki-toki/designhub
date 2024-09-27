import 'package:shared/domain.dart';

final class DateNotFoundFailure extends BackendFailure {
  DateNotFoundFailure() : super(HttpStatus.notFound);

  static const type = 'date_not_found_failure';
}
