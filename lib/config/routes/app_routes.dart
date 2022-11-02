import 'package:flutter/material.dart';
import 'package:meal_monkey/core/utils/app_strings.dart';
import 'package:meal_monkey/features/auth/presentation/screens/login_screen.dart';
import 'package:meal_monkey/features/splash/presentation/screens/landingScreen.dart';

class Routes {
  static const String initialRoute = '/';
  static const String homeScreen = '/home_screen';
  static const String loginScreen = '/login_screen';
}

class AppRoute {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initialRoute:
        return materialBuilder(widget: const LandingScreen());
      case Routes.loginScreen:
        return materialBuilder(widget: const LoginScreen());

      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(child: Text(AppStrings.appName)),
      ),
    );
  }
}

MaterialPageRoute materialBuilder({required Widget widget}) {
  return MaterialPageRoute(builder: (_) => widget);
}
