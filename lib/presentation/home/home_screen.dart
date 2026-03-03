import 'package:bodytalk/presentation/home/home_tab_type.dart';
import 'package:bodytalk/presentation/util/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: HomeTabType.values.length,
      child: Scaffold(
        backgroundColor: AppColors.gray50,
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              decoration: const BoxDecoration(
                color: AppColors.surfaceContainer,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(32),
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.black12,
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
                    overlayColor: WidgetStateProperty.all(AppColors.transparent),
                    indicatorColor: AppColors.gray800,
                    indicatorWeight: 4,
                    indicatorSize: TabBarIndicatorSize.label,
                    labelColor: AppColors.gray800,
                    labelStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    unselectedLabelColor: AppColors.gray500,
                    unselectedLabelStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    dividerColor: AppColors.transparent,
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
