import 'package:flutter/material.dart';

abstract class ICarModel {
  String? modelName;
  String? assetPath;
  List<Color>? colorOption;
  String? description;
  double? price;
  List<Widget>? toWidgetColorsOption(BuildContext context);
  String get printPrice;
}

class CarModel implements ICarModel {
  @override
  String? assetPath;

  @override
  String? description;

  @override
  double? price;

  @override
  List<Widget>? toWidgetColorsOption(BuildContext context) {
    return colorOption
        ?.map((e) => Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
              child: Container(
                  height: MediaQuery.of(context).size.width * 0.07,
                  width: MediaQuery.of(context).size.width * 0.07,
                  decoration: BoxDecoration(
                      color: e, borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width))),
            ))
        .toList();
  }

  @override
  List<Color>? colorOption;

  CarModel({
    required this.assetPath,
    required this.description,
    required this.price,
    required this.colorOption,
    required this.modelName,
  });

  @override
  String get printPrice => "$price \$";

  @override
  String? modelName;
}
