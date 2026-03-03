import 'package:bodytalk/di/injection_container.dart' as di;
import 'package:bodytalk/presentation/splash/splash_screen.dart';
import 'package:bodytalk/presentation/util/app_colors.dart';
import 'package:bodytalk/presentation/util/app_size.dart';
import 'package:flutter/material.dart';

import 'presentation/detail/detail_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppSize.init(context);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.themeSeed),
      ),
      home: const DetailScreen(),
    );
  }
}
