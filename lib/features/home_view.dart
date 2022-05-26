import 'package:flutter/material.dart';
import '../constants/asset_constants.dart';
import '../model/car_model.dart';
import 'car_overview.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  ICarModel model = CarModel(
    modelName: "Tesla Model Y",
    assetPath: AssetConstants.modelY,
    colorOption: [Colors.blue, Colors.red, Colors.yellow, Colors.black],
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non mi lacus. Curabitur lobortis consequat accumsan. Nam varius congue vehicula. Aenean finibus orci elit, fermentum feugiat justo tincidunt id. Sed tempor nisi non nulla commodo feugiat. Pellentesque elementum vestibulum nunc, non bibendum mi. Nunc finibus est odio, ac feugiat nibh finibus vitae. Donec arcu eros, sodales eget",
    price: 39000,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        CarOverview(carModel: model),
        IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_ios))
      ]),
    );
  }
}
