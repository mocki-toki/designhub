import 'package:app/infrastructure.dart';
import 'package:app/presentation.dart';

final class Application extends StatelessWidget {
  const Application(this.dependencies, {super.key});

  final ServiceProvider dependencies;

  @override
  Widget build(BuildContext context) {
    final _appRouter = dependencies.getRequired<AppRouter>();
    return MultiProvider(
      providers: [
        Provider.value(value: dependencies),
      ],
      child: Portal(
        child: MaterialApp.router(
          localizationsDelegates: {
            ...SharedAppLocalizations.localizationsDelegates,
            ...AppLocalizations.localizationsDelegates,
          }.toList(),
          supportedLocales: {
            ...SharedAppLocalizations.supportedLocales,
            ...AppLocalizations.supportedLocales,
          }.toList(),
          scaffoldMessengerKey: dependencies
              .getRequired<ScaffoldMessengerProvider>()
              .scaffoldMessengerKey,
          debugShowCheckedModeBanner: false,
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
          title: 'Designersss',
          scrollBehavior: const _ScrollBehavior(),
          locale: const Locale('ru'),
        ),
      ),
    );
  }
}

final class _ScrollBehavior extends ScrollBehavior {
  const _ScrollBehavior();
  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    switch (getPlatform(context)) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
      case TargetPlatform.android:
        return const BouncingScrollPhysics();
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return const ClampingScrollPhysics();
    }
  }
}
