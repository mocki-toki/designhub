import 'package:app/presentation.dart';

@RoutePage()
final class BrandingPage extends WidgetWithLogic<BrandingLogic> {
  const BrandingPage({super.key});

  @override
  logicBuilder(context) => BrandingLogic(context);

  @override
  Widget build(context, logic) {
    return Scaffold(
      body: logic.dataNotifier.when(
        success: (profile) {
          return const Text('Branding Page');
        },
      ),
    );
  }
}
