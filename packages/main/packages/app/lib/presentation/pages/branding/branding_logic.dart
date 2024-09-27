import 'dart:async';

import 'package:app/domain.dart';
import 'package:app/presentation.dart';

const _limit = 50;

final class BrandingLogic extends Logic {
  BrandingLogic(super.context);

  final isOpenedSearchMenuNotifier = ValueNotifier(false);
  final selectedCategoryKeyNotifier = ValueNotifier(ThemeCategory.keyName);
  final selectedCategoriesNotifier = ValueNotifier<List<Category>>([]);

  final categoriesDataNotifier = DataNotifier<PaginatedList<Category>>();
  final searchResultsDataNotifier = DataNotifier<PaginatedList<BrandingPost>>();

  late final scrollController = ScrollController()..addListener(_onScroll);
  Timer? _timer;
  bool _antispamEnabled = false;

  @override
  Future<void> initLogic() async {
    super.initLogic();

    await categoriesDataNotifier.loadData(
      getRequired<CategoryService>().getCategoriesByKey(
        selectedCategoryKeyNotifier.value,
        limit: _limit,
      ),
    );
  }

  @override
  void disposeLogic() {
    isOpenedSearchMenuNotifier.dispose();
    selectedCategoryKeyNotifier.dispose();
    categoriesDataNotifier.dispose();

    scrollController.removeListener(_onScroll);
    scrollController.dispose();
    _timer?.cancel();

    super.disposeLogic();
  }

  void _antispam() {
    _antispamEnabled = true;
    _timer = Timer(const Duration(milliseconds: 200), () {
      _antispamEnabled = false;
    });
  }

  void _onScroll() {
    if (!categoriesDataNotifier.value.isSuccess) return;

    final hasNext = categoriesDataNotifier.value.asSuccess!.data.hasNext;
    if (scrollController.position.pixels >=
            scrollController.position.maxScrollExtent - 500 &&
        hasNext &&
        !_antispamEnabled) {
      _antispam();
      _loadMore();
    }
  }

  void openSearchMenu() => isOpenedSearchMenuNotifier.value = true;

  Future<void> closeSearchMenu() {
    isOpenedSearchMenuNotifier.value = false;
    return loadSearchResults();
  }

  Future<void> selectCategoryKey(String key) async {
    selectedCategoryKeyNotifier.value = key;
    await categoriesDataNotifier.loadData(
      getRequired<CategoryService>().getCategoriesByKey(
        selectedCategoryKeyNotifier.value,
        limit: _limit,
      ),
    );
  }

  void selectCategory(Category category) {
    selectedCategoriesNotifier.value = [
      ...selectedCategoriesNotifier.value,
      category,
    ];
  }

  void removeCategory(Category category) {
    selectedCategoriesNotifier.value = selectedCategoriesNotifier.value
        .where((c) => c.id != category.id)
        .toList();

    if (selectedCategoriesNotifier.value.isEmpty) {
      searchResultsDataNotifier.value = const DataStateInitial();
    } else {
      loadSearchResults();
    }
  }

  Future<void> _loadMore() async {
    await categoriesDataNotifier.loadMore(
      getRequired<CategoryService>().getCategoriesByKey(
        selectedCategoryKeyNotifier.value,
        cursor: categoriesDataNotifier.value.asSuccess?.data.nextCursor,
        limit: _limit,
      ),
    );
  }

  bool get isSearchResultsAvailable =>
      !searchResultsDataNotifier.value.isLoading &&
      !searchResultsDataNotifier.value.isLoadingMore &&
      selectedCategoriesNotifier.value.isNotEmpty;

  Future<void> loadSearchResults() async {
    if (!isSearchResultsAvailable) return;

    await searchResultsDataNotifier.loadData(
      getRequired<BrandingService>().getPosts(
        limit: _limit,
        byCategories:
            selectedCategoriesNotifier.value.map((c) => c.id).toList(),
      ),
    );
  }

  Future<void> loadMoreSearchResults() async {
    if (!searchResultsDataNotifier.value.isSuccess) return;

    await searchResultsDataNotifier.loadMore(
      getRequired<BrandingService>().getPosts(
        cursor: searchResultsDataNotifier.value.asSuccess!.data.nextCursor,
        limit: _limit,
        byCategories:
            selectedCategoriesNotifier.value.map((c) => c.id).toList(),
      ),
    );
  }

  void openPost(BrandingPost post) {
    context.navigateTo(
      ProjectDetailsRoute(id: post.parent!.id.uuid),
    );
  }
}
