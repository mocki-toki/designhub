import 'package:app/infrastructure.dart';
import 'package:app/presentation.dart';

final class Application extends StatelessWidget {
  const Application(this.serviceProvider, {super.key});

  final ServiceProvider serviceProvider;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider.value(value: serviceProvider),
      ],
      child: MaterialApp.router(
        localizationsDelegates: {
          ...SharedAppLocalizations.localizationsDelegates,
          ...AppLocalizations.localizationsDelegates,
        }.toList(),
        supportedLocales: {
          ...SharedAppLocalizations.supportedLocales,
          ...AppLocalizations.supportedLocales,
        }.toList(),
        scaffoldMessengerKey: serviceProvider
            .getRequired<ScaffoldMessengerProvider>()
            .scaffoldMessengerKey,
        debugShowCheckedModeBanner: false,
        routerConfig: serviceProvider.getRequired<AppRouter>().config(
            reevaluateListenable: serviceProvider.get<AdminSessionNotifier>()),
        title: 'Designgersss',
      ),
    );
  }
}
