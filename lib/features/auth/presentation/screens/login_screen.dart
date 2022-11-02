import 'package:flutter/material.dart';
import 'package:meal_monkey/config/routes/app_routes.dart';
import 'package:meal_monkey/core/utils/app_colors.dart';
import 'package:meal_monkey/core/utils/assets_manager.dart';

import 'package:meal_monkey/core/utils/dimensions.dart';
import 'package:meal_monkey/core/widgets/customTextInput.dart';
import 'package:meal_monkey/core/widgets/custom_button_widget.dart';
import 'package:meal_monkey/features/auth/presentation/screens/forget_password_screen.dart';
import 'package:meal_monkey/features/auth/presentation/widgets/custom_button_img_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: context.screenHeight,
          width: context.screenWidth,
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: context.height20 * 2,
                vertical: context.width30,
              ),
              child: Column(
                children: [
                  Text(
                    "Login",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const Spacer(),
                  const Text('Add your details to login'),
                  const Spacer(),
                  CustomTextInput(
                    hintText: "Your email",
                    padding: context.height20 * 2,
                  ),
                  const Spacer(),
                  CustomTextInput(
                    hintText: "password",
                    padding: context.height20 * 2,
                  ),
                  const Spacer(),
                  CustomButtonWidget(
                      text: 'Login',
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacementNamed(Routes.landingScreen);
                      },
                      backgroundColor: AppColors.orange,
                      foregroundColor: Colors.white),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed(Routes.forgetPasswordScreen);
                    },
                    child: const Text(
                      "Forget your password?",
                      style: TextStyle(color: AppColors.orange),
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  const Text("or Login With"),
                  const Spacer(),
                  CustomButtonImgWidget(
                      backgroundColor: 0xFF367FC0,
                      onTap: () {},
                      image: ImgAssets.fbImg,
                      textButton: "Login with Facebook"),
                  const Spacer(),
                  CustomButtonImgWidget(
                      backgroundColor: 0xFFDD4B39,
                      onTap: () {},
                      image: ImgAssets.googleImg,
                      textButton: "Login with Google"),
                  const Spacer(
                    flex: 4,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed(Routes.signUpScreen);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Don't have an Account?"),
                        Text(
                          "Sign Up",
                          style: TextStyle(
                            color: AppColors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
