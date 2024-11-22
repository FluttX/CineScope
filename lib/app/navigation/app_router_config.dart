import 'package:cinescope/app/features/home/home.dart';
import 'package:cinescope/app/ui/screens/main/main.dart';
import 'package:cinescope/app/ui/screens/splash/splash.dart';
import 'package:cinescope/core/di/inject.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      builder: (_, __) => BlocProvider(
        create: (_) => HomeBloc(inject()),
        child: MainScreen(viewModel: MainScreenViewModel()),
      ),
    ),
  ];
}
