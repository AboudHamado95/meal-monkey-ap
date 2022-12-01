import 'package:flutter/material.dart';
import 'package:meal_monkey/config/routes/app_routes.dart';
import 'package:meal_monkey/core/utils/app_colors.dart';
import 'package:meal_monkey/core/utils/assets_manager.dart';
import 'package:meal_monkey/core/utils/dimensions.dart';
import 'package:meal_monkey/core/widgets/custom_nav_bar.dart';
import 'package:meal_monkey/features/delivery/presentation/widgets/burger_card_widget.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({super.key});

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
                    Expanded(
                      child: Text(
                        "My Order",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    )
                  ],
                ),
                SizedBox(height: context.height20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.width20),
                  child: SizedBox(
                    height: context.height20 * 4,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: SizedBox(
                            height: context.height20 * 4,
                            width: context.width20 * 4,
                            child: Image.asset(ImgAssets.hamburgerImg,
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(width: context.width10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              "King Burgers",
                              style: Theme.of(context).textTheme.headline3,
                            ),
                            Row(
                              children: [
                                Image.asset(ImgAssets.starFilledImg),
                                SizedBox(width: context.width10 / 2),
                                const Text(
                                  "4.9",
                                  style: TextStyle(
                                    color: AppColors.orange,
                                  ),
                                ),
                                const Text(" (124 ratings)"),
                              ],
                            ),
                            Row(
                              children: [
                                const Text("Burger"),
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom: context.height10 / 2),
                                  child: const Text(
                                    ".",
                                    style: TextStyle(
                                      color: AppColors.orange,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const Text("Western Food"),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: context.height15,
                                  child: Image.asset(ImgAssets.locImg),
                                ),
                                SizedBox(width: context.width10 / 2),
                                const Text("No 03, 4th Lane, Newyork")
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: context.height30),
                Container(
                  width: double.infinity,
                  color: AppColors.placeholderBg,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: context.width20),
                    child: Column(
                      children: const [
                        BurgerCard(
                          price: "16",
                          name: "Beef Burger",
                        ),
                        BurgerCard(
                          price: "14",
                          name: "Classic Burger",
                        ),
                        BurgerCard(
                          price: "17",
                          name: "Cheese Chicken Burger",
                        ),
                        BurgerCard(
                          price: "15",
                          name: "Chicken Legs Basket",
                        ),
                        BurgerCard(
                          price: "6",
                          name: "French Fries Large",
                          isLast: true,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.width20),
                  child: Column(
                    children: [
                      Container(
                        height: context.height10 * 5,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: AppColors.placeholder.withOpacity(0.25),
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Delivery Instruction",
                                style: Theme.of(context).textTheme.headline3,
                              ),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.add,
                                      color: AppColors.orange,
                                    ),
                                    Text(
                                      "Add Notes",
                                      style: TextStyle(
                                        color: AppColors.orange,
                                      ),
                                    )
                                  ],
                                ))
                          ],
                        ),
                      ),
                      SizedBox(height: context.height15),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Sub Total",
                              style: Theme.of(context).textTheme.headline3,
                            ),
                          ),
                          Text(
                            "\$68",
                            style:
                                Theme.of(context).textTheme.headline3!.copyWith(
                                      color: AppColors.orange,
                                    ),
                          )
                        ],
                      ),
                      SizedBox(height: context.height10),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Delivery Cost",
                              style: Theme.of(context).textTheme.headline3,
                            ),
                          ),
                          Text(
                            "\$2",
                            style:
                                Theme.of(context).textTheme.headline3!.copyWith(
                                      color: AppColors.orange,
                                    ),
                          )
                        ],
                      ),
                      SizedBox(height: context.height10),
                      Divider(
                        color: AppColors.placeholder.withOpacity(0.25),
                        thickness: 1.5,
                      ),
                      SizedBox(height: context.height10),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Total",
                              style: Theme.of(context).textTheme.headline3,
                            ),
                          ),
                          Text(
                            "\$70",
                            style:
                                Theme.of(context).textTheme.headline3!.copyWith(
                                      color: AppColors.orange,
                                      fontSize: context.font20,
                                    ),
                          )
                        ],
                      ),
                      SizedBox(height: context.height20),
                      SizedBox(
                        height: context.height10 * 5,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(Routes.checkoutScreen);
                          },
                          child: const Text("Checkout"),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Positioned(bottom: 0, left: 0, child: CustomNavBar()),
        ],
      ),
    );
  }
}
