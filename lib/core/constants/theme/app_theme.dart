import 'package:flutter/material.dart';
import 'package:flutter_refactor_case/core/constants/colors/app_colors.dart';

 class AppTheme {

     ThemeData theme = ThemeData(textTheme:  TextTheme(

    headline1: TextStyle(

                  color: AppColors.primaryHeadlineColor,
                  fontWeight: FontWeight.bold,
             
                  ),
    headline2: TextStyle(
                    color: AppColors.secondaryHeadlineColor,
                    fontWeight: FontWeight.bold,
                   
                    ),
    subtitle1: TextStyle(
                        color: AppColors.primarySubtitleColor,
                        fontWeight: FontWeight.bold,
                    
                        ),

  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(AppColors.primaryButtonColor))
  ));
 

}
