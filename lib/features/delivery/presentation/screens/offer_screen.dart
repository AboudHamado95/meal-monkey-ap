import 'package:flutter/material.dart';
import 'package:meal_monkey/core/utils/assets_manager.dart';
import 'package:meal_monkey/core/utils/dimensions.dart';
import 'package:meal_monkey/core/widgets/custom_nav_bar.dart';
import 'package:meal_monkey/features/delivery/presentation/widgets/offer_card.dart';

class OfferScreen extends StatelessWidget {
  const OfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SizedBox(
              height: context.screenHeight,
              width: context.screenWidth,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: context.width20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Latest Offers",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          Image.asset(ImgAssets.cartImg),
                        ],
                      ),
                    ),
                    SizedBox(height: context.height10),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: context.width20),
                      child: Row(
                        children: const [Text("Find discounts, Offer special")],
                      ),
                    ),
                    SizedBox(
                      height: context.height20 * 2,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: context.width20),
                      child: Row(
                        children: [
                          SizedBox(
                            height: context.height30,
                            width: context.screenWidth * 0.4,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: const Text("Check Offers")),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: context.height30),
                    OfferCard(
                      image: Image.asset(ImgAssets.breakfastImg,
                          fit: BoxFit.cover),
                      name: "Cafe de Noires",
                    ),
                    OfferCard(
                      image:
                          Image.asset(ImgAssets.western2Img, fit: BoxFit.cover),
                      name: "Isso",
                    ),
                    OfferCard(
                      image:
                          Image.asset(ImgAssets.coffee3Img, fit: BoxFit.cover),
                      name: "Cafe Beans",
                    ),
                    SizedBox(
                      height: context.height20 * 2,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Positioned(bottom: 0, left: 0, child: CustomNavBar(offer: true))
        ],
      ),
    );
  }
}

