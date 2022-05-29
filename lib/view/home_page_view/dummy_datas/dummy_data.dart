import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_refactor_case/product/enums/jpg_image_enum.dart';
import 'package:flutter_refactor_case/product/init/lang/locale_keys.g.dart';
import 'package:flutter_refactor_case/view/home_page_view/model/car_model.dart';
import 'package:flutter_refactor_case/view/home_page_view/model/model_colors_model.dart';

class DummyData {
  
  
  CarModel teslaModelY = CarModel(colors: [
  ModelColorsModel(imagePath: ImagePaths.modelY, color: Colors.blue),
  ModelColorsModel(imagePath: ImagePaths.modelY_red, color: Colors.red),
  ModelColorsModel(
      imagePath: ImagePaths.modelY_yellow, color: Colors.yellow),
  ModelColorsModel(
      imagePath: ImagePaths.modelY_black, color: Colors.black),
],
title: LocaleKeys.home_page_carTitle.tr(),
price: 39000,
detail: LocaleKeys.home_page_carDescription.tr(),

);}
