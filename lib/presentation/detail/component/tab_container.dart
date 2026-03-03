part of '../detail_screen.dart';

class _TabBar extends StatelessWidget {
  const _TabBar({super.key, required this.controller});

  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.white,
      child: Stack(
        children: [
          TabBar(
            controller: controller,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            labelPadding: const EdgeInsets.symmetric(horizontal: 4.0),
            dividerColor: AppColors.transparent,
            tabs: [
              ...ContentsDetailTabType.values
                  .map(
                    (tab) => Tab(
                      height: 48,
                      text: tab.displayStr,
                    ),
                  )
                  .toList(),
            ],
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(color: AppColors.primaryAccent, width: 3.0),
              insets: EdgeInsets.zero,
            ),
            indicatorSize: TabBarIndicatorSize.tab,
            onTap: (_) {
              FocusScope.of(context).unfocus();
            },
            overlayColor: WidgetStateProperty.all<Color>(AppColors.transparent),
            labelColor: AppColors.slate900,
            unselectedLabelColor: AppColors.slate400,
            labelStyle: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.5,
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.5,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 1.0,
              color: AppColors.slate100,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
