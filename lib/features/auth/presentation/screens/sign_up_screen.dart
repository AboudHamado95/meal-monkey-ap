import 'package:flutter/material.dart';
import 'package:meal_monkey/config/routes/app_routes.dart';
import 'package:meal_monkey/core/utils/app_colors.dart';
import 'package:meal_monkey/core/utils/dimensions.dart';
import 'package:meal_monkey/core/widgets/custom_text_input.dart';
import 'package:meal_monkey/core/widgets/custom_button_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                horizontal: context.width20 * 2, vertical: context.width30),
            child: Column(
              children: [
                Text(
                  "Sign Up",
                  style: Theme.of(context).textTheme.headline6,
                ),
                const Spacer(),
                const Text("Add your details to sign up"),
                const Spacer(),
                CustomTextInput(
                    hintText: "Name", padding: context.height20 * 2),
                const Spacer(),
                CustomTextInput(
                    hintText: "Email", padding: context.height20 * 2),
                const Spacer(),
                CustomTextInput(
                    hintText: "Mobile No", padding: context.height20 * 2),
                const Spacer(),
                CustomTextInput(
                    hintText: "Address", padding: context.height20 * 2),
                const Spacer(),
                CustomTextInput(
                    hintText: "Password", padding: context.height20 * 2),
                const Spacer(),
                CustomTextInput(
                    hintText: "Confirm Password",
                    padding: context.height20 * 2),
                const Spacer(),
                CustomButtonWidget(
                    text: 'Sign Up',
                    onTap: (() {}),
                    backgroundColor: AppColors.orange,
                    foregroundColor: Colors.white),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(Routes.loginScreen);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Already have an Account?"),
                      Text(
                        "Login",
                        style: TextStyle(
                          color: AppColors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
