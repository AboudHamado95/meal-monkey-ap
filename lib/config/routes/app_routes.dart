import 'package:flutter/material.dart';
import 'package:meal_monkey/core/utils/app_strings.dart';
import 'package:meal_monkey/features/auth/presentation/screens/forget_password_screen.dart';
import 'package:meal_monkey/features/auth/presentation/screens/login_screen.dart';
import 'package:meal_monkey/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:meal_monkey/features/splash/presentation/screens/landingScreen.dart';

class Routes {
  static const String initialRoute = '/';
  static const String homeScreen = '/home_screen';
  static const String landingScreen = '/landing_screen';
  static const String loginScreen = '/login_screen';
  static const String signUpScreen = '/sign_up_screen';
  static const String forgetPasswordScreen = '/forget_password_screen';
}

class AppRoute {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initialRoute:
        return materialBuilder(widget: const LandingScreen());
      case Routes.landingScreen:
        return materialBuilder(widget: const LandingScreen());
      case Routes.loginScreen:
        return materialBuilder(widget: const LoginScreen());
      case Routes.signUpScreen:
        return materialBuilder(widget: const SignUpScreen());
      case Routes.forgetPasswordScreen:
        return materialBuilder(widget: const ForgetPasswordScreen());

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
