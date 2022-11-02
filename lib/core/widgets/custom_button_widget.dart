import 'package:flutter/material.dart';

import 'package:meal_monkey/core/utils/app_colors.dart';
import 'package:meal_monkey/core/utils/dimensions.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    Key? key,
    required this.text,
    required this.onTap,
    required this.backgroundColor,
    required this.foregroundColor,
  }) : super(key: key);
  final String text;
  final VoidCallback onTap;
  final Color backgroundColor;
  final Color foregroundColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height20 * 3,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          foregroundColor: MaterialStateProperty.all(foregroundColor),
          shape: MaterialStateProperty.all(
            StadiumBorder(
              side: BorderSide(
                  color: AppColors.orange, width: context.width15 / 10),
            ),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
