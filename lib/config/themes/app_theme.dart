import 'package:flutter/material.dart';
import 'package:meal_monkey/core/utils/app_colors.dart';
import 'package:meal_monkey/core/utils/app_strings.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: AppColors.primary,
    primarySwatch: Colors.red,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: AppStrings.fontFamily,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          AppColors.orange,
        ),
        shape: MaterialStateProperty.all(
          const StadiumBorder(),
        ),
        elevation: MaterialStateProperty.all(0),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(
          AppColors.orange,
        ),
      ),
    ),
    textTheme: const TextTheme(
      headline3: TextStyle(
        color: AppColors.primary,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      headline4: TextStyle(
        color: AppColors.secondary,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      headline5: TextStyle(
        color: AppColors.primary,
        fontWeight: FontWeight.normal,
        fontSize: 25,
      ),
      headline6: TextStyle(
        color: AppColors.primary,
        fontSize: 25,
      ),
      bodyText2: TextStyle(
        color: AppColors.secondary,
      ),
    ),
    appBarTheme: const AppBarTheme(
        centerTitle: true,
        color: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16.0)),
  );
}
