
import 'package:flutter/material.dart';
import 'package:meal_monkey/config/routes/app_routes.dart';
import 'package:meal_monkey/config/themes/app_theme.dart';
import 'package:meal_monkey/core/utils/app_strings.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      initialRoute: Routes.initialRoute,
      onGenerateRoute: AppRoute.onGenerateRoute,
    );
  }
}
