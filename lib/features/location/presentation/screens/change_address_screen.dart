import 'package:flutter/material.dart';
import 'package:meal_monkey/core/utils/app_colors.dart';
import 'package:meal_monkey/core/utils/assets_manager.dart';
import 'package:meal_monkey/core/utils/dimensions.dart';
import 'package:meal_monkey/core/widgets/custom_nav_bar.dart';
import 'package:meal_monkey/features/delivery/presentation/widgets/search_bar_widget.dart';
import 'package:meal_monkey/features/location/presentation/widgets/custom_clipper/custom_triangle_clipper.dart';

class ChangeAddressScreen extends StatelessWidget {
  const ChangeAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_rounded,
                      ),
                    ),
                    Text(
                      "Change Address",
                      style: Theme.of(context).textTheme.headline5,
                    )
                  ],
                ),
                SizedBox(height: context.height30),
                Stack(
                  children: [
                    SizedBox(
                      height: context.screenHeight * 0.6,
                      child:
                          Image.asset(ImgAssets.mapImg, fit: BoxFit.fitHeight),
                    ),
                    Positioned(
                      bottom: context.height30,
                      right: context.width20 * 2,
                      child: Image.asset(ImgAssets.currentLocImg),
                    ),
                    Positioned(
                      top: context.height10 * 7,
                      right: context.width30 * 6,
                      child: Image.asset(ImgAssets.locImg),
                    ),
                    Positioned(
                      top: context.height10 * 17 + 10,
                      left: context.width30 + 5,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: context.height20,
                          horizontal: context.width20,
                        ),
                        width: context.screenWidth * 0.45,
                        decoration: ShapeDecoration(
                          color: AppColors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(context.radius20 / 2),
                              bottomLeft: Radius.circular(context.radius20 / 2),
                              bottomRight:
                                  Radius.circular(context.radius20 / 2),
                            ),
                          ),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Your Current Location",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: context.font26 / 2,
                              ),
                            ),
                            SizedBox(height: context.height10),
                            Text(
                              "653 Nostrand Ave., Brooklyn, NY 11216",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: context.font26 / 2 - 1,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: context.height10 * 14 + 11,
                      right: context.width20 * 10 + 8,
                      child: ClipPath(
                        clipper: CustomTriangleClipper(),
                        child: Container(
                          width: context.width30,
                          height: context.height30,
                          color: AppColors.orange,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: context.height20,
                ),
                const SearchBarWidget(title: "Search Address"),
                SizedBox(
                  height: context.height10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.width20),
                  child: Row(
                    children: [
                      Container(
                        height: context.height10 * 5,
                        width: context.width10 * 5,
                        decoration: ShapeDecoration(
                          shape: const CircleBorder(),
                          color: AppColors.orange.withOpacity(0.2),
                        ),
                        child: Icon(
                          Icons.star_rounded,
                          color: AppColors.orange,
                          size: context.iconsSize16 * 2 - 2,
                        ),
                      ),
                      SizedBox(width: context.width10),
                      const Expanded(
                        child: Text(
                          "Choose a saved place",
                          style: TextStyle(
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                      const Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                )
              ],
            ),
          ),
          const Positioned(bottom: 0, left: 0, child: CustomNavBar())
        ],
      ),
    );
  }
}
