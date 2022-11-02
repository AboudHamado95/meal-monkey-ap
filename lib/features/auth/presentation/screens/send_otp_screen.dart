import 'package:flutter/material.dart';
import 'package:meal_monkey/config/routes/app_routes.dart';
import 'package:meal_monkey/core/utils/app_colors.dart';
import 'package:meal_monkey/core/utils/dimensions.dart';
import 'package:meal_monkey/core/widgets/custom_button_widget.dart';
import 'package:meal_monkey/features/auth/presentation/widgets/otp_input_widget.dart';

class SendOTPScreen extends StatelessWidget {
  const SendOTPScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.width20 * 2),
          child: Column(
            children: [
              SizedBox(height: context.height20),
              Text(
                'We have sent you an OTP to your Mobile',
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: context.height20),
              const Text(
                "Please check your mobile number 09*****12 continue to reset your password",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: context.height10 * 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  OTPInput(),
                  OTPInput(),
                  OTPInput(),
                  OTPInput(),
                ],
              ),
              SizedBox(
                height: context.height20,
              ),
              CustomButtonWidget(
                  text: 'Next',
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(Routes.newPasswordScreen);
                  },
                  backgroundColor: AppColors.orange,
                  foregroundColor: Colors.white),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Didn't Receive? "),
                  Text(
                    "Click Here",
                    style: TextStyle(
                      color: AppColors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
