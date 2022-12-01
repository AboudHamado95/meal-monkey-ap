import 'package:flutter/material.dart';
import 'package:meal_monkey/core/utils/app_colors.dart';
import 'package:meal_monkey/core/utils/assets_manager.dart';
import 'package:meal_monkey/core/utils/dimensions.dart';

class MostPopularCard extends StatelessWidget {
  const MostPopularCard({
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            width: context.width30 * 10,
            height: context.height20 * 10,
            child: _image,
          ),
        ),
        SizedBox(height: context.height10),
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
            const Padding(
              padding: EdgeInsets.only(bottom: 5.0),
              child: Text(
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
            Image.asset(ImgAssets.starFilledImg),
            SizedBox(width: context.width10 / 2),
            const Text(
              "4.9",
              style: TextStyle(
                color: AppColors.orange,
              ),
            )
          ],
        )
      ],
    );
  }
}
