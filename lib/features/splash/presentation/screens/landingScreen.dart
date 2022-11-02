import 'package:flutter/material.dart';
import 'package:meal_monkey/config/routes/app_routes.dart';
import 'package:meal_monkey/core/utils/app_colors.dart';
import 'package:meal_monkey/core/utils/assets_manager.dart';

import 'package:meal_monkey/core/utils/dimensions.dart';
import 'package:meal_monkey/core/widgets/custom_button_widget.dart';
import 'package:meal_monkey/features/splash/presentation/widgets/custom_clipper_app_bar_widget.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: context.screenWidth,
        height: context.screenHeight,
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: AppColors.placeholder,
                    offset: Offset(0, 15),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Align(
                alignment: Alignment.topCenter,
                child: ClipPath(
                  clipper: CustomClipperAppBar(),
                  child: Container(
                    width: double.infinity,
                    height: context.screenHeight * 0.5,
                    decoration: ShapeDecoration(
                      color: AppColors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(context.radius20 / 2),
                      ),
                    ),
                    child: Image.asset(ImgAssets.loginBgImg, fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(ImgAssets.mealMealMonkeyLogo),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: context.screenHeight * 0.35,
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    const Text(
                      "Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep",
                      textAlign: TextAlign.center,
                    ),
                    const Spacer(),
                    CustomButtonWidget(
                        text: 'Login',
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacementNamed(Routes.loginScreen);
                        },
                        backgroundColor: AppColors.orange,
                        foregroundColor: Colors.white),
                    SizedBox(
                      height: context.height20,
                    ),
                    CustomButtonWidget(
                        text: "Create an Account",
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacementNamed(Routes.signUpScreen);
                        },
                        backgroundColor: Colors.white,
                        foregroundColor: AppColors.orange),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
