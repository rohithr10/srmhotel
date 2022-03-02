import 'package:flutter/material.dart';
import 'package:srmhotel/config/app_colors.dart';
import 'package:srmhotel/helper/util/app_fonts.dart';
import 'package:srmhotel/helper/util/app_fontsize.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData appTheme = ThemeData(
      fontFamily: 'Muli',
      backgroundColor: AppColors.textBoxColor,
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
          brightness: Brightness.light,
          color: AppColors.primary,
          iconTheme: IconThemeData(
            color: AppColors.textBoxColor,
          ),
          textTheme: TextTheme(
              headline1: TextStyle(
                  color: AppColors.textBoxColor,
                  fontSize: FONT_26,
                  fontStyle: FontStyle.normal,
                  fontFamily: 'Muli'))));
}
