import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
    // HomeScreen is generated as HomeRoute because
    // of the replaceInRouteName property
    AutoRoute(
      path: '/',
      page: NavigationRoute.page,
      initial: true,
      children: [
        RedirectRoute(path: '', redirectTo: 'home'),
        AutoRoute(path: 'home', page: HomeRoute.page),
        AutoRoute(path: 'likes', page: LikesRoute.page),
        AutoRoute(path: 'profile', page: UserRoute.page),
      ],
    ),
    AutoRoute(page: DetailRoute.page),
  ];

  @override
  List<AutoRouteGuard> get guards => [
    // optionally add root guards here
    AutoRouteGuard.simple((resolver, router) {
      resolver.next();
      // if(isAuthenticated || resolver.routeName == LoginRoute.name) {
      //   // we continue navigation
      //   resolver.next();
      // } else {
      //   // else we navigate to the Login page so we get authenticated
      //
      //   // tip: use resolver.redirectUntil to have the redirected route
      //   // automatically removed from the stack when the resolver is completed
      //   resolver.redirectUntil(LoginRoute(onResult: (didLogin) => resolver.next(didLogin)));
      // }
    }),
  ];
}
