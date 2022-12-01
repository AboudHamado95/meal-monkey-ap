import 'package:flutter/material.dart';
import 'package:meal_monkey/core/utils/app_colors.dart';
import 'package:meal_monkey/core/utils/assets_manager.dart';
import 'package:meal_monkey/core/utils/dimensions.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    Key? key,
    required String name,
    required Image image,
  })  : _image = image,
        _name = name,
        super(key: key);

  final String _name;
  final Image _image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 200, width: double.infinity, child: _image),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      _name,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Image.asset(ImgAssets.starFilledImg),
                    SizedBox(
                      width: context.width10 / 2,
                    ),
                    const Text(
                      "4.9",
                      style: TextStyle(
                        color: AppColors.orange,
                      ),
                    ),
                    SizedBox(
                      width: context.width10 / 2,
                    ),
                    const Text("(124 ratings)"),
                    SizedBox(
                      width: context.width10 / 2,
                    ),
                    const Text("Cafe"),
                    SizedBox(
                      width: context.width10 / 2,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: context.height10 / 2),
                      child: const Text(
                        ".",
                        style: TextStyle(
                          color: AppColors.orange,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: context.width10 / 2,
                    ),
                    const Text("Western Food"),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
