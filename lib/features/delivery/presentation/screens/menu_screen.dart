import 'package:flutter/material.dart';
import 'package:meal_monkey/config/routes/app_routes.dart';
import 'package:meal_monkey/core/utils/app_colors.dart';
import 'package:meal_monkey/core/utils/assets_manager.dart';
import 'package:meal_monkey/core/utils/dimensions.dart';
import 'package:meal_monkey/core/widgets/custom_nav_bar.dart';
import 'package:meal_monkey/features/delivery/presentation/widgets/custom_painter/custom_diamond.dart';
import 'package:meal_monkey/features/delivery/presentation/widgets/custom_painter/custom_triangle.dart';
import 'package:meal_monkey/features/delivery/presentation/widgets/menu_card_widget.dart';
import 'package:meal_monkey/features/delivery/presentation/widgets/search_bar_widget.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.width20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Menu",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Image.asset(ImgAssets.cartImg)
                    ],
                  ),
                ),
                SizedBox(height: context.height20),
                const SearchBarWidget(title: "Search Food"),
                SizedBox(height: context.height20),
                SizedBox(
                    height: context.screenHeight * 0.6,
                    width: context.screenWidth,
                    child: Stack(
                      children: [
                        Container(
                          height: double.infinity,
                          width: context.width20 * 5,
                          decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(context.radius30),
                                  bottomRight:
                                      Radius.circular(context.radius30),
                                ),
                              ),
                              color: AppColors.orange),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MenuCard(
                                imageShape: ClipOval(
                                  child: SizedBox(
                                    height: context.height30 * 2,
                                    width: context.width30 * 2,
                                    child: Image.asset(ImgAssets.western2Img,
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                name: "Food",
                                count: "120",
                              ),
                              SizedBox(height: context.height20),
                              MenuCard(
                                imageShape: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: SizedBox(
                                    height: context.height30 * 2,
                                    width: context.width30 * 2,
                                    child: Image.asset(ImgAssets.coffee2Img,
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                name: "Beverage",
                                count: "220",
                              ),
                              SizedBox(height: context.height20),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushReplacementNamed(Routes.dessertScreen);
                                },
                                child: MenuCard(
                                  imageShape: ClipPath(
                                    clipper: CustomTriangle(),
                                    child: SizedBox(
                                      height: context.height15 * 5,
                                      width: context.width15 * 5,
                                      child: Image.asset(ImgAssets.dessertImg,
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  name: "Desserts",
                                  count: "135",
                                ),
                              ),
                              SizedBox(height: context.height20),
                              MenuCard(
                                imageShape: ClipPath(
                                  clipper: CustomDiamond(),
                                  child: SizedBox(
                                    height: context.height20 * 4,
                                    width: context.width20 * 4,
                                    child: Image.asset(ImgAssets.hamburger3Img,
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                name: "Promotions",
                                count: "25",
                              ),
                            ],
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
          const Positioned(bottom: 0, left: 0, child: CustomNavBar(menu: true))
        ],
      ),
    );
  }
}



