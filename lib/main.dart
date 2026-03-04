import 'dart:async';

import 'package:bodytalk/di/injection_container.dart' as di;
import 'package:bodytalk/presentation/util/app_size.dart';
import 'package:bodytalk/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  _initLoadingIndicator();
  runApp(const MyApp());
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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'BodyTalk',
      themeMode: ThemeMode.light,
      theme: ThemeData.light(),
      routerConfig: AppRouter.router,
      builder: EasyLoading.init(
        builder: (context, child) {
          AppSize.init(context);
          return child ?? const SizedBox.shrink();
        },
      ),
    );
  }
}
