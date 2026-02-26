import 'package:flutter/material.dart';
import 'dart:math' as math;

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
              _buildBubbleChar('B', const Color(0xFF5C9DFF), 72, rotateDeg: -6),
              const SizedBox(width: 2),
              _buildBubbleChar('o', const Color(0xFF8CE593), 48, rotateDeg: 3, paddingBottom: 12),
              const SizedBox(width: 2),
              _buildBubbleChar('D', const Color(0xFFFF8585), 72, rotateDeg: -3),
              const SizedBox(width: 2),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  _buildBubbleChar('y', const Color(0xFFFF9ECA), 72, rotateDeg: 6),
                  Positioned(
                    top: -16,
                    right: -8,
                    child: Icon(Icons.star, size: 32, color: Colors.yellow[300]!.withOpacity(0.8)),
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
                    _buildBubbleChar('T', const Color(0xFFFFD93D), 72, rotateDeg: 3),
                    Positioned(
                      bottom: 8,
                      left: -24,
                      child: Transform.rotate(
                        angle: 45 * math.pi / 180,
                        child: Icon(Icons.star, size: 24, color: Colors.pink[300]!.withOpacity(0.6)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 2),
                _buildBubbleChar('a', const Color(0xFFC689FF), 60, rotateDeg: -3, paddingTop: 8),
                const SizedBox(width: 2),
                _buildBubbleChar('l', const Color(0xFF9D76F0), 72, rotateDeg: 2),
                const SizedBox(width: 2),
                _buildBubbleChar('k', const Color(0xFFFF9F43), 72, rotateDeg: -6),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBubbleChar(String char, Color color, double fontSize, {double rotateDeg = 0, double paddingTop = 0, double paddingBottom = 0}) {
    final baseTextStyle = TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w900,
      height: 1.0,
      shadows: [
        Shadow(
          color: Colors.black.withOpacity(0.05),
          offset: const Offset(3, 3),
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
              ..color = Colors.white,
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