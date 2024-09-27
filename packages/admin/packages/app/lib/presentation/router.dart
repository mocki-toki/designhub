import 'package:app/presentation.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
final class AppRouter extends RootStackRouter {
  AppRouter(this._adminSessionNotifier);

  final AdminSessionNotifier _adminSessionNotifier;

  @override
  List<AutoRoute> get routes {
    return [
      CustomRoute(
        page: RootRoute.page,
        initial: true,
        path: '/',
        children: [
          RedirectRoute(path: '', redirectTo: 'daily'),
          CustomRoute(
            page: DailyRoute.page,
            path: 'daily',
          ),
          CustomRoute(
            page: BrandingRoute.page,
            path: 'branding',
          ),
          CustomRoute(
            page: UsersRoute.page,
            path: 'users',
          ),
        ],
      ),
      CustomRoute(
        page: AuthorizationRoute.page,
        path: '/login',
      ),
    ];
  }

  @override
  late final List<AutoRouteGuard> guards = [
    AutoRouteGuard.simple(
      (resolver, router) {
        if (_adminSessionNotifier.value ||
            resolver.routeName == AuthorizationRoute.name) {
          resolver.next(true);
        } else {
          resolver.redirect(
            AuthorizationRoute(onResult: () => resolver.next(true)),
          );
        }
      },
    ),
  ];
}
