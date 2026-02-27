import 'package:bodytalk/presentation/home/home_tab_type.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: HomeTabType.values.length,
      child: Scaffold(
        backgroundColor: const Color(0xFFF9FAFB),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              decoration: const BoxDecoration(
                color: Color(0xFFFEF3C7),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(32),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Gap(20),
                  TabBar(
                    splashFactory: NoSplash.splashFactory,
                    overlayColor: WidgetStateProperty.all(Colors.transparent),
                    indicatorColor: const Color(0xFF1F2937),
                    indicatorWeight: 4,
                    indicatorSize: TabBarIndicatorSize.label,
                    labelColor: const Color(0xFF1F2937),
                    labelStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    unselectedLabelColor: const Color(0xFF9E9E9E),
                    unselectedLabelStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    dividerColor: Colors.transparent,
                    tabs: HomeTabType.values.map((tab) {
                      return Tab(text: tab.label, height: 56);
                    }).toList(),
                  ),
                ],
              ),
            ),

            const Expanded(
              child: TabBarView(
                children: [
                  Center(child: Text('주차별 학습 콘텐츠가 들어갈 자리입니다.')),

                  Center(child: Text('마이페이지 콘텐츠가 들어갈 자리입니다.')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
