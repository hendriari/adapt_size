import 'package:flutter/widgets.dart';

class AdaptSizeInit {
  static late double _screenWidth;
  static late double _screenHeight;
  static late double _textScaleFactor;
  static late double _scaleWidthFactor;
  static late double _scaleHeightFactor;

  static bool _initialized = false;

  static void init(BuildContext context, {required Size designSize}) {
    final media = MediaQuery.of(context);
    _screenWidth = media.size.width;
    _screenHeight = media.size.height;
    _textScaleFactor = media.textScaler.scale(1.0);

    _scaleWidthFactor = _screenWidth / designSize.width;
    _scaleHeightFactor = _screenHeight / designSize.height;

    _initialized = true;
  }

  static void reset() => _initialized = false;

  static bool get isInitialized => _initialized;

  static double get screenWidth => _screenWidth;
  static double get screenHeight => _screenHeight;
  static double get textScaleFactor => _textScaleFactor;
  static double get scaleWidthFactor => _scaleWidthFactor;
  static double get scaleHeightFactor => _scaleHeightFactor;

  static double scaleWidth(double value) => value * _scaleWidthFactor;
  static double scaleHeight(double value) => value * _scaleHeightFactor;
  static double scaleText(double fontSize, {bool respectSystemScale = true}) =>
      fontSize * _scaleWidthFactor * (respectSystemScale ? _textScaleFactor : 1.0);

  static double scaleWidthByRatio(double value, double ratio) => value * ratio;
  static double scaleHeightByRatio(double value, double ratio) => value * ratio;
}