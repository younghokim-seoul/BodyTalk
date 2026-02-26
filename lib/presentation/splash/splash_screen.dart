import 'package:bodytalk/presentation/widget/logo/body_talk_logo.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFFDFDFD),
      body: SafeArea(
        child: Center(
          // 화면 정중앙에 공용 로고 위젯 배치
          child: BodyTalkLogo(),
        ),
      ),
    );
  }
}
