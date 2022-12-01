import 'package:flutter/material.dart';
import 'package:meal_monkey/core/utils/app_colors.dart';
import 'package:meal_monkey/core/utils/assets_manager.dart';
import 'package:meal_monkey/core/utils/dimensions.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({
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
      height: context.height30 * 10,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
              height: context.height20 * 10,
              width: double.infinity,
              child: _image),
          SizedBox(height: context.height10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.width20),
            child: Row(
              children: [
                Text(
                  _name,
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: AppColors.primary),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.width20),
            child: Row(
              children: [
                Image.asset(ImgAssets.starFilledImg),
                SizedBox(width: context.width10 / 2),
                const Text(
                  "4.9",
                  style: TextStyle(
                    color: AppColors.orange,
                  ),
                ),
                SizedBox(width: context.width10 / 2),
                const Text("(124 ratings) Cafe"),
                SizedBox(
                  width: context.width10 / 2,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: context.height10 / 2),
                  child: const Text(
                    ".",
                    style: TextStyle(
                        color: AppColors.orange, fontWeight: FontWeight.bold),
                  ),
                ),
                const Text(" Western Food"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
