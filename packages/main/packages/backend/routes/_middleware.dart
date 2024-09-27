import 'package:backend/infrastructure.dart';
import 'package:shelf_cors_headers/shelf_cors_headers.dart' as shelf;
import 'package:shared_prisma_backend/client.dart';

import '../main.dart' as main;

Handler middleware(Handler handler) {
  return handler
      .use(_provideManagers())
      .use(_providePrisma())
      .use(
        fromShelfMiddleware(
          shelf.corsHeaders(
            headers: {
              shelf.ACCESS_CONTROL_ALLOW_ORIGIN: '*',
              shelf.ACCESS_CONTROL_ALLOW_METHODS:
                  'GET,PUT,POST,PATCH,DELETE,OPTIONS',
              shelf.ACCESS_CONTROL_ALLOW_HEADERS:
                  'Origin, Content-Type, Accept, Authorization',
            },
          ),
        ),
      )
      .use(requestLogger());
}

Middleware _providePrisma() {
  return (handler) {
    return (context) async {
      return handler(
        context.provide(() => main.prismaSharedClient),
      );
    };
  };
}

Middleware _provideManagers() {
  return (handler) {
    return (context) async {
      final categoryManager =
          CategoryManager(context.read<PrismaSharedClient>());
      final brandingManager = BrandingManager(
        context.read<PrismaSharedClient>(),
        categoryManager,
      );

      return handler(context
          .provide(() => DailyLinkManager(context.read<PrismaSharedClient>()))
          .provide(() => brandingManager)
          .provide(() => categoryManager));
    };
  };
}
