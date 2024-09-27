import 'package:backend/domain.dart';
import 'package:backend/infrastructure.dart';

Handler middleware(Handler handler) {
  return handler.use(
    (handler) => (context) async {
      return handler(
        context.provide<BrandingService>(
          () => BrandingEndpoint(
            context.read<BrandingManager>(),
          ),
        ),
      );
    },
  );
}
