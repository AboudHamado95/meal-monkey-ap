import 'package:flutter/material.dart';
import 'package:meal_monkey/core/utils/app_strings.dart';
import 'package:meal_monkey/features/auth/presentation/screens/forget_password_screen.dart';
import 'package:meal_monkey/features/auth/presentation/screens/login_screen.dart';
import 'package:meal_monkey/features/auth/presentation/screens/new_password_screen.dart';
import 'package:meal_monkey/features/auth/presentation/screens/send_otp_screen.dart';
import 'package:meal_monkey/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:meal_monkey/features/delivery/presentation/screens/about_screen.dart';
import 'package:meal_monkey/features/delivery/presentation/screens/dessert_screen.dart';
import 'package:meal_monkey/features/delivery/presentation/screens/home_screen.dart';
import 'package:meal_monkey/features/delivery/presentation/screens/inbox_screen.dart';
import 'package:meal_monkey/features/delivery/presentation/screens/individual_item_screen.dart';
import 'package:meal_monkey/features/delivery/presentation/screens/menu_screen.dart';
import 'package:meal_monkey/features/delivery/presentation/screens/more_screen.dart';
import 'package:meal_monkey/features/delivery/presentation/screens/my_order_screen.dart';
import 'package:meal_monkey/features/delivery/presentation/screens/offer_screen.dart';
import 'package:meal_monkey/features/delivery/presentation/screens/profile_screen.dart';
import 'package:meal_monkey/features/location/presentation/screens/change_address_screen.dart';
import 'package:meal_monkey/features/notification/presentation/screens/notification_screen.dart';
import 'package:meal_monkey/features/on_boarding/presentation/screens/intro_screen.dart';
import 'package:meal_monkey/features/payment/presentation/screens/checkout_screen.dart';
import 'package:meal_monkey/features/payment/presentation/screens/payment_screen.dart';
import 'package:meal_monkey/features/splash/presentation/screens/landing_screen.dart';
import 'package:meal_monkey/features/splash/presentation/screens/splash_screen.dart';

class Routes {
  static const String initialRoute = '/';
  static const String homeScreen = '/home_screen';
  static const String splashScreen = '/splash_screen';
  static const String landingScreen = '/landing_screen';
  static const String loginScreen = '/login_screen';
  static const String signUpScreen = '/sign_up_screen';
  static const String forgetPasswordScreen = '/forget_password_screen';
  static const String sendOtpScreen = '/send_otp_screen';
  static const String introScreen = '/intro_screen';
  static const String newPasswordScreen = '/new_password_screen';
  static const String individualItemScreen = '/individual_item_screen';
  static const String menuScreen = '/menu_screen';
  static const String moreScreen = '/more_screen';
  static const String offerScreen = '/offer_screen';
  static const String profileScreen = '/profile_screen';
  static const String dessertScreen = '/dessert_screen';
  static const String paymentScreen = '/payment_screen';
  static const String myOrderScreen = '/my_order_screen';
  static const String notificationScreen = '/notification_screen';
  static const String inboxScreen = '/inbox_screen';
  static const String aboutUsScreen = '/about_us_screen';
  static const String checkoutScreen = '/checkout_screen';
  static const String changeAddressScreen = '/change_address_screen';
}

class AppRoute {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initialRoute:
        return materialBuilder(widget: const SplashScreen());
      case Routes.splashScreen:
        return materialBuilder(widget: const SplashScreen());
      case Routes.landingScreen:
        return materialBuilder(widget: const LandingScreen());
      case Routes.loginScreen:
        return materialBuilder(widget: const LoginScreen());
      case Routes.signUpScreen:
        return materialBuilder(widget: const SignUpScreen());
      case Routes.forgetPasswordScreen:
        return materialBuilder(widget: const ForgetPasswordScreen());
      case Routes.sendOtpScreen:
        return materialBuilder(widget: const SendOTPScreen());
      case Routes.newPasswordScreen:
        return materialBuilder(widget: const NewPasswordScreen());
      case Routes.introScreen:
        return materialBuilder(widget: const IntroScreen());
      case Routes.homeScreen:
        return materialBuilder(widget: const HomeScreen());
      case Routes.individualItemScreen:
        return materialBuilder(widget: const IndividualItemScreen());
      case Routes.menuScreen:
        return materialBuilder(widget: const MenuScreen());
      case Routes.moreScreen:
        return materialBuilder(widget: const MoreScreen());
      case Routes.offerScreen:
        return materialBuilder(widget: const OfferScreen());
      case Routes.profileScreen:
        return materialBuilder(widget: const ProfileScreen());
      case Routes.dessertScreen:
        return materialBuilder(widget: const DessertScreen());
      case Routes.paymentScreen:
        return materialBuilder(widget: const PaymentScreen());
      case Routes.myOrderScreen:
        return materialBuilder(widget: const MyOrderScreen());
      case Routes.notificationScreen:
        return materialBuilder(widget: const NotificationScreen());
      case Routes.inboxScreen:
        return materialBuilder(widget: const InboxScreen());
      case Routes.aboutUsScreen:
        return materialBuilder(widget: const AboutScreen());
      case Routes.checkoutScreen:
        return materialBuilder(widget: const CheckoutScreen());
      case Routes.changeAddressScreen:
        return materialBuilder(widget: const ChangeAddressScreen());

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
