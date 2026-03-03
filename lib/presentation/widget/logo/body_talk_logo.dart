import 'dart:math' as math;

import 'package:bodytalk/presentation/util/app_colors.dart';
import 'package:flutter/material.dart';

class BodyTalkLogo extends StatelessWidget {
  const BodyTalkLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.1,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _buildBubbleChar('B', AppColors.logoBlue, 72, rotateDeg: -6),
              const SizedBox(width: 2),
              _buildBubbleChar(
                'o',
                AppColors.logoGreen,
                48,
                rotateDeg: 3,
                paddingBottom: 12,
              ),
              const SizedBox(width: 2),
              _buildBubbleChar('D', AppColors.logoRed, 72, rotateDeg: -3),
              const SizedBox(width: 2),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  _buildBubbleChar('y', AppColors.logoPink, 72, rotateDeg: 6),
                  const Positioned(
                    top: -16,
                    right: -8,
                    child: Icon(
                      Icons.star,
                      size: 32,
                      color: AppColors.logoStarYellow,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    _buildBubbleChar('T', AppColors.logoYellow, 72, rotateDeg: 3),
                    Positioned(
                      bottom: 8,
                      left: -24,
                      child: Transform.rotate(
                        angle: 45 * math.pi / 180,
                        child: const Icon(
                          Icons.star,
                          size: 24,
                          color: AppColors.logoStarPink,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 2),
                _buildBubbleChar(
                  'a',
                  AppColors.logoPurpleLight,
                  60,
                  rotateDeg: -3,
                  paddingTop: 8,
                ),
                const SizedBox(width: 2),
                _buildBubbleChar('l', AppColors.logoPurple, 72, rotateDeg: 2),
                const SizedBox(width: 2),
                _buildBubbleChar('k', AppColors.logoOrange, 72, rotateDeg: -6),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBubbleChar(
    String char,
    Color color,
    double fontSize, {
    double rotateDeg = 0,
    double paddingTop = 0,
    double paddingBottom = 0,
  }) {
    final baseTextStyle = TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w900,
      height: 1.0,
      shadows: const [
        Shadow(
          color: AppColors.black05,
          offset: Offset(3, 3),
          blurRadius: 0,
        ),
      ],
    );

    Widget bubbleText = Stack(
      children: [
        Text(
          char,
          style: baseTextStyle.copyWith(
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 4.0
              ..color = AppColors.white,
          ),
        ),
        Text(char, style: baseTextStyle.copyWith(color: color)),
      ],
    );

    return Transform.rotate(
      angle: rotateDeg * math.pi / 180,
      child: Padding(
        padding: EdgeInsets.only(top: paddingTop, bottom: paddingBottom),
        child: bubbleText,
      ),
    );
  }
}
