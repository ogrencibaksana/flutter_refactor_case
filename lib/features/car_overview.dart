import 'package:flutter/material.dart';
import '../constants/buttons_constant.dart';
import '../constants/null_content_constant.dart';
import '../constants/padding_constants.dart';
import '../model/car_model.dart';
import '../product/custom_styles/custom_button_styles.dart';

class CarOverview extends StatefulWidget {
  CarOverview({Key? key, required this.carModel}) : super(key: key);
  ICarModel carModel;

  @override
  State<CarOverview> createState() => _CarOverviewState();
}

class _CarOverviewState extends State<CarOverview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(children: [
          imageAsset(),
          modelName(context),
          colorOptions(context),
          descriptionText(),
          priceText(context),
          purchaseButton(context),
          const Spacer()
        ]),
      ]),
    );
  }

  Expanded imageAsset() => Expanded(child: Image.asset(widget.carModel.assetPath ?? ""), flex: 60);

  Expanded modelName(BuildContext context) {
    return Expanded(
      flex: 12,
      child: Text(widget.carModel.modelName ?? NullContentConst.nullModelName,
          style: Theme.of(context).textTheme.headline3),
    );
  }

  Row colorOptions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.carModel.toWidgetColorsOption(context) ?? const [Text(NullContentConst.noColorOption)],
    );
  }

//can be use singlechildscrollview if description is too large
  Expanded descriptionText() {
    return Expanded(
        flex: 40,
        child: Padding(
          padding: PaddingValues().paddingLow,
          child: Text(widget.carModel.description ?? NullContentConst.noDescription),
        ));
  }

  Expanded priceText(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Text(widget.carModel.printPrice, style: Theme.of(context).textTheme.headline5),
    );
  }

  Expanded purchaseButton(BuildContext context) {
    return Expanded(
      flex: 10,
      child: ElevatedButton(
          onPressed: () {},
          child: Text(
            ButtonTextConstants.purchase,
            style: Theme.of(context).textTheme.button,
          ),
          style: CustomButtonStyles().getSlightlyRoundBorder(context)),
    );
  }
}
