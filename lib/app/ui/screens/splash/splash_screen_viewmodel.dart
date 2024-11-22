import 'package:cinescope/app/navigation/navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class SplashScreenViewModel {
  void gotoMain(BuildContext context) {
    context.goNamed(AppRoute.main);
  }
}
