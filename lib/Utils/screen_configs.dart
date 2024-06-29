import 'package:flutter/material.dart';

class ScreenConfigs {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double designWidth;
  static late double designHeight;
  static late TextScaler textScaler;

  static void init(BuildContext context, {Size designSize = const Size(375, 812)}) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    designWidth = screenWidth != 0 ? screenWidth : designSize.width;
    designHeight = screenHeight != 0 ? screenHeight : designSize.height;
    textScaler = _mediaQueryData.textScaler;
  }

  static double sp(double size) {
    double scaleFactor = screenWidth / designWidth;
    return textScaler.scale(size * scaleFactor);
  }

  static double w(double size) => size * (screenWidth / designWidth);

  static double h(double size) => size * (screenHeight / designHeight);

  static double radius(double r) => r * (screenWidth / designWidth);

  static double setSp(double fontSize) => sp(fontSize);

  static double statusBarHeight() => _mediaQueryData.padding.top;

  static double bottomBarHeight() => _mediaQueryData.padding.bottom;

  static bool isPortrait() => _mediaQueryData.orientation == Orientation.portrait;

  static bool isLandscape() => _mediaQueryData.orientation == Orientation.landscape;
}

extension SizeExtension on num {
  double get w => ScreenConfigs.w(toDouble());

  double get h => ScreenConfigs.h(toDouble());

  double get sp => ScreenConfigs.sp(toDouble());

  double get r => ScreenConfigs.radius(toDouble());
}
