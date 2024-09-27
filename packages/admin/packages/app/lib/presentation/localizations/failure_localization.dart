import 'package:app/domain.dart';
import 'package:app/presentation.dart';

final class AdminAppFailureLocalization {
  static String toLocalizedString(BuildContext context, Failure failure) {
    final localization = context.appLocalizations;

    if (failure is BackendFailure) {
      if (failure.toSnakeCase() != 'backend_failure' &&
          localization.map.keys.contains(failure.toSnakeCase())) {
        return localization.map[failure.toSnakeCase()]!;
      } else {
        return SharedFailureLocalization.toLocalizedString(
          context,
          failure,
        );
      }
    } else {
      return SharedFailureLocalization.toLocalizedString(context, failure);
    }
  }
}
