// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, implicit_dynamic_list_literal

import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../main.dart' as entrypoint;
import '../routes/index.dart' as index;
import '../routes/sign-up/index.dart' as sign_up_index;
import '../routes/sign-out/index.dart' as sign_out_index;
import '../routes/sign-in/index.dart' as sign_in_index;
import '../routes/profile/[account_id].dart' as profile_$account_id;
import '../routes/daily/dates.dart' as daily_dates;
import '../routes/daily/links/[date].dart' as daily_links_$date;
import '../routes/account/[account_id].dart' as account_$account_id;

import '../routes/_middleware.dart' as middleware;
import '../routes/sign-up/_middleware.dart' as sign_up_middleware;
import '../routes/sign-out/_middleware.dart' as sign_out_middleware;
import '../routes/sign-in/_middleware.dart' as sign_in_middleware;
import '../routes/profile/_middleware.dart' as profile_middleware;
import '../routes/daily/_middleware.dart' as daily_middleware;
import '../routes/account/_middleware.dart' as account_middleware;

void main() async {
  final address = InternetAddress.tryParse('') ?? InternetAddress.anyIPv6;
  final port = int.tryParse(Platform.environment['PORT'] ?? '8080') ?? 8080;
  hotReload(() => createServer(address, port));
}

Future<HttpServer> createServer(InternetAddress address, int port) {
  final handler = Cascade().add(buildRootHandler()).handler;
  return entrypoint.run(handler, address, port);
}

Handler buildRootHandler() {
  final pipeline = const Pipeline().addMiddleware(middleware.middleware);
  final router = Router()
    ..mount('/account', (context) => buildAccountHandler()(context))
    ..mount('/daily/links', (context) => buildDailyLinksHandler()(context))
    ..mount('/daily', (context) => buildDailyHandler()(context))
    ..mount('/profile', (context) => buildProfileHandler()(context))
    ..mount('/sign-in', (context) => buildSignInHandler()(context))
    ..mount('/sign-out', (context) => buildSignOutHandler()(context))
    ..mount('/sign-up', (context) => buildSignUpHandler()(context))
    ..mount('/', (context) => buildHandler()(context));
  return pipeline.addHandler(router);
}

Handler buildAccountHandler() {
  final pipeline = const Pipeline().addMiddleware(account_middleware.middleware);
  final router = Router()
    ..all('/<account_id>', (context,account_id,) => account_$account_id.onRequest(context,account_id,));
  return pipeline.addHandler(router);
}

Handler buildDailyLinksHandler() {
  final pipeline = const Pipeline().addMiddleware(daily_middleware.middleware);
  final router = Router()
    ..all('/<date>', (context,date,) => daily_links_$date.onRequest(context,date,));
  return pipeline.addHandler(router);
}

Handler buildDailyHandler() {
  final pipeline = const Pipeline().addMiddleware(daily_middleware.middleware);
  final router = Router()
    ..all('/dates', (context) => daily_dates.onRequest(context,));
  return pipeline.addHandler(router);
}

Handler buildProfileHandler() {
  final pipeline = const Pipeline().addMiddleware(profile_middleware.middleware);
  final router = Router()
    ..all('/<account_id>', (context,account_id,) => profile_$account_id.onRequest(context,account_id,));
  return pipeline.addHandler(router);
}

Handler buildSignInHandler() {
  final pipeline = const Pipeline().addMiddleware(sign_in_middleware.middleware);
  final router = Router()
    ..all('/', (context) => sign_in_index.onRequest(context,));
  return pipeline.addHandler(router);
}

Handler buildSignOutHandler() {
  final pipeline = const Pipeline().addMiddleware(sign_out_middleware.middleware);
  final router = Router()
    ..all('/', (context) => sign_out_index.onRequest(context,));
  return pipeline.addHandler(router);
}

Handler buildSignUpHandler() {
  final pipeline = const Pipeline().addMiddleware(sign_up_middleware.middleware);
  final router = Router()
    ..all('/', (context) => sign_up_index.onRequest(context,));
  return pipeline.addHandler(router);
}

Handler buildHandler() {
  final pipeline = const Pipeline();
  final router = Router()
    ..all('/', (context) => index.onRequest(context,));
  return pipeline.addHandler(router);
}

