
import 'package:flutter/material.dart';
import 'package:meal_monkey/core/utils/app_colors.dart';
import 'package:meal_monkey/core/utils/assets_manager.dart';

import 'package:meal_monkey/core/utils/dimensions.dart';
import 'package:meal_monkey/core/widgets/customTextInput.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: context.screenHeight,
        width: context.screenWidth,
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 30,
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
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Login"),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    // Navigator.of(context)
                    //     .pushReplacementNamed(ForgetPwScreen.routeName);
                  },
                  child: const Text("Forget your password?"),
                ),
                const Spacer(
                  flex: 2,
                ),
                const Text("or Login With"),
                const Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color(
                          0xFF367FC0,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(ImgAssets.fbImg),
                        const SizedBox(
                          width: 30,
                        ),
                        const Text("Login with Facebook")
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color(
                          0xFFDD4B39,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(ImgAssets.googleImg),
                        const SizedBox(
                          width: 30,
                        ),
                        const Text("Login with Google")
                      ],
                    ),
                  ),
                ),
                const Spacer(
                  flex: 4,
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.of(context)
                    //     .pushReplacementNamed(SignUpScreen.routeName);
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
    );
  }
}
