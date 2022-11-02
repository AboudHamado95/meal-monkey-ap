import 'package:flutter/material.dart';
import 'package:meal_monkey/config/routes/app_routes.dart';
import 'package:meal_monkey/core/utils/app_colors.dart';

import 'package:meal_monkey/core/utils/dimensions.dart';
import 'package:meal_monkey/core/widgets/customTextInput.dart';
import 'package:meal_monkey/core/widgets/custom_button_widget.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: context.screenWidth,
          height: context.screenHeight,
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: context.width20 * 2,
                vertical: context.height30,
              ),
              child: Column(
                children: [
                  Text(
                    "Reset Password",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const Spacer(),
                  const Text(
                    "Please enter your email to receive a link to create a new password via email",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: context.height20),
                  CustomTextInput(
                      hintText: "Email", padding: context.height20 * 2),
                  SizedBox(height: context.height20),
                  CustomButtonWidget(
                      text: 'Send',
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacementNamed(Routes.sendOtpScreen);
                      },
                      backgroundColor: AppColors.orange,
                      foregroundColor: Colors.white),
                  const Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
