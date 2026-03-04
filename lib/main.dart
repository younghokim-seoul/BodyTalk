import 'dart:async';

import 'package:bodytalk/di/injection_container.dart' as di;
import 'package:bodytalk/presentation/splash/splash_screen.dart';
import 'package:bodytalk/presentation/util/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterError.onError = _handleFlutterError;

  await runZonedGuarded(
    () async {
      await di.init();
      _initLoadingIndicator();
      runApp(const MyApp());
    },
    _logUnhandledError,
  );
}

void _initLoadingIndicator() {
  EasyLoading.instance
    ..indicatorType = EasyLoadingIndicatorType.ring
    ..loadingStyle = EasyLoadingStyle.custom
    ..backgroundColor = Colors.transparent
    ..boxShadow = []
    ..indicatorColor = Colors.white
    ..maskType = EasyLoadingMaskType.black
    ..maskColor = Colors.transparent
    ..textColor = Colors.white
    ..dismissOnTap = false;
}

void _handleFlutterError(FlutterErrorDetails details) {
  FlutterError.presentError(details);
  _logUnhandledError(details.exception, details.stack ?? StackTrace.empty);
}

void _logUnhandledError(Object error, StackTrace stackTrace) {
  debugPrint('Unhandled error: $error');
  debugPrintStack(stackTrace: stackTrace);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BodyTalk',
      themeMode: ThemeMode.light,
      theme: ThemeData.light(),
      home: const SplashScreen(),
      builder: EasyLoading.init(
        builder: (context, child) {
          AppSize.init(context);
          return child!;
        },
      ),
    );
  }
}
