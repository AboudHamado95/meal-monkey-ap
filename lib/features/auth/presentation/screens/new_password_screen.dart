import 'package:flutter/material.dart';
import 'package:meal_monkey/config/routes/app_routes.dart';
import 'package:meal_monkey/core/utils/app_colors.dart';
import 'package:meal_monkey/core/utils/dimensions.dart';
import 'package:meal_monkey/core/widgets/custom_text_input.dart';
import 'package:meal_monkey/core/widgets/custom_button_widget.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: context.screenWidth,
        height: context.screenHeight,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                SizedBox(height: context.height20),
                Text("New Password",
                    style: Theme.of(context).textTheme.headline6),
                SizedBox(height: context.height20),
                const Text(
                  "Please enter your email to recieve a link to create a new password via email",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: context.height30),
                CustomTextInput(
                    hintText: "New Password", padding: context.height20),
                SizedBox(
                  height: context.height20,
                ),
                CustomTextInput(
                  hintText: "Confirm Password",
                  padding: context.height20,
                ),
                SizedBox(
                  height: context.height20,
                ),
                CustomButtonWidget(
                    text: 'Next',
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed(Routes.introScreen);
                    },
                    backgroundColor: AppColors.orange,
                    foregroundColor: Colors.white),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
