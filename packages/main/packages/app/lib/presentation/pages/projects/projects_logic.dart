import 'dart:async';

import 'package:app/presentation.dart';
import 'package:shared_app/domain.dart';

const _limit = 3;
const _childrenLimit = 8;

final class ProjectsLogic extends Logic {
  ProjectsLogic(super.context);

  final projectsNotifier = DataNotifier<PaginatedList<BrandingProject>>();

  @override
  Future<void> initLogic() async {
    super.initLogic();

    projectsNotifier.loadData(
      getRequired<BrandingService>().getProjects(
        limit: _limit,
        childrenLimit: _childrenLimit,
      ),
    );
  }

  @override
  void disposeLogic() {
    projectsNotifier.dispose();
    super.disposeLogic();
  }

  void loadMore() {
    projectsNotifier.loadMore(
      getRequired<BrandingService>().getProjects(
        cursor: projectsNotifier.value.asSuccess?.data.nextCursor,
        limit: _limit,
        childrenLimit: _childrenLimit,
      ),
    );
  }

  void openProject(BrandingProject value) {
    context.router.push(
      ProjectDetailsRoute(id: '${value.id}', cachedData: value),
    );
  }
}
