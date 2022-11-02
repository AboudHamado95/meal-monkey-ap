import 'package:flutter/material.dart';

import 'package:meal_monkey/core/utils/dimensions.dart';

class CustomButtonImgWidget extends StatelessWidget {
  const CustomButtonImgWidget(
      {Key? key,
      required this.backgroundColor,
      required this.onTap,
      required this.image,
      required this.textButton})
      : super(key: key);
  final int backgroundColor;
  final VoidCallback onTap;
  final String image;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height20 * 3,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Color(backgroundColor),
          ),
        ),
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image),
            SizedBox(
              width: context.width20 * 1.5,
            ),
            Text(textButton)
          ],
        ),
      ),
    );
  }
}
