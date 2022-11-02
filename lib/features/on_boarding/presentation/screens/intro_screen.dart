import 'package:flutter/material.dart';
import 'package:meal_monkey/config/routes/app_routes.dart';
import 'package:meal_monkey/core/utils/app_colors.dart';
import 'package:meal_monkey/core/utils/assets_manager.dart';
import 'package:meal_monkey/core/utils/dimensions.dart';
import 'package:meal_monkey/core/widgets/custom_button_widget.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController? controller;
  late int count;
  final List<Map<String, String>> _pages = [
    {
      "image": "vector1.png",
      "title": "Find Food You Love",
      "desc":
          "Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep"
    },
    {
      "image": "vector2.png",
      "title": "Fast Delivery",
      "desc": "Fast food delivery to your home, office wherever you are"
    },
    {
      "image": "vector3.png",
      "title": "Live Tracking",
      "desc":
          "Real time tracking of your food on the app once you placed the order"
    },
  ];

  @override
  void initState() {
    controller = PageController();
    count = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: context.screenWidth,
        height: context.screenHeight,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: context.width20 * 2),
            child: Column(
              children: [
                const Spacer(),
                SizedBox(
                  height: context.height20 * 20,
                  width: double.infinity,
                  child: PageView.builder(
                    controller: controller,
                    onPageChanged: (value) {
                      setState(() {
                        count = value;
                      });
                    },
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Image.asset(ImgAssets.vector1Img);
                      } else if (index == 1) {
                        return Image.asset(ImgAssets.vector2Img);
                      } else {
                        return Image.asset(ImgAssets.vector3Img);
                      }
                    },
                    itemCount: _pages.length,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: context.radius15 / 3,
                      backgroundColor:
                          count == 0 ? AppColors.orange : AppColors.placeholder,
                    ),
                    SizedBox(
                      width: context.width15 / 3,
                    ),
                    CircleAvatar(
                      radius: context.radius15 / 3,
                      backgroundColor:
                          count == 1 ? AppColors.orange : AppColors.placeholder,
                    ),
                    SizedBox(
                      width: context.width15 / 3,
                    ),
                    CircleAvatar(
                      radius: context.radius15 / 3,
                      backgroundColor:
                          count == 2 ? AppColors.orange : AppColors.placeholder,
                    )
                  ],
                ),
                const Spacer(),
                Text(
                  _pages[count]["title"]!,
                  style: Theme.of(context).textTheme.headline6,
                ),
                const Spacer(),
                Text(
                  _pages[count]["desc"]!,
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                CustomButtonWidget(
                    text: 'Next',
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed(Routes.homeScreen);
                    },
                    backgroundColor: AppColors.orange,
                    foregroundColor: Colors.white),
                const Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
