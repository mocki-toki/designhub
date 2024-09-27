// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, implicit_dynamic_list_literal

import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../main.dart' as entrypoint;
import '../routes/index.dart' as index;
import '../routes/daily/dates.dart' as daily_dates;
import '../routes/daily/links/[date].dart' as daily_links_$date;
import '../routes/categories/[key].dart' as categories_$key;
import '../routes/branding/themes.dart' as branding_themes;
import '../routes/branding/studios.dart' as branding_studios;
import '../routes/branding/projects.dart' as branding_projects;
import '../routes/branding/posts.dart' as branding_posts;
import '../routes/branding/project/[id].dart' as branding_project_$id;
import '../routes/branding/post/[id].dart' as branding_post_$id;

import '../routes/_middleware.dart' as middleware;
import '../routes/daily/_middleware.dart' as daily_middleware;
import '../routes/categories/_middleware.dart' as categories_middleware;
import '../routes/branding/_middleware.dart' as branding_middleware;

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
    ..mount('/branding/post', (context) => buildBrandingPostHandler()(context))
    ..mount('/branding/project', (context) => buildBrandingProjectHandler()(context))
    ..mount('/branding', (context) => buildBrandingHandler()(context))
    ..mount('/categories', (context) => buildCategoriesHandler()(context))
    ..mount('/daily/links', (context) => buildDailyLinksHandler()(context))
    ..mount('/daily', (context) => buildDailyHandler()(context))
    ..mount('/', (context) => buildHandler()(context));
  return pipeline.addHandler(router);
}

Handler buildBrandingPostHandler() {
  final pipeline = const Pipeline().addMiddleware(branding_middleware.middleware);
  final router = Router()
    ..all('/<id>', (context,id,) => branding_post_$id.onRequest(context,id,));
  return pipeline.addHandler(router);
}

Handler buildBrandingProjectHandler() {
  final pipeline = const Pipeline().addMiddleware(branding_middleware.middleware);
  final router = Router()
    ..all('/<id>', (context,id,) => branding_project_$id.onRequest(context,id,));
  return pipeline.addHandler(router);
}

Handler buildBrandingHandler() {
  final pipeline = const Pipeline().addMiddleware(branding_middleware.middleware);
  final router = Router()
    ..all('/themes', (context) => branding_themes.onRequest(context,))..all('/studios', (context) => branding_studios.onRequest(context,))..all('/projects', (context) => branding_projects.onRequest(context,))..all('/posts', (context) => branding_posts.onRequest(context,));
  return pipeline.addHandler(router);
}

Handler buildCategoriesHandler() {
  final pipeline = const Pipeline().addMiddleware(categories_middleware.middleware);
  final router = Router()
    ..all('/<key>', (context,key,) => categories_$key.onRequest(context,key,));
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

Handler buildHandler() {
  final pipeline = const Pipeline();
  final router = Router()
    ..all('/', (context) => index.onRequest(context,));
  return pipeline.addHandler(router);
}

