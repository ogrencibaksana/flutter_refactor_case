import 'package:flutter/material.dart';

class TextStyleOne extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  const TextStyleOne({Key? key, required this.text, this.textStyle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(text, style: textStyle ?? TextStyle(),),
    );
  }
}
