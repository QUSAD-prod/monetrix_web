import 'package:flutter/material.dart';
import 'package:monetrix_web/core/theme/app_colors.dart';
import 'package:monetrix_web/core/theme/app_text_styles.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    splashFactory: InkRipple.splashFactory,
    scaffoldBackgroundColor: AppColors.arcticBlue,
    fontFamily: 'Montserrat',
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.arcticBlue,
      centerTitle: true,
      titleTextStyle: AppTextStyles.p1.copyWith(height: 1.25),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    splashFactory: InkRipple.splashFactory,
    scaffoldBackgroundColor: AppColors.arcticBlue,
    fontFamily: 'Montserrat',
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.arcticBlue,
      centerTitle: true,
      titleTextStyle: AppTextStyles.p1.copyWith(height: 1.25),
    ),
  );
}
