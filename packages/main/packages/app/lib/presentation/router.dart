import 'package:app/domain.dart';
import 'package:app/presentation.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
final class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes {
    return [
      CustomRoute(
        page: RootRoute.page,
        initial: true,
        path: '/',
        transitionsBuilder: _transitionsBuilder,
        children: [
          RedirectRoute(path: '', redirectTo: 'daily'),
          CustomRoute(
            page: DailyRoute.page,
            path: 'daily',
            transitionsBuilder: _transitionsBuilder,
          ),
          CustomRoute(
            page: BrandingRoute.page,
            path: 'branding',
            transitionsBuilder: _transitionsBuilder,
            children: [
              RedirectRoute(path: '', redirectTo: 'projects'),
              CustomRoute(
                page: ProjectsRoute.page,
                path: 'projects',
                transitionsBuilder: _transitionsBuilder,
              ),
              CustomRoute(
                page: StudiosRoute.page,
                path: 'studios',
                transitionsBuilder: _transitionsBuilder,
              ),
              CustomRoute(
                page: ThemesRoute.page,
                path: 'themes',
                transitionsBuilder: _transitionsBuilder,
              ),
            ],
          ),
          CustomRoute(
            page: ProjectDetailsRoute.page,
            path: 'branding/project/:id',
            transitionsBuilder: _transitionsBuilder,
          ),
        ],
      ),
    ];
  }
}

Widget _transitionsBuilder(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  return Stack(
    children: [
      FadeTransition(
        opacity: Tween<double>(
          begin: 1.0,
          end: 0.0,
        ).animate(CurvedAnimation(
          parent: secondaryAnimation,
          curve: const Interval(0.0, 0.5, curve: Curves.easeInOut),
        )),
        child: secondaryAnimation.isDismissed ? Container() : child,
      ),
      FadeTransition(
        opacity: Tween<double>(
          begin: 0.0,
          end: 1.0,
        ).animate(CurvedAnimation(
          parent: animation,
          curve: const Interval(0.5, 1.0, curve: Curves.easeInOut),
        )),
        child: secondaryAnimation.isDismissed ? child : Container(),
      ),
    ],
  );
}
