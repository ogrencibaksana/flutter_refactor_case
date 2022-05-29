import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_refactor_case/product/init/localization_init.dart';

class ProductInit {
  final LocalizationInit localizationInit = LocalizationInit();

  Future<void> init() async {

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  }
}
