import 'package:cinescope/app/ui/screens/main/main.dart';
import 'package:cinescope/app/ui/screens/splash/splash.dart';
import 'package:go_router/go_router.dart';

import 'navigation.dart';

class AppRouterConfig {
  late final GoRouter router = GoRouter(
    routes: _routes,
    initialLocation: AppRoute.root,
  );

  void dispose() {}

  late final _routes = <RouteBase>[
    GoRoute(
      path: '/',
      name: AppRoute.root,
      builder: (_, __) => SplashScreen(viewModel: SplashScreenViewModel()),
    ),
    GoRoute(
      path: '/main',
      name: AppRoute.main,
      builder: (_, __) => MainScreen(viewModel: MainScreenViewModel()),
    ),
  ];
}
