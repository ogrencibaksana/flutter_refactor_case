import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_refactor_case/core/constants/theme/app_theme.dart';
import 'package:flutter_refactor_case/product/init/product_init.dart';
import 'package:flutter_refactor_case/view/home_page_view/dummy_datas/dummy_data.dart';
import 'package:flutter_refactor_case/view/home_page_view/view/home_page.dart';

Future<void> main() async {
  final _productInit = ProductInit();
  await _productInit.init();
  runApp(EasyLocalization(
    fallbackLocale: _productInit.localizationInit.supportedLocales[0],
      path: _productInit.localizationInit.localizationPath,
      supportedLocales: _productInit.localizationInit.supportedLocales,
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale ,
      title: 'Flutter Demo',
      theme: AppTheme().theme,
      home: MyHomePage(car:DummyData().teslaModelY),
    );
  }
}
