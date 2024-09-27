import 'dart:async';

import 'package:app/presentation.dart';
import 'package:shared_app/domain.dart';

const _limit = 20;
const _previewLimit = 8;

final class ThemesLogic extends Logic {
  ThemesLogic(super.context);

  final themesNotifier = DataNotifier<List<BrandingTheme>>();

  @override
  Future<void> initLogic() async {
    super.initLogic();

    await themesNotifier.loadData(
      getRequired<BrandingService>().getThemes(
        limit: _limit,
        previewLimit: _previewLimit,
      ),
    );
  }

  @override
  void disposeLogic() {
    themesNotifier.dispose();
    super.disposeLogic();
  }

  void openTheme(BrandingTheme theme) {
    context.read<BrandingLogic>()
      ..selectCategory(theme.toCategory())
      ..loadSearchResults();
  }
}
