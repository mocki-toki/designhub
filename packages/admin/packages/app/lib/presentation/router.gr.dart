// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

/// generated route for
/// [AuthorizationPage]
class AuthorizationRoute extends PageRouteInfo<AuthorizationRouteArgs> {
  AuthorizationRoute({
    Key? key,
    required VoidCallback onResult,
    List<PageRouteInfo>? children,
  }) : super(
          AuthorizationRoute.name,
          args: AuthorizationRouteArgs(
            key: key,
            onResult: onResult,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthorizationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AuthorizationRouteArgs>();
      return AuthorizationPage(
        key: args.key,
        onResult: args.onResult,
      );
    },
  );
}

class AuthorizationRouteArgs {
  const AuthorizationRouteArgs({
    this.key,
    required this.onResult,
  });

  final Key? key;

  final VoidCallback onResult;

  @override
  String toString() {
    return 'AuthorizationRouteArgs{key: $key, onResult: $onResult}';
  }
}

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
/// [UsersPage]
class UsersRoute extends PageRouteInfo<void> {
  const UsersRoute({List<PageRouteInfo>? children})
      : super(
          UsersRoute.name,
          initialChildren: children,
        );

  static const String name = 'UsersRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const UsersPage();
    },
  );
}
