import 'package:flutter_refactor_case/view/home_page_view/model/model_colors_model.dart';

class CarModel {
  final String title;
  final String detail;
  final int price;
  final List<ModelColorsModel> colors; 

  CarModel({required this.title,required this.detail,required this.price,required this.colors}
  );
}
