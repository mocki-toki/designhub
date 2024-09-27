import 'dart:async';

import 'package:app/presentation.dart';
import 'package:shared_app/domain.dart';

const _limit = 20;
const _previewLimit = 8;

final class StudiosLogic extends Logic {
  StudiosLogic(super.context);

  final studiosNotifier = DataNotifier<List<BrandingStudio>>();

  @override
  Future<void> initLogic() async {
    super.initLogic();

    await studiosNotifier.loadData(
      getRequired<BrandingService>().getStudios(
        limit: _limit,
        previewLimit: _previewLimit,
      ),
    );
  }

  @override
  void disposeLogic() {
    studiosNotifier.dispose();
    super.disposeLogic();
  }

  void openStudio(BrandingStudio studio) {
    context.read<BrandingLogic>()
      ..selectCategory(studio.toCategory())
      ..loadSearchResults();
  }
}
