import 'package:flutter/material.dart';
import 'package:flutter_refactor_case/product/init/notifier/image_notifier.dart';
import 'package:provider/provider.dart';

import '../init/notifier/theme_notifier.dart';

class ColorCircle extends StatelessWidget {
  final MaterialColor color;
  const ColorCircle({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          context.read<ThemeNotifier>().changeColor(color);
          context.read<ImageNotifier>().changeImage(color);
        },
        child: CircleAvatar(
          backgroundColor: color,
          radius: 13,
        ),
      ),
    );
  }
}
