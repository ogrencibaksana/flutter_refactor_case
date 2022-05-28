import 'package:flutter/material.dart';
import 'package:flutter_refactor_case/product/components/text_style_one.dart';
import 'package:flutter_refactor_case/product/init/notifier/image_notifier.dart';
import 'package:provider/provider.dart';
import '../product/components/color_circle.dart';
import '../product/init/notifier/theme_notifier.dart';

class CarDetailView extends StatefulWidget {
  const CarDetailView({Key? key}) : super(key: key);

  @override
  State<CarDetailView> createState() => _CarDetailViewState();
}

class _CarDetailViewState extends State<CarDetailView> {
  final String longText =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non mi lacus. Curabitur lobortis consequat accumsan. Nam varius congue vehicula. Aenean finibus orci elit, fermentum feugiat justo tincidunt id. Sed tempor nisi non nulla commodo feugiat. Pellentesque elementum vestibulum nunc, non bibendum mi. Nunc finibus est odio, ac feugiat nibh finibus vitae. Donec arcu eros, sodales eget";
  final String title = "Tesla Model Y";
  final String price = "39.000 \$";
  final String buy = "Satın Al";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: context.read<ThemeNotifier>().getBackgroundColor,
        child: SafeArea(
          child: LayoutBuilder(
            builder:
                (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: viewportConstraints.maxHeight,
                  ),
                  child: IntrinsicHeight(
                    child: Column(
                      children: <Widget>[
                        Container(
                            width: 500,
                            height: 325,
                            decoration: BoxDecoration(
                              image: buildImage(context),
                            ),
                            child: buildBackButton()),
                        buildTitle(),
                        buildColorRow(),
                        buildDescriptionText(),
                        buildPriceText(),
                        buildBuyButton()
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  DecorationImage buildImage(BuildContext context) {
    return DecorationImage(
        image: AssetImage(context.watch<ImageNotifier>().currentImagePath));
  }

  Align buildBackButton() {
    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(onPressed: () {}, icon: const Icon(Icons.chevron_left)),
    );
  }

  Padding buildTitle() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 5),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 50,
        ),
      ),
    );
  }

  Row buildColorRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        ColorCircle(color: Colors.blue),
        ColorCircle(color: Colors.red),
        ColorCircle(color: Colors.yellow),
        ColorCircle(color: Colors.grey)
      ],
    );
  }

  TextStyleOne buildDescriptionText() => TextStyleOne(text: longText);

  TextStyleOne buildPriceText() {
    return TextStyleOne(
      text: price,
      textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
    );
  }

  SizedBox buildBuyButton() {
    return SizedBox(
        width: 250, child: ElevatedButton(onPressed: () {}, child: Text(buy)));
  }
}
