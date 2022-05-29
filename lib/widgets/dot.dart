import 'package:flutter/material.dart';

class DotContainer extends StatelessWidget {
  final Color color;
  const DotContainer({
    Key? key,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: color),
    );
  }
}
