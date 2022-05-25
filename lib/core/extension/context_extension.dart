import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

extension ContextExtension on BuildContext {
  static double lowRatio = 1.h;
  static double normalRation = 3.h;
  static double highRatio = 4.h;

  // padding
  EdgeInsets get paddingAllLow => EdgeInsets.all(lowRatio);
  EdgeInsets get paddingAllNormal => EdgeInsets.all(normalRation);
  EdgeInsets get paddingAllHigh => EdgeInsets.all(highRatio);

  EdgeInsets get paddingHorizontalLow =>
      EdgeInsets.symmetric(horizontal: lowRatio);
  EdgeInsets get paddingHorizontalNormal =>
      EdgeInsets.symmetric(horizontal: normalRation);
  EdgeInsets get paddingHorizontalHigh =>
      EdgeInsets.symmetric(horizontal: highRatio);

  EdgeInsets get paddingVerticalHigh =>
      EdgeInsets.symmetric(vertical: highRatio);
  EdgeInsets get paddingVerticalNormal =>
      EdgeInsets.symmetric(vertical: normalRation);
  EdgeInsets get paddingVerticalLow => EdgeInsets.symmetric(vertical: lowRatio);
}

extension ThemeExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}
