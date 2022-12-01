import 'package:flutter/material.dart';
import 'package:meal_monkey/core/utils/app_colors.dart';
import 'package:meal_monkey/core/utils/assets_manager.dart';
import 'package:meal_monkey/core/utils/dimensions.dart';
import 'package:meal_monkey/core/widgets/custom_nav_bar.dart';
import 'package:meal_monkey/features/delivery/presentation/widgets/custom_form_input_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SafeArea(
          child: SizedBox(
            height: context.screenHeight,
            width: context.screenWidth,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: context.width20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Profile",
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Image.asset(ImgAssets.cartImg)
                      ],
                    ),
                    SizedBox(height: context.height20),
                    ClipOval(
                      child: Stack(
                        children: [
                          SizedBox(
                            height: context.height20 * 4,
                            width: context.width20 * 4,
                            child: Image.asset(ImgAssets.userImg,
                                fit: BoxFit.contain),
                          ),
                          Positioned(
                            bottom: 0,
                            child: Container(
                              height: context.height20,
                              width: context.width20 * 4,
                              color: Colors.black.withOpacity(0.3),
                              child: Image.asset(ImgAssets.cameraImg),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: context.height10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(ImgAssets.editFilledImg),
                        SizedBox(width: context.width10 / 2),
                        const Text(
                          "Edit Profile",
                          style: TextStyle(color: AppColors.orange),
                        ),
                      ],
                    ),
                    SizedBox(height: context.height10),
                    Text(
                      "Hi there Emilia!",
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: AppColors.primary,
                          ),
                    ),
                    SizedBox(
                      height: context.height10 / 2,
                    ),
                    const Text("Sign Out"),
                    SizedBox(height: context.height20 * 2),
                    const CustomFormInput(
                      label: "Name",
                      value: "Emilia Clarke",
                    ),
                    SizedBox(height: context.height20),
                    const CustomFormInput(
                      label: "Email",
                      value: "emiliaclarke@email.com",
                    ),
                    SizedBox(height: context.height20),
                    const CustomFormInput(
                      label: "Mobile No",
                      value: "emiliaclarke@email.com",
                    ),
                    SizedBox(height: context.height20),
                    const CustomFormInput(
                      label: "Address",
                      value: "No 23, 6th Lane, Colombo 03",
                    ),
                    SizedBox(height: context.height20),
                    const CustomFormInput(
                      label: "Password",
                      value: "Emilia Clarke",
                      isPassword: true,
                    ),
                    SizedBox(height: context.height20),
                    const CustomFormInput(
                      label: "Confirm Password",
                      value: "Emilia Clarke",
                      isPassword: true,
                    ),
                    SizedBox(height: context.height20),
                    SizedBox(
                      height: context.height10 * 5,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Save"),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        const Positioned(bottom: 0, left: 0, child: CustomNavBar(profile: true))
      ]),
    );
  }
}
