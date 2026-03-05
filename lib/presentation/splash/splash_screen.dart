import 'package:bodytalk/di/injection_container.dart';
import 'package:bodytalk/presentation/splash/splash_view_model.dart';
import 'package:bodytalk/presentation/widget/logo/body_talk_logo.dart';
import 'package:bodytalk/presentation/util/app_colors.dart';
import 'package:bodytalk/router/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var viewModel = it<SplashViewModel>();

  @override
  void initState() {
    super.initState();

    viewModel.event.listen((event) {
      switch (event) {
        case SplashEvent.GO_LOGIN:
          context.go(AppRouter.loginPath);
          break;
        case SplashEvent.GO_MAIN:
          context.go(AppRouter.mainName);
          break;
      }
    });
    viewModel.loadState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.surface,
      body: SafeArea(child: Center(child: BodyTalkLogo())),
    );
  }
}
