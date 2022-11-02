import 'package:flutter/material.dart';
import 'package:meal_monkey/core/utils/app_colors.dart';

import 'package:meal_monkey/core/utils/dimensions.dart';

class OTPInput extends StatelessWidget {
  const OTPInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width30 * 2,
      height: context.height30 * 2,
      decoration: ShapeDecoration(
        color: AppColors.placeholderBg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(context.radius20 / 2),
        ),
      ),
      child: Stack(
        children: [
          // Padding(
          //   padding:
          //       EdgeInsets.only(top: context.height20, left: context.width20),
          //   child: Text(
          //     "*",
          //     style: TextStyle(fontSize: context.font16 * 3),
          //   ),
          // ),
          TextField(
            decoration: InputDecoration(
                hintText: '*',
                hintStyle: TextStyle(
                  fontSize: context.font16 * 2,
                  height: 1.7,
                ),
                contentPadding: EdgeInsets.only(
                    left: context.width10 * 2.5),
                border: InputBorder.none),
          ),
        ],
      ),
    );
  }
}
