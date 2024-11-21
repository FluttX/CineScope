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
      builder: (context, state) {
        return SplashScreen(
          viewModel: SplashScreenViewModel(),
        );
      },
    ),
  ];
}
