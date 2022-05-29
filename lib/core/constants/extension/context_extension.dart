import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;
  double get textScaleFactor => MediaQuery.of(this).textScaleFactor;
}

//Kullandığım telefonun height değeri 738 width değeri 392 olduğundan değerler oranlama yapılarak bulundu.

extension MediaQueryExtension on BuildContext {
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;

  double dynamicWidth(double val) => width * val;
  double dynamicHeight(double val) => height * val;
}

extension PaddingExtension on BuildContext {
//Appte çok fazla farklı padding olmadığından her biri için ayrı ayrı oluşturdum
  EdgeInsets get paddingOnlyTopBottomLow =>
      EdgeInsets.only(top: height * 0.04, bottom: height * 0.013);
  EdgeInsets get paddingOnlyBottomLow =>
      EdgeInsets.only(bottom: height * 0.011);
      EdgeInsets get paddingOnlyTopMedium =>
      EdgeInsets.only(top: height * 0.014);
  EdgeInsets get paddingOnlyBottomMedium =>
      EdgeInsets.only(bottom: height * 0.027);
  EdgeInsets get paddingLow => EdgeInsets.all(height * 0.014);
}

extension BorderRadiusExtension on BuildContext {
  BorderRadiusGeometry get circularBorderRadius =>
      BorderRadius.circular(height * 0.013);
}

extension SizedBoxExtension on BuildContext {
  Widget get emptySizedWidthBoxLow => SizedBox(width: width * 0.051);
}


