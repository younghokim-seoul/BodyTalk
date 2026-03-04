import 'package:bodytalk/presentation/home/home_screen.dart';
import 'package:bodytalk/presentation/login/login_screen.dart';
import 'package:bodytalk/presentation/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

abstract final class AppRouter {
  static const String splashPath = '/splash';
  static const String splashName = 'splash';

  static const String loginPath = '/login';
  static const String loginName = 'login';

  static const String mainPath = '/main';
  static const String mainName = 'main';

  static final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: rootNavigatorKey,
    initialLocation: splashPath,
    routes: [
      GoRoute(
        path: splashPath,
        name: splashName,
        pageBuilder: (context, state) => CustomTransitionPage<void>(
          key: state.pageKey,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: Tween<double>(
                begin: 1.0,
                end: 0.0,
              ).animate(secondaryAnimation),
              child: child,
            );
          },
          child: const SplashScreen(),
        ),
      ),
      GoRoute(
        path: loginPath,
        name: loginName,
        pageBuilder: (context, state) => _buildFadeTransitionPage(
          key: state.pageKey,
          child: const LoginScreen(),
        ),
      ),
      GoRoute(
        path: mainPath,
        name: mainName,
        pageBuilder: (context, state) => _buildFadeTransitionPage(
          key: state.pageKey,
          child: const HomeScreen(),
        ),
      ),
    ],
  );
}

CustomTransitionPage<void> _buildFadeTransitionPage({
  required LocalKey key,
  required Widget child,
}) {
  return CustomTransitionPage<void>(
    key: key,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: Tween<double>(begin: 0.0, end: 1.0).animate(animation),
        child: child,
      );
    },
    child: child,
  );
}
