import 'package:flutter/material.dart';
import 'package:meal_monkey/core/utils/app_colors.dart';
import 'package:meal_monkey/core/utils/dimensions.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required Image image,
    required String name,
  })  : _image = image,
        _name = name,
        super(key: key);

  final String _name;
  final Image _image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            width: context.height20 * 5,
            height: context.width20 * 5,
            child: _image,
          ),
        ),
        SizedBox(
          height: context.height10 / 2,
        ),
        Text(
          _name,
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: AppColors.primary, fontSize: context.font16),
        ),
      ],
    );
  }
}
