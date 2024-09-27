import 'dart:async';

import 'package:app/presentation.dart';
import 'package:shared_app/domain.dart';

const _limit = 50;
const _childrenLimit = 8;

final class ProjectDetailsLogic extends Logic {
  ProjectDetailsLogic(super.context, this.uuid, this.cachedData);

  final UuidValue uuid;
  final BrandingProject? cachedData;

  final scrollController = ScrollController();
  final projectNotifier = DataNotifier<BrandingProject>();
  final postListNotifier = DataNotifier<PaginatedList<BrandingPost>>();

  Timer? _timer;
  bool _guard = false;

  @override
  Future<void> initLogic() async {
    super.initLogic();

    await projectNotifier.loadData(
      getRequired<BrandingService>()
          .getProjectById(uuid, childrenLimit: _childrenLimit),
      cachedData: cachedData,
    );

    if (projectNotifier.value.isSuccess) {
      final project = projectNotifier.value.asSuccess!.data;
      if (project.nextChildrenCursor != null) {
        postListNotifier.value = DataStateSuccess(
          PaginatedList(project.children, project.nextChildrenCursor),
        );
        await postListNotifier.loadMore(
          getRequired<BrandingService>().getPosts(
            cursor: project.nextChildrenCursor,
            byProject: project.id,
            limit: _limit - _childrenLimit,
          ),
        );

        scrollController.addListener(() {
          if (scrollController.position.pixels >=
              scrollController.position.maxScrollExtent - 500) {
            loadMore();
          }
        });
      }
    }
  }

  @override
  void disposeLogic() {
    projectNotifier.dispose();
    _timer?.cancel();
    super.disposeLogic();
  }

  void _guarding() {
    _guard = true;
    _timer?.cancel();
    _timer = Timer(const Duration(milliseconds: 200), () {
      _guard = false;
    });
  }

  void loadMore() {
    if (projectNotifier.value.isSuccess &&
        postListNotifier.value.asSuccess?.data.nextCursor != null &&
        !_guard) {
      _guarding();
      final project = projectNotifier.value.asSuccess!.data;
      postListNotifier.loadMore(
        getRequired<BrandingService>().getPosts(
          cursor: postListNotifier.value.asSuccess?.data.nextCursor,
          byProject: project.id,
          limit: _limit,
        ),
      );
    }
  }
}
