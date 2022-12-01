import 'package:flutter/material.dart';
import 'package:meal_monkey/core/utils/assets_manager.dart';
import 'package:meal_monkey/core/utils/dimensions.dart';
import 'package:meal_monkey/core/widgets/custom_nav_bar.dart';
import 'package:meal_monkey/features/delivery/presentation/widgets/about_card.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: context.width20),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
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
                            "About Us",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                        Image.asset(ImgAssets.cartImg),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: context.height10 * 5,
                        ),
                        Column(
                          children: [
                            const AboutCard(),
                            SizedBox(height: context.height20),
                            const AboutCard(),
                            SizedBox(height: context.height20),
                            const AboutCard(),
                            SizedBox(height: context.height20),
                            const AboutCard(),
                            SizedBox(height: context.height20),
                            const AboutCard(),
                            SizedBox(height: context.height20),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Positioned(bottom: 0, left: 0, child: CustomNavBar(menu: true)),
        ],
      ),
    );
  }
}
