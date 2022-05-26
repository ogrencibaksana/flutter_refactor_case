import 'package:flutter/material.dart';

class CustomButtonStyles {
  ButtonStyle getSlightlyRoundBorder(BuildContext context, [Color buttonColor = Colors.blue]) => ButtonStyle(
      backgroundColor: MaterialStateProperty.all(buttonColor),
      padding: MaterialStateProperty.all(EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.2,
          vertical: MediaQuery.of(context).size.height * 0.02)),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))));
}
