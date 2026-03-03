import 'package:bodytalk/presentation/detail/component/plan_tab_view.dart';
import 'package:bodytalk/presentation/detail/content_detail_tab_type.enum.dart';
import 'package:bodytalk/presentation/detail/component/sticky_container.dart';
import 'package:bodytalk/presentation/util/app_size.dart';
import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

part 'component/tab_container.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();

  static const double tabBarHeight = 48;
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return HookBuilder(
      builder: (context) {
        final tabController = useTabController(initialLength: 3);

        return GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Scaffold(
            backgroundColor: const Color(0xFFFDFDFD),
            body: SafeArea(
              child: DefaultTabController(
                length: ContentsDetailTabType.values.length,
                child: NotificationListener<ScrollNotification>(
                  onNotification: (notification) {
                    if (notification.metrics.axisDirection ==
                        AxisDirection.left ||
                        notification.metrics.axisDirection ==
                            AxisDirection.right) {
                      return true;
                    }
                    if ((tabController.animation?.isAnimating ?? true) ||
                        tabController.index == 1) {
                      return true;
                    }
                    return false;
                  },
                  child: ExtendedNestedScrollView(
                    pinnedHeaderSliverHeightBuilder: () {
                      return (AppSize.screenWidth * 9 / 16) +
                          AppSize.statusBarHeight -
                          AppSize.ratioHeight(14);
                    },
                    onlyOneScrollInBody: true,
                    physics: const NeverScrollableScrollPhysics(),
                    headerSliverBuilder: (context, innerBoxIsScrolled) {
                      return [
                        SliverAppBar(
                          backgroundColor: Colors.white,
                          elevation: 0.0,
                          automaticallyImplyLeading: false,
                          leading: Center(
                            child: InkWell(
                              borderRadius: BorderRadius.circular(20),
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: const SizedBox(
                                width: 40,
                                height: 40,
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Color(0xFF0F172A),
                                ),
                              ),
                            ),
                          ),
                          title: const Text(
                            'Week 01: Master the Basics',
                            style: TextStyle(
                              color: Color(0xFF0F172A),
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.5,
                            ),
                          ),
                          bottom: PreferredSize(
                            preferredSize: const Size.fromHeight(1.0),
                            child: Container(
                              color: const Color(0xFFF1F5F9), // slate-100
                              height: 1.0,
                              width: double.infinity,
                            ),
                          ),
                        ),
                        SliverPersistentHeader(
                          pinned: true,
                          delegate: StickyDelegateContainer(
                            minHeight: AppSize.screenWidth * 9 / 16,
                            maxHeight: AppSize.screenWidth * 9 / 16,
                            child: Stack(
                              children: [
                                Container(
                                  color: Colors.blue,
                                  width: double.infinity,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SliverPersistentHeader(
                          pinned: true,
                          delegate: StickyDelegateContainer(
                            child: _TabBar(controller: tabController,),
                            minHeight: DetailScreen.tabBarHeight,
                            maxHeight: DetailScreen.tabBarHeight,
                          ),
                        ),
                      ];
                    },
                    body: TabBarView(
                      controller: tabController,
                      children: [
                        PlanTabView(),
                        Container(color: Colors.white),
                        Container(color: Colors.white),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
