import 'package:bodytalk/di/injection_container.dart';
import 'package:bodytalk/presentation/detail/component/plan_tab_view.dart';
import 'package:bodytalk/presentation/detail/component/practice_tab_view.dart';
import 'package:bodytalk/presentation/detail/component/sticky_container.dart';
import 'package:bodytalk/presentation/detail/component/submit_tab_view.dart';
import 'package:bodytalk/presentation/detail/content_detail_tab_type.enum.dart';
import 'package:bodytalk/presentation/detail/detail_view_model.dart';
import 'package:bodytalk/presentation/util/app_colors.dart';
import 'package:bodytalk/presentation/util/app_size.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

part 'component/tab_container.dart';

class DetailScreen extends StatefulWidget {
  final int learningId;
  final int curriculumId;

  const DetailScreen({
    super.key,
    required this.learningId,
    required this.curriculumId,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();

  static const double tabBarHeight = 48;
}

class _DetailScreenState extends State<DetailScreen> {
  final _viewModel = it<DetailViewModel>();

  @override
  void initState() {
    super.initState();
    _viewModel.fetchDetailData(widget.learningId, widget.curriculumId);
  }

  @override
  void dispose() {
    _viewModel.disposeAll();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return HookBuilder(
      builder: (context) {
        final tabController = useTabController(initialLength: 3);

        return GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Scaffold(
            backgroundColor: AppColors.surface,
            body: SafeArea(
              child: _viewModel.state.ui(
                builder: (context, snapshot) {
                  final state = snapshot.data;
                  if (state == null ||
                      state.isLoading ||
                      state.detail == null) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  final detail = state.detail!;

                  return DefaultTabController(
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
                              backgroundColor: AppColors.white,
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
                                      color: AppColors.slate900,
                                    ),
                                  ),
                                ),
                              ),
                              title: Text(
                                detail.curriculum.description,
                                style: const TextStyle(
                                  color: AppColors.slate900,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -0.5,
                                ),
                              ),
                              bottom: PreferredSize(
                                preferredSize: const Size.fromHeight(1.0),
                                child: Container(
                                  color: AppColors.slate100,
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
                                child: CachedNetworkImage(
                                  imageUrl: detail.curriculum.image,
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) =>
                                      Container(color: AppColors.gray200),
                                  errorWidget: (context, url, error) =>
                                      const Icon(Icons.error),
                                ),
                              ),
                            ),
                            SliverToBoxAdapter(
                              child: Container(
                                color: AppColors.white,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 20,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      detail.curriculum.note,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w900,
                                        color: AppColors.primaryYellow,
                                        letterSpacing: 1.2,
                                      ),
                                    ),
                                    const Gap(4),
                                    Text(
                                      detail.curriculum.description,
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.slate900,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SliverPersistentHeader(
                              pinned: true,
                              delegate: StickyDelegateContainer(
                                child: _TabBar(controller: tabController),
                                minHeight: DetailScreen.tabBarHeight,
                                maxHeight: DetailScreen.tabBarHeight,
                              ),
                            ),
                          ];
                        },
                        body: TabBarView(
                          controller: tabController,
                          children: [
                            PlanTabView(
                              detail: detail,
                              learningId: widget.learningId,
                              curriculumId: widget.curriculumId,
                            ),
                            PracticeTabView(
                              detail: detail,
                              learningId: widget.learningId,
                              curriculumId: widget.curriculumId,
                            ),
                            SubmitTabView(
                              detail: detail,
                              learningId: widget.learningId,
                              curriculumId: widget.curriculumId,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
