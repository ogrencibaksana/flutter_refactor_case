import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../core/extension/context_extension.dart';
import '../core/extension/num_extension.dart';
import '../model/car_model.dart';
import 'home_constant.dart';
import 'home_view_model.dart';

class HomeView extends StatelessWidget with HomeConstant {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //context.watch<JobViewModel>()
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _buildProductPhoto(context),
            _buildProductName(context),
            _buildColorPalette(context),
            _buildDetailText(context),
            const Spacer(),
            _buildPriceText(context),
            _buildBuyButton(context),
          ],
        ),
      ),
    );
  }

  Padding _buildBuyButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 3.h),
      child: GestureDetector(
        onTap: context.read<HomeViewModel>().onBuyButtonPressed,
        child: Container(
          decoration: BoxDecoration(
              color: context.colorScheme.primary,
              borderRadius: BorderRadius.circular(10)),
          width: 40.w,
          height: 6.h,
          alignment: Alignment.center,
          child: Text(
            buyButtonText,
            style: context.textTheme.headline6!
                .copyWith(color: context.colorScheme.surface),
          ),
        ),
      ),
    );
  }

  Padding _buildPriceText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 2.h),
      child: Align(
        alignment: Alignment.bottomCenter,
        child:
            Text("${context.watch<HomeViewModel>().carModel.price.currency}\$",
                style: context.textTheme.displaySmall!.copyWith(
                  color: Colors.amber,
                  fontSize: 20.sp,
                )),
      ),
    );
  }

  Padding _buildDetailText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(3.h),
      child: Center(
          child: Text(
        context.watch<HomeViewModel>().carModel.detail,
        style: context.textTheme.bodyMedium,
      )),
    );
  }

  SizedBox _buildColorPalette(BuildContext context) {
    return SizedBox(
      height: 4.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            context.read<HomeViewModel>().onTapColor(index);
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: 4.h,
            height: 4.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: context
                    .watch<HomeViewModel>()
                    .carModel
                    .imagePath[index]
                    .color),
          ),
        ),
        separatorBuilder: (context, index) => SizedBox(
          width: 4.w,
        ),
        itemCount: context.watch<HomeViewModel>().carModel.imagePath.length,
      ),
    );
  }

  Align _buildProductName(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        context.watch<HomeViewModel>().carModel.title,
        style: context.textTheme.displaySmall!
            .copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  Container _buildProductPhoto(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 33.h,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
                context.watch<HomeViewModel>().currentPalette.imagePath)),
        color: Colors.grey,
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child:
            IconButton(onPressed: () {}, icon: const Icon(Icons.chevron_left)),
      ),
    );
  }
}
