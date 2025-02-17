import 'package:shared_app/infrastructure.dart';
import 'package:shared_app/presentation.dart';

extension BuildContextExtension on BuildContext {
  T? getRequired<T>() {
    return read<ServiceProvider>().getRequired();
  }

  Locale get locale => Localizations.localeOf(this);
}
