import 'package:flutter/material.dart';
import 'package:meal_monkey/core/utils/app_colors.dart';
import 'package:meal_monkey/core/utils/dimensions.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({
    Key? key,
    required Widget widget,
  })  : _widget = widget,
        super(key: key);

  final Widget _widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.width20),
      child: Container(
          height: context.height10 * 5,
          width: double.infinity,
          padding: EdgeInsets.only(
            left: context.width30,
            right: context.width20,
          ),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(context.radius20),
              side: BorderSide(
                color: AppColors.placeholder.withOpacity(0.25),
              ),
            ),
            color: AppColors.placeholderBg,
          ),
          child: _widget),
    );
  }
}
