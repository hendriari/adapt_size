import 'package:adapt_size/adapt_size_init.dart';

extension AdaptSizeExtension on num {
  double get h => AdaptSizeInit.scaleHeight(toDouble());
  double get w => AdaptSizeInit.scaleWidth(toDouble());
  double get sp => AdaptSizeInit.scaleText(toDouble());
}
