import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_refactor_case/model/image_palette.dart';

import '../model/car_model.dart';

class HomeViewModel extends ChangeNotifier {
  final CarModel carModel;
  late ImagePalette currentPalette;
  HomeViewModel({required this.carModel}) {
    currentPalette = carModel.imagePath[0];
  }
  onTapColor(int index) {
    currentPalette = carModel.imagePath[index];
    notifyListeners();
  }

  void onBuyButtonPressed() {
    print("onBuyButtonPressed");
  }
}
