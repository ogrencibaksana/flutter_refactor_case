import 'package:flutter/material.dart';

class Constant {
  static const String productName = "Tesla Model Y";
  static const Color imageBackgroundColor = Colors.grey;
  static const String productDetail =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non mi lacus. Curabitur lobortis consequat accumsan. Nam varius congue vehicula. Aenean finibus orci elit, fermentum feugiat justo tincidunt id. Sed tempor nisi non nulla commodo feugiat. Pellentesque elementum vestibulum nunc, non bibendum mi. Nunc finibus est odio, ac feugiat nibh finibus vitae. Donec arcu eros, sodales eget";
  static const String buttonDetail = "Satın Al";
  static const String price = "39.000 \$";
  static const IconData imageIcon = Icons.chevron_left;

  static image(String imageName) {
    return "assets/images/$imageName";
  }
}
