part of '../detail_screen.dart';

class _TabBar extends StatelessWidget {
  const _TabBar({super.key, required this.controller});

  final TabController controller;

  @override
  Widget build(BuildContext context) {
    // HTML 시안에 정의된 Tailwind 색상 매핑
    const Color primaryColor = Color(0xFFFAF738); // bg-primary
    const Color slate900 = Color(0xFF0F172A); // text-slate-900
    const Color slate400 = Color(0xFF94A3B8); // text-slate-400
    const Color slate100 = Color(0xFFF1F5F9); // border-slate-100

    return ColoredBox(
      color: Colors.white,
      child: Stack(
        children: [
          TabBar(
            controller: controller,
            // HTML의 px-4 반영
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            // HTML의 gap-2 효과를 위해 탭 사이 간격 조정
            labelPadding: const EdgeInsets.symmetric(horizontal: 4.0),

            // Stack으로 직접 그릴 것이므로 기본 divider는 투명 처리
            dividerColor: Colors.transparent,

            // 탭 목록 (기존 데이터 구조 유지)
            tabs: [
              ...ContentsDetailTabType.values
                  .map(
                    (tab) => Tab(
                      // HTML의 pt-4, pb-3 느낌을 맞추기 위해 탭 높이 지정
                      height: 48,
                      text: tab.displayStr,
                    ),
                  )
                  .toList(),
            ],

            // HTML: border-b-[3px] border-primary
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(color: primaryColor, width: 3.0),
              // indicator가 탭 크기에 꽉 차게 설정
              insets: EdgeInsets.zero,
            ),
            indicatorSize: TabBarIndicatorSize.tab,

            onTap: (_) {
              FocusScope.of(context).unfocus();
            },

            // 클릭 시 배경색 오버레이 효과 (선택사항, 투명으로 깔끔하게 처리)
            overlayColor: WidgetStateProperty.all<Color>(Colors.transparent),

            // HTML 텍스트 색상
            labelColor: slate900,
            unselectedLabelColor: slate400,

            // HTML 폰트 스타일 (text-sm font-bold tracking-wide)
            labelStyle: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.5, // tracking-wide 효과
              fontFamily: 'Lexend', // HTML의 font-display
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.5,
              fontFamily: 'Lexend',
            ),
          ),

          /// DIVIDER (HTML: 하단 전체를 가로지르는 border-b border-slate-100)
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 1.0,
              color: slate100,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
