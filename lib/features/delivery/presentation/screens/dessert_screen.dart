import 'package:flutter/material.dart';
import 'package:meal_monkey/core/utils/app_colors.dart';
import 'package:meal_monkey/core/utils/assets_manager.dart';
import 'package:meal_monkey/core/utils/dimensions.dart';
import 'package:meal_monkey/core/widgets/custom_nav_bar.dart';
import 'package:meal_monkey/features/delivery/presentation/widgets/dessert_card_widget.dart';
import 'package:meal_monkey/features/delivery/presentation/widgets/search_bar_widget.dart';

class DessertScreen extends StatelessWidget {
  const DessertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: context.width20),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: const Icon(
                            Icons.arrow_back_ios_rounded,
                            color: AppColors.primary,
                          ),
                        ),
                        SizedBox(
                          width: context.width10 / 2,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Text(
                                "Desserts",
                                style: Theme.of(context).textTheme.headline5,
                              ),
                            ],
                          ),
                        ),
                        Image.asset(ImgAssets.cartImg),
                      ],
                    ),
                  ),
                  SizedBox(height: context.height20),
                  const SearchBarWidget(title: "Search Food"),
                  SizedBox(height: context.height15),
                  DessertCard(
                    image:
                        Image.asset(ImgAssets.applePieImg, fit: BoxFit.cover),
                    name: "French Apple Pie",
                    shop: "Minute by tuk tuk",
                    rating: "4.9",
                  ),
                  SizedBox(height: context.height10 / 2),
                  DessertCard(
                    image:
                        Image.asset(ImgAssets.dessert2Img, fit: BoxFit.cover),
                    name: "Dark Chocolate Cake",
                    shop: "Cakes by Tella",
                    rating: "4.7",
                  ),
                  SizedBox(height: context.height10 / 2),
                  DessertCard(
                    image:
                        Image.asset(ImgAssets.dessert4Img, fit: BoxFit.cover),
                    name: "Street Shake",
                    shop: "Cafe Racer",
                    rating: "4.9",
                  ),
                  SizedBox(height: context.height10 / 2),
                  DessertCard(
                    image:
                        Image.asset(ImgAssets.dessert5Img, fit: BoxFit.cover),
                    name: "Fudgy Chewy Brownies",
                    shop: "Minute by tuk tuk",
                    rating: "4.9",
                  ),
                  SizedBox(height: context.height20 * 4),
                ],
              ),
            ),
          ),
          const Positioned(bottom: 0, left: 0, child: CustomNavBar(menu: true)),
        ],
      ),
    );
  }
}
