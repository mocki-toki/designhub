import 'package:app/presentation.dart';

@RoutePage()
final class RootPage extends WidgetWithLogic<RootLogic> {
  const RootPage({super.key});

  @override
  logicBuilder(context) => RootLogic(context);

  @override
  Widget build(context, logic) {
    final _tabs = [
      _TabModel(
        title: context.appLocalizations.collectionTitle,
        path: 'daily',
        route: DailyRoute(),
      ),
      _TabModel(
        title: context.appLocalizations.brandingTitle,
        path: 'branding',
        route: BrandingRoute(),
      ),
      _TabModel(
        title: context.appLocalizations.bookmarksTitle,
        path: 'bookmarks',
        route: BrandingRoute(),
      ),
      _TabModel(
        title: context.appLocalizations.settingsTitle,
        path: 'settings',
        route: BrandingRoute(),
      ),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      body: Row(
        children: [
          ChangeNotifierProvider(
            create: (_) => _Notifier(),
            child: Consumer<_Notifier>(
              builder: (context, _, __) {
                return Container(
                  width: 308,
                  decoration: const BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        color: Color(0x33000000),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 19.5,
                      left: 60,
                      bottom: 22,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Clickable(
                          onTap: () => DailyRoute().push(context),
                          child: Image.asset(
                            'assets/images/logo.png',
                            package: 'shared_app',
                            height: 50,
                            width: 215,
                          ),
                        ),
                        const SizedBox(height: 40),
                        ...[
                          _TabWidget(_tabs[0]),
                          _TabWidget(_tabs[1]),
                          const Spacer(),
                          _TabWidget(_tabs[2]),
                          _TabWidget(_tabs[3]),
                        ].separated(const SizedBox(height: 9)),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const Expanded(
            child: AutoRouter(),
          ),
        ],
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
        router = context.innerRouterOf<StackRouter>(RootRoute.name);
      });
    });
  }

  @override
  Widget build(context) {
    final isCurrent =
        router?.stack.last.routeData.path.contains(widget.tab.path) ?? false;

    return Clickable(
      onTap: () {
        router?.push(widget.tab.route);
        context.read<_Notifier>().update();
      },
      child: Row(
        children: [
          Text(
            widget.tab.title,
            style: TextStyle(
              fontFamily: 'Cygre',
              fontWeight: FontWeight.w500,
              fontSize: 20,
              height: 32.34 / 20,
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

final class _Notifier extends ChangeNotifier {
  void update() {
    notifyListeners();
  }
}
