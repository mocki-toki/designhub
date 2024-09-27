import 'package:backend/infrastructure.dart';
import 'package:shelf_cors_headers/shelf_cors_headers.dart' as shelf;
import 'package:shared_prisma_backend/client.dart';
import 'package:prisma_backend/client.dart';

import '../main.dart' as main;

Handler middleware(Handler handler) {
  return handler
      .use(adminAuthentication())
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
        context
            .provide(() => main.prismaSharedClient)
            .provide(() => main.prismaAdminClient),
      );
    };
  };
}

Middleware _provideManagers() {
  return (handler) {
    return (context) async {
      return handler(
        context
            .provide(
                () => AdminSessionManager(context.read<PrismaAdminClient>()))
            .provide(
                () => AdminAccountManager(context.read<PrismaAdminClient>()))
            .provide(
                () => AdminProfileManager(context.read<PrismaAdminClient>()))
            .provide(
                () => DailyLinkManager(context.read<PrismaSharedClient>())),
      );
    };
  };
}
