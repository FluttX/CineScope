import 'package:cinescope/library/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'splash.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, required this.viewModel});

  final SplashScreenViewModel viewModel;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 2));
      if (mounted) {
        widget.viewModel.gotoMain(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Container(
          height: 180,
          width: 180,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: AppColors.black.withOpacity(0.1),
                blurRadius: 4,
                spreadRadius: 2,
              )
            ],
            image: const DecorationImage(
              image: AssetImage(AppIcons.cineScopeLogo),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
