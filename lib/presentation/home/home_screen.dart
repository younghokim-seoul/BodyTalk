import 'package:bodytalk/data/remote/model/learning/learning_model.dart';
import 'package:bodytalk/di/injection_container.dart';
import 'package:bodytalk/presentation/detail/component/sticky_container.dart';
import 'package:bodytalk/presentation/home/home_view_model.dart';
import 'package:bodytalk/presentation/util/app_colors.dart';
import 'package:bodytalk/router/router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _viewModel = it<HomeViewModel>();



  @override
  void initState() {
    super.initState();

    _viewModel.event.listen((event) {
      event.when(
        navToDetail: (learningId, curriculumId) {
          context.push('/detail/$learningId/$curriculumId');
        },
      );
    });
  }

  @override
  void dispose() {
    _viewModel.disposeAll();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppColors.gray100,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
      child: Scaffold(
        backgroundColor: AppColors.gray100,
        body: SafeArea(
          child: Center(
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.gray50,
                border: Border.symmetric(
                  vertical: BorderSide(color: AppColors.gray200),
                ),
              ),
              child: _viewModel.state.ui(
                builder: (context, snapshot) {
                  final state = snapshot.data;
                  if (state == null || state.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  final curriculums = state.curriculums;

                  return CustomScrollView(
                    physics: const BouncingScrollPhysics(),
                    slivers: [
                      // Notice Card
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: AppColors.gray100),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.05),
                                  blurRadius: 20,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: const Column(
                              children: [
                                Gap(5),
                                Text(
                                  '# 학습 유의사항',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.gray800,
                                  ),
                                ),
                                Gap(4),
                                Text(
                                  '지금 바로 연습을 시작해보세요!',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: AppColors.gray500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      // Section Title (Sticky)
                      SliverPersistentHeader(
                        floating: true,
                        pinned: true,
                        delegate: StickyDelegateContainer(
                          minHeight: 70,
                          maxHeight: 70,
                          child: Container(
                            color: AppColors.gray50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 48,
                                  height: 1,
                                  color: AppColors.gray300,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  child: Text(
                                    state.learningNm,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.gray700,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 48,
                                  height: 1,
                                  color: AppColors.gray300,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      // Curriculum List
                      SliverPadding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 40),
                        sliver: SliverList.builder(
                          itemCount: curriculums.length,
                          itemBuilder: (context, index) => _CurriculumCard(
                            item: curriculums[index],
                            onItemTap: (item) {
                               _viewModel.onTapCurriculum(item.id);
                            },
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _CurriculumCard extends StatelessWidget {
  final CurriculumModel item;
  final Function(CurriculumModel) onItemTap;

  const _CurriculumCard({required this.item, required this.onItemTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.gray100),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: InkWell(
        onTap: () => onItemTap(item),
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              CachedNetworkImage(
                imageUrl: item.image,
                imageBuilder: (context, imageProvider) => Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.black.withValues(alpha: 0.1),
                        BlendMode.darken,
                      ),
                    ),
                  ),
                ),
                placeholder: (context, url) => Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    color: AppColors.gray200,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  ),
                ),
                errorWidget: (context, url, error) => Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    color: AppColors.gray200,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.error_outline,
                    color: AppColors.gray400,
                  ),
                ),
              ),
              const Gap(16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.note,
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w900,
                        color: AppColors.primaryYellow,
                        letterSpacing: 1.2,
                      ),
                    ),
                    const Gap(2),
                    Text(
                      item.name,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: AppColors.gray800,
                      ),
                    ),
                    const Gap(2),
                    Text(
                      item.description,
                      style: const TextStyle(
                        fontSize: 12,
                        color: AppColors.gray400,
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right, color: AppColors.gray300),
            ],
          ),
        ),
      ),
    );
  }
}
