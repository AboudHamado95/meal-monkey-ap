import 'package:flutter/material.dart';
import 'package:meal_monkey/config/routes/app_routes.dart';
import 'package:meal_monkey/core/utils/assets_manager.dart';
import 'package:meal_monkey/core/utils/dimensions.dart';
import 'package:meal_monkey/core/widgets/custom_nav_bar.dart';
import 'package:meal_monkey/features/delivery/presentation/widgets/more_card_widget.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              height: context.screenHeight,
              width: context.screenWidth,
              padding: EdgeInsets.symmetric(horizontal: context.width20),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "More",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Image.asset(ImgAssets.cartImg),
                    ],
                  ),
                  SizedBox(height: context.height20),
                  MoreCard(
                      image: Image.asset(ImgAssets.incomeImg),
                      name: "Payment Details",
                      handler: () => Navigator.of(context)
                          .pushNamed(Routes.paymentScreen)),
                  SizedBox(height: context.height10),
                  MoreCard(
                    image: Image.asset(ImgAssets.shoppingBagImg),
                    name: "My Orders",
                    handler: () =>
                        Navigator.of(context).pushNamed(Routes.myOrderScreen),
                  ),
                  SizedBox(height: context.height10),
                  MoreCard(
                    image: Image.asset(ImgAssets.notiImg),
                    name: "Notifications",
                    isNoti: true,
                    handler: () => Navigator.of(context)
                        .pushNamed(Routes.notificationScreen),
                  ),
                  SizedBox(height: context.height10),
                  MoreCard(
                      image: Image.asset(ImgAssets.mailImg),
                      name: "Inbox",
                      handler: () =>
                          Navigator.of(context).pushNamed(Routes.inboxScreen)),
                  SizedBox(height: context.height10),
                  MoreCard(
                      image: Image.asset(ImgAssets.infoImg),
                      name: "About Us",
                      handler: () => Navigator.of(context)
                          .pushNamed(Routes.aboutUsScreen)),
                  SizedBox(height: context.height10),
                ]),
              ),
            ),
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            child: CustomNavBar(
              more: true,
            ),
          )
        ],
      ),
    );
  }
}
