import 'package:flutter/material.dart';

class ScreenConfigs {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double designWidth;
  static late double designHeight;
  static late double textScaleFactor;

  static void init(BuildContext context, {Size designSize = const Size(375, 812)}) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    designWidth = designSize.width;
    designHeight = designSize.height;
    textScaleFactor = _mediaQueryData.textScaleFactor;
  }

  static double sp(double size) {
    double scale = screenWidth / designWidth;
    return size * scale * textScaleFactor;
  }

  static double w(double size) {
    return size * screenWidth / designWidth;
  }

  static double h(double size) {
    return size * screenHeight / designHeight;
  }

  // Additional utility methods

  static double get scaleWidth => screenWidth / designWidth;

  static double get scaleHeight => screenHeight / designHeight;

  static double setWidth(double width) => w(width);

  static double setHeight(double height) => h(height);

  static double radius(double r) => r * scaleWidth;

  static double setSp(double fontSize) => sp(fontSize);

  // Shorthand for MediaQuery properties
  static double get statusBarHeight => _mediaQueryData.padding.top;

  static double get bottomBarHeight => _mediaQueryData.padding.bottom;

  // Orientation helper
  static bool get isPortrait => _mediaQueryData.orientation == Orientation.portrait;

  static bool get isLandscape => _mediaQueryData.orientation == Orientation.landscape;
}

// Extension methods for easier usage
extension SizeExtension on num {
  double get w => ScreenConfigs.w(toDouble());

  double get h => ScreenConfigs.h(toDouble());

  double get sp => ScreenConfigs.sp(toDouble());

  double get r => ScreenConfigs.radius(toDouble());
}
