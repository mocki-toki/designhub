import 'package:shared_app/domain.dart';
import 'package:shared_app/presentation.dart';

extension DailyLinkTypeExtension on DailyLinkType {
  String translate(BuildContext context, bool isMultiple) {
    return SharedAppLocalizations.of(context)
        .map['daily_link_type_${name}${isMultiple ? '_multiple' : ''}']!;
  }
}
