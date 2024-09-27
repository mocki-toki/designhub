// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

/// generated route for
/// [BrandingPage]
class BrandingRoute extends PageRouteInfo<void> {
  const BrandingRoute({List<PageRouteInfo>? children})
      : super(
          BrandingRoute.name,
          initialChildren: children,
        );

  static const String name = 'BrandingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BrandingPage();
    },
  );
}

/// generated route for
/// [DailyPage]
class DailyRoute extends PageRouteInfo<void> {
  const DailyRoute({List<PageRouteInfo>? children})
      : super(
          DailyRoute.name,
          initialChildren: children,
        );

  static const String name = 'DailyRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DailyPage();
    },
  );
}

/// generated route for
/// [ProjectDetailsPage]
class ProjectDetailsRoute extends PageRouteInfo<ProjectDetailsRouteArgs> {
  ProjectDetailsRoute({
    required String id,
    Key? key,
    BrandingProject? cachedData,
    List<PageRouteInfo>? children,
  }) : super(
          ProjectDetailsRoute.name,
          args: ProjectDetailsRouteArgs(
            id: id,
            key: key,
            cachedData: cachedData,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'ProjectDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ProjectDetailsRouteArgs>(
          orElse: () =>
              ProjectDetailsRouteArgs(id: pathParams.getString('id')));
      return ProjectDetailsPage(
        args.id,
        key: args.key,
        cachedData: args.cachedData,
      );
    },
  );
}

class ProjectDetailsRouteArgs {
  const ProjectDetailsRouteArgs({
    required this.id,
    this.key,
    this.cachedData,
  });

  final String id;

  final Key? key;

  final BrandingProject? cachedData;

  @override
  String toString() {
    return 'ProjectDetailsRouteArgs{id: $id, key: $key, cachedData: $cachedData}';
  }
}

/// generated route for
/// [ProjectsPage]
class ProjectsRoute extends PageRouteInfo<void> {
  const ProjectsRoute({List<PageRouteInfo>? children})
      : super(
          ProjectsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProjectsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProjectsPage();
    },
  );
}

/// generated route for
/// [RootPage]
class RootRoute extends PageRouteInfo<void> {
  const RootRoute({List<PageRouteInfo>? children})
      : super(
          RootRoute.name,
          initialChildren: children,
        );

  static const String name = 'RootRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RootPage();
    },
  );
}

/// generated route for
/// [StudiosPage]
class StudiosRoute extends PageRouteInfo<void> {
  const StudiosRoute({List<PageRouteInfo>? children})
      : super(
          StudiosRoute.name,
          initialChildren: children,
        );

  static const String name = 'StudiosRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const StudiosPage();
    },
  );
}

/// generated route for
/// [ThemesPage]
class ThemesRoute extends PageRouteInfo<void> {
  const ThemesRoute({List<PageRouteInfo>? children})
      : super(
          ThemesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ThemesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ThemesPage();
    },
  );
}
