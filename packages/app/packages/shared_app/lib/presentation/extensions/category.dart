import 'package:shared_app/domain.dart';
import 'package:shared_app/presentation.dart';

extension CategoryExtension on Category {
  String translate(BuildContext context) {
    if (!value.startsWith('tr::')) return value;
    return SharedAppLocalizations.of(context)
        .map['category_${this.value.replaceFirst('tr::', '')}']!;
  }
}
