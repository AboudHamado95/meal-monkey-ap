import 'package:flutter/material.dart';
import 'package:meal_monkey/core/utils/app_colors.dart';
import 'package:meal_monkey/core/utils/assets_manager.dart';
import 'package:meal_monkey/core/utils/dimensions.dart';

class RecentItemCard extends StatelessWidget {
  const RecentItemCard({
    Key? key,
    required String name,
    required Image image,
  })  : _name = name,
        _image = image,
        super(key: key);

  final String _name;
  final Image _image;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            width: context.width10 * 8,
            height: context.height10 * 8,
            child: _image,
          ),
        ),
        SizedBox(width: context.width10),
        Expanded(
          child: SizedBox(
            height: context.height10 * 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _name,
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: AppColors.primary),
                ),
                Row(
                  children: [
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
                    SizedBox(
                      width: context.width20,
                    ),
                  ],
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
                    SizedBox(width: context.width10),
                    const Text('(124) Ratings')
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
