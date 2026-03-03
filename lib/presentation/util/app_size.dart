import 'package:flutter/material.dart';

class AppSize {
  AppSize._();

  static late double originScreenWidth;
  static late double statusBarHeight;
  static late double bottomInset;
  static late double screenWidth;
  static late double screenHeight;

  static const double _designWidth = 375.0;
  static const double _designHeight = 812.0;

  static double ratioHeight(double givenHeight) =>
      (givenHeight / _designHeight) * screenHeight;

  static double ratioWidth(double givenWidth) =>
      (givenWidth / _designWidth) * screenWidth;

  static double get responsiveBottomInset =>
      bottomInset == 0.0 ? 16.0 : bottomInset;


  static void init(BuildContext context) {

    final size = MediaQuery.sizeOf(context);
    final padding = MediaQuery.paddingOf(context);

    originScreenWidth = size.width;
    statusBarHeight = padding.top;
    bottomInset = padding.bottom;

    final bool isTablet = size.width > 600;

    screenWidth = isTablet ? _designWidth : size.width;
    screenHeight = isTablet ? _designHeight : size.height;
  }
}