import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_refactor_case/core/constants/extension/context_extension.dart';
import 'package:flutter_refactor_case/core/constants/extension/num_extension.dart';
import 'package:flutter_refactor_case/product/enums/jpg_image_enum.dart';
import 'package:flutter_refactor_case/product/init/lang/locale_keys.g.dart';
import 'package:flutter_refactor_case/view/home_page_view/model/car_model.dart';
import 'package:flutter_refactor_case/view/home_page_view/view_model/home_page_view_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.car}) : super(key: key);

  final CarModel car;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _homePageViewModel = HomePageViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          _buildCarImage(context),
          _buildCarTitle(context),
          _buildHorizontalCarColorPicker(context),
          _buildCarDescription(context),
          const Spacer(),
          _buildCardPriceText(context),
          _buyCarButton(context)
        ],
      ),
    ));
  }


  Text _buildCarTitle(BuildContext context) {
    return Text(
      widget.car.title,
      style: context.textTheme.headline1!
          .copyWith(fontSize: context.dynamicHeight(0.067)),
    );
  }


  Padding _buildHorizontalCarColorPicker(BuildContext context) {
    return Padding(
      padding: context.paddingOnlyTopBottomLow,
      child: SizedBox(
        height: context.height * 0.040,
        child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return _buildCircleImageColorPicker(
                  context: context,
                  color: widget.car.colors[index].color,
                  index: index);
            },
            separatorBuilder: (context, _) {
              return context.emptySizedWidthBoxLow;
            },
            itemCount: widget.car.colors.length),
      ),
    );
  }

  Padding _buildCardPriceText(BuildContext context) {
    return Padding(
      padding: context.paddingOnlyBottomLow,
      child: Text(
        widget.car.price.numToCurrencyString,
        style: context.textTheme.headline2!
            .copyWith(fontSize: context.dynamicHeight(0.034)),
      ),
    );
  }

  Padding _buildCarDescription(BuildContext context) {
    return Padding(
      padding: context.paddingLow,
      child: Center(child: Text(widget.car.detail)),
    );
  }

  Padding _buyCarButton(BuildContext context) {
    return Padding(
      padding: context.paddingOnlyBottomMedium,
      child: SizedBox(
        height: context.dynamicHeight(0.068),
        width: context.dynamicWidth(0.46),
        child: ElevatedButton(
            style: _buttonStyle(context),
            onPressed: () {
              _homePageViewModel.buyBottonPressed();
            },
            child: Text(
              LocaleKeys.button_buy.tr(),
              style: context.textTheme.subtitle1!
                  .copyWith(fontSize: context.dynamicHeight(0.022)),
            )),
      ),
    );
  }

  ButtonStyle _buttonStyle(BuildContext context) {
    return ButtonStyle(
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: context.circularBorderRadius)));
  }

  Observer _buildCarImage(BuildContext context) {
    return Observer(builder: (_) {
      return Container(
          width: double.infinity,
          height: context.dynamicHeight(0.44),
          decoration: BoxDecoration(
              image: (widget.car.colors[_homePageViewModel.selectedImageIndex]
                      .imagePath)
                  .toDecorationImage()),
          child: Align(
            alignment: Alignment.topLeft,
            child: IconButton(
                onPressed: () {}, icon: const Icon(Icons.chevron_left)),
          ));
    });
  }

  InkWell _buildCircleImageColorPicker(
      {required BuildContext context,
      required Color color,
      required int index}) {
    return InkWell(
      onTap: () {
        _homePageViewModel.changeImage(index);
      },
      child: Container(
        width: context.height * 0.040,
        height: context.height * 0.040,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
    );
  }
}
