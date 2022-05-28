import 'package:flutter/material.dart';
import 'package:flutter_refactor_case/product/init/notifier/image_notifier.dart';
import 'package:flutter_refactor_case/view/car_detail_view.dart';
import 'package:provider/provider.dart';

import 'product/init/notifier/theme_notifier.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeNotifier()),
        ChangeNotifierProvider(create: (context) => ImageNotifier()),
      ],
      child: const MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeNotifier>(context).currentTheme,
      home: CarDetailView(),
    );
  }
}