import 'package:shared/domain.dart';

final class InvalidMediaFormatFailure extends BackendFailure {
  InvalidMediaFormatFailure() : super(HttpStatus.badRequest);

  static const type = 'invalid_media_format_failure';
}
