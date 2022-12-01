import 'package:flutter/material.dart';
import 'package:meal_monkey/config/routes/app_routes.dart';
import 'package:meal_monkey/core/utils/assets_manager.dart';

import 'package:meal_monkey/core/utils/dimensions.dart';
import 'package:meal_monkey/core/widgets/custom_nav_bar.dart';

import 'package:meal_monkey/features/delivery/presentation/widgets/category_card_widget.dart';
import 'package:meal_monkey/features/delivery/presentation/widgets/most_popular_card_widget.dart';
import 'package:meal_monkey/features/delivery/presentation/widgets/recent_item_card_widget.dart';
import 'package:meal_monkey/features/delivery/presentation/widgets/restaurant_card_widget.dart';
import 'package:meal_monkey/features/delivery/presentation/widgets/search_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: context.height20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: context.width20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Wrap(
                          children: [
                            Text("Good morning Abdulrahman!",
                                //,
                                style: Theme.of(context).textTheme.headline3),
                          ],
                        ),
                        Image.asset(ImgAssets.cartImg)
                      ],
                    ),
                  ),
                  SizedBox(height: context.height20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: context.width20),
                    child: const Text("Delivering to"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: context.width20),
                    child: DropdownButtonHideUnderline(
                      child: SizedBox(
                        width: context.width10 * 25,
                        child: DropdownButton(
                          value: "current location",
                          items: const [
                            DropdownMenuItem(
                              value: "current location",
                              child: Text("Current Location"),
                            ),
                          ],
                          icon: Image.asset(ImgAssets.dropdownFilledImg),
                          style: Theme.of(context).textTheme.headline4,
                          onChanged: (_) {},
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: context.height20),
                  const SearchBarWidget(
                    title: "Search Food",
                  ),
                  SizedBox(height: context.height20),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CategoryCard(
                            image: Image.asset(
                              ImgAssets.hamburger2Img,
                              fit: BoxFit.cover,
                            ),
                            name: "Offers",
                          ),
                          SizedBox(width: context.width10),
                          CategoryCard(
                            image: Image.asset(ImgAssets.rice2Img,
                                fit: BoxFit.cover),
                            name: "Sri Lankan",
                          ),
                          SizedBox(width: context.width10),
                          CategoryCard(
                            image: Image.asset(
                              ImgAssets.fruitImg,
                              fit: BoxFit.cover,
                            ),
                            name: "Italian",
                          ),
                          SizedBox(width: context.width10),
                          CategoryCard(
                            image: Image.asset(
                              ImgAssets.riceImg,
                              fit: BoxFit.cover,
                            ),
                            name: "Indian",
                          ),
                          SizedBox(width: context.width10),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: context.height10 * 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular Restaurants",
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        TextButton(
                            onPressed: () {}, child: const Text("View all"))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: context.height20,
                  ),
                  RestaurantCard(
                    image: Image.asset(
                      ImgAssets.pizza2Img,
                      fit: BoxFit.cover,
                    ),
                    name: "Minute by tuk tuk",
                  ),
                  RestaurantCard(
                    image: Image.asset(
                      ImgAssets.breakfastImg,
                      fit: BoxFit.cover,
                    ),
                    name: "Cafe de Noir",
                  ),
                  RestaurantCard(
                    image: Image.asset(
                      ImgAssets.bakeryImg,
                      fit: BoxFit.cover,
                    ),
                    name: "Bakes by Tella",
                  ),
                  SizedBox(height: context.height10 * 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Most Popular",
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text("View all"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: context.height20,
                  ),
                  Container(
                    height: context.height10 * 30,
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 20),
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          MostPopularCard(
                            image: Image.asset(
                              ImgAssets.pizza4Img,
                              fit: BoxFit.cover,
                            ),
                            name: "Cafe De Bambaa",
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          MostPopularCard(
                            name: "Burger by Bella",
                            image: Image.asset(
                              ImgAssets.dessert3Img,
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recent Items",
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text("View all"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushReplacementNamed(Routes.individualItemScreen);
                          },
                          child: RecentItemCard(
                            image: Image.asset(
                              ImgAssets.pizza3Img,
                              fit: BoxFit.cover,
                            ),
                            name: "Mulberry Pizza by Josh",
                          ),
                        ),
                        RecentItemCard(
                            image: Image.asset(
                              ImgAssets.coffeeImg,
                              fit: BoxFit.cover,
                            ),
                            name: "Barita"),
                        RecentItemCard(
                            image: Image.asset(
                              ImgAssets.pizzaImg,
                              fit: BoxFit.cover,
                            ),
                            name: "Pizza Rush Hour"),
                        SizedBox(height: context.height20 * 3),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const Positioned(bottom: 0, left: 0, child: CustomNavBar(home: true)),
        ],
      ),
    );
  }
}
