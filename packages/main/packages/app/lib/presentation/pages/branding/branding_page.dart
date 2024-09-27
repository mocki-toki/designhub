import 'package:app/domain.dart';
import 'package:app/presentation.dart';

@RoutePage()
final class BrandingPage extends WidgetWithLogic<BrandingLogic> {
  const BrandingPage({super.key});

  @override
  logicBuilder(context) => BrandingLogic(context);

  @override
  Widget build(context, logic) {
    final _tabs = [
      _TabModel(
        title: context.appLocalizations.projectsTitle,
        path: 'projects',
        route: ProjectsRoute(),
      ),
      _TabModel(
        title: context.appLocalizations.studiosTitle,
        path: 'studios',
        route: StudiosRoute(),
      ),
      _TabModel(
        title: context.appLocalizations.themesTitle,
        path: 'themes',
        route: ThemesRoute(),
      ),
    ];

    final _categories = <String, String>{
      ThemeCategory.keyName: context.appLocalizations.theme,
      MediaCategory.keyName: context.appLocalizations.media,
      ColorCategory.keyName: context.appLocalizations.pallete,
      StyleCategory.keyName: context.appLocalizations.style,
      FontCategory.keyName: context.appLocalizations.fonts,
    };

    return ValueListenableBuilder(
      valueListenable: logic.selectedCategoriesNotifier,
      builder: (context, selectedCategories, _) => Scaffold(
        backgroundColor: const Color(0xFFFBFBFB),
        body: logic.searchResultsDataNotifier.builder(
          builder: (context, searchedPosts, _) => Column(
            children: [
              ValueListenableBuilder(
                  valueListenable: logic.isOpenedSearchMenuNotifier,
                  builder: (context, isOpened, _) {
                    return PortalTarget(
                      visible: isOpened,
                      anchor: const Filled(),
                      portalFollower: GestureDetector(
                        onTap: logic.closeSearchMenu,
                        child: PlayAnimationBuilder<double>(
                          tween: Tween(begin: 0, end: 1),
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.fastOutSlowIn,
                          builder: (context, value, child) {
                            return Opacity(opacity: value, child: child);
                          },
                          child: Container(color: Colors.black26),
                        ),
                      ),
                      child: PortalTarget(
                        visible: isOpened,
                        anchor: const Aligned(
                          follower: Alignment.topLeft,
                          target: Alignment.topLeft,
                          offset: Offset(-308, 0),
                        ),
                        portalFollower: Padding(
                          padding: const EdgeInsets.only(left: 307),
                          child: PlayAnimationBuilder<double>(
                            tween: Tween(begin: 90, end: 500),
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.fastOutSlowIn,
                            builder: (context, value, child) {
                              return Container(
                                width: double.infinity,
                                height: value,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: child,
                              );
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  height: 84,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 16,
                                  ),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Color(0x33000000),
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: ListView(
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            for (final category
                                                in selectedCategories)
                                              Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 16,
                                                  vertical: 12,
                                                ),
                                                margin: const EdgeInsets.only(
                                                    right: 10),
                                                decoration: const BoxDecoration(
                                                  color: Color(0xFF000000),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      category.value,
                                                      style: const TextStyle(
                                                        fontFamily: 'Cygre',
                                                        color:
                                                            Color(0xFFFBFBFB),
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        height: 24.2 / 22,
                                                      ),
                                                    ),
                                                    const SizedBox(width: 10),
                                                    Clickable(
                                                      onTap: () =>
                                                          logic.removeCategory(
                                                              category),
                                                      child: const Icon(
                                                        Icons.close,
                                                        size: 18,
                                                        color:
                                                            Color(0xFFFBFBFB),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            if (selectedCategories.isEmpty)
                                              Text(
                                                context.appLocalizations.search,
                                                style: const TextStyle(
                                                  fontFamily: 'Cygre',
                                                  color: Color(0xFFC9C9C9),
                                                  fontSize: 32,
                                                  fontWeight: FontWeight.w500,
                                                  height: 51.74 / 32,
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                      Clickable(
                                        onTap: !logic.isSearchResultsAvailable
                                            ? null
                                            : logic.closeSearchMenu,
                                        child: const Icon(
                                          Icons.arrow_forward,
                                          size: 32,
                                          color: Color(0xFF000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Container(
                                        width: 270,
                                        decoration: const BoxDecoration(
                                          border: Border(
                                            right: BorderSide(
                                              color: Color(0x33000000),
                                            ),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: ValueListenableBuilder(
                                              valueListenable: logic
                                                  .selectedCategoryKeyNotifier,
                                              builder:
                                                  (context, selectedKey, _) {
                                                return ListView.separated(
                                                  itemCount: _categories.length,
                                                  itemBuilder:
                                                      (context, index) {
                                                    final key = _categories.keys
                                                        .elementAt(index);
                                                    final selectedIndex =
                                                        _categories.keys
                                                            .toList()
                                                            .indexOf(
                                                                selectedKey);

                                                    return Clickable(
                                                      onTap: () => logic
                                                          .selectCategoryKey(
                                                              _categories.keys
                                                                  .elementAt(
                                                                      index)),
                                                      child: Text(
                                                        _categories[key]!,
                                                        style: TextStyle(
                                                          fontFamily: 'Cygre',
                                                          color: selectedIndex ==
                                                                  index
                                                              ? const Color(
                                                                  0xFF000000)
                                                              : const Color(
                                                                  0xFF979797),
                                                          fontSize: 26,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height: 42.04 / 26,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                  separatorBuilder: (_, __) =>
                                                      const SizedBox(height: 6),
                                                );
                                              }),
                                        ),
                                      ),
                                      Expanded(
                                        child:
                                            logic.categoriesDataNotifier.when(
                                          success: (data) => ListView.separated(
                                            controller: logic.scrollController,
                                            padding: const EdgeInsets.all(20),
                                            itemCount: data.length,
                                            itemBuilder: (context, index) {
                                              final category = data[index];

                                              return Clickable(
                                                onTap: selectedCategories
                                                        .contains(category)
                                                    ? null
                                                    : () =>
                                                        logic.selectCategory(
                                                            category),
                                                child: Text(
                                                  category.value,
                                                  style: const TextStyle(
                                                    fontFamily: 'Cygre',
                                                    color: Color(0xFF000000),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500,
                                                    height: 29.11 / 18,
                                                  ),
                                                ),
                                              );
                                            },
                                            separatorBuilder: (_, __) =>
                                                const SizedBox(height: 6),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 16,
                          ),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color(0x33000000),
                              ),
                            ),
                          ),
                          child: Expanded(
                            child: Row(
                              children: [
                                Clickable(
                                  onTap: logic.openSearchMenu,
                                  child: Text.rich(
                                    TextSpan(
                                      style: const TextStyle(
                                        fontFamily: 'Cygre',
                                        color: Color(0xFF000000),
                                        fontSize: 32,
                                        fontWeight: FontWeight.w500,
                                        height: 51.74 / 32,
                                      ),
                                      children: [
                                        const WidgetSpan(
                                          child: Padding(
                                            padding: EdgeInsets.only(right: 20),
                                            child: Icon(
                                              Icons.search,
                                              size: 32,
                                              color: Color(0xFF000000),
                                            ),
                                          ),
                                          alignment:
                                              PlaceholderAlignment.baseline,
                                          baseline: TextBaseline.ideographic,
                                        ),
                                        if (selectedCategories.isEmpty)
                                          TextSpan(
                                            text:
                                                context.appLocalizations.search,
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                                for (final category in selectedCategories)
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 12,
                                    ),
                                    margin: const EdgeInsets.only(right: 10),
                                    decoration: const BoxDecoration(
                                      color: Color(0xFF000000),
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          category.value,
                                          style: const TextStyle(
                                            fontFamily: 'Cygre',
                                            color: Color(0xFFFBFBFB),
                                            fontSize: 22,
                                            fontWeight: FontWeight.w500,
                                            height: 24.2 / 22,
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Clickable(
                                          onTap: () =>
                                              logic.removeCategory(category),
                                          child: const Icon(
                                            Icons.close,
                                            size: 18,
                                            color: Color(0xFFFBFBFB),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
              if (searchedPosts.isInitial) ...[
                ChangeNotifierProvider(
                  create: (_) => _Notifier(),
                  child: Consumer<_Notifier>(
                    builder: (context, _, __) {
                      return Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            for (final tab in _tabs) _TabWidget(tab),
                          ].separated(const SizedBox(width: 32)),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: Provider<BrandingLogic>.value(
                    value: logic,
                    child: const AutoRouter(),
                  ),
                ),
              ],
              if (!searchedPosts.isInitial) ...[
                Expanded(
                  child: searchedPosts.whenOrDefault(
                    context,
                    success: (posts, failure) => SearchedPostsViewer(
                      posts,
                      onPostPressed: logic.openPost,
                      onEndReached: logic.loadMoreSearchResults,
                      isHasMore: failure == null,
                    ),
                    loadingMore: (posts) => SearchedPostsViewer(
                      posts,
                      onPostPressed: logic.openPost,
                      onEndReached: logic.loadMoreSearchResults,
                      isHasMore: true,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

final class _TabWidget extends StatefulWidget {
  const _TabWidget(this.tab);
  final _TabModel tab;

  @override
  State<_TabWidget> createState() => _TabWidgetState();
}

final class _TabWidgetState extends State<_TabWidget> {
  StackRouter? router;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        router = context.innerRouterOf<StackRouter>(BrandingRoute.name);
      });
    });
  }

  @override
  Widget build(context) {
    final isCurrent =
        router?.stack.last.routeData.path.contains(widget.tab.path) ?? false;

    return Clickable(
      onTap: () {
        setState(() {
          router?.push(widget.tab.route);
          context.read<_Notifier>().update();
        });
      },
      child: Row(
        children: [
          Text(
            widget.tab.title,
            style: TextStyle(
              fontFamily: 'Cygre',
              fontSize: 26,
              fontWeight: FontWeight.w500,
              height: 42.04 / 26,
              color: isCurrent ? Colors.black : const Color(0xFF9A9A9A),
            ),
          ),
        ],
      ),
    );
  }
}

final class _TabModel {
  const _TabModel({
    required this.title,
    required this.route,
    required this.path,
  });
  final String title;
  final PageRouteInfo route;
  final String path;
}

//TODO: refactor
final class _Notifier extends ChangeNotifier {
  void update() {
    notifyListeners();
  }
}
