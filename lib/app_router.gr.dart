// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:untitled8/features/home/detail_screen.dart' as _i1;
import 'package:untitled8/features/home/home_screen.dart' as _i2;
import 'package:untitled8/features/home/likes_screen.dart' as _i3;
import 'package:untitled8/features/home/user_screen.dart' as _i5;
import 'package:untitled8/features/navigation_screen.dart' as _i4;

/// generated route for
/// [_i1.DetailScreen]
class DetailRoute extends _i6.PageRouteInfo<DetailRouteArgs> {
  DetailRoute({
    _i7.Key? key,
    required int id,
    List<_i6.PageRouteInfo>? children,
  }) : super(
         DetailRoute.name,
         args: DetailRouteArgs(key: key, id: id),
         initialChildren: children,
       );

  static const String name = 'DetailRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DetailRouteArgs>();
      return _i1.DetailScreen(key: args.key, id: args.id);
    },
  );
}

class DetailRouteArgs {
  const DetailRouteArgs({this.key, required this.id});

  final _i7.Key? key;

  final int id;

  @override
  String toString() {
    return 'DetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomeScreen();
    },
  );
}

/// generated route for
/// [_i3.LikesScreen]
class LikesRoute extends _i6.PageRouteInfo<void> {
  const LikesRoute({List<_i6.PageRouteInfo>? children})
    : super(LikesRoute.name, initialChildren: children);

  static const String name = 'LikesRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.LikesScreen();
    },
  );
}

/// generated route for
/// [_i4.NavigationScreen]
class NavigationRoute extends _i6.PageRouteInfo<void> {
  const NavigationRoute({List<_i6.PageRouteInfo>? children})
    : super(NavigationRoute.name, initialChildren: children);

  static const String name = 'NavigationRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.NavigationScreen();
    },
  );
}

/// generated route for
/// [_i5.UserScreen]
class UserRoute extends _i6.PageRouteInfo<void> {
  const UserRoute({List<_i6.PageRouteInfo>? children})
    : super(UserRoute.name, initialChildren: children);

  static const String name = 'UserRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.UserScreen();
    },
  );
}
