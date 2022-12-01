import 'package:flutter/material.dart';
import 'package:meal_monkey/core/utils/app_colors.dart';
import 'package:meal_monkey/core/utils/dimensions.dart';

class BurgerCard extends StatelessWidget {
  const BurgerCard({
    Key? key,
    required String name,
    required String price,
    bool isLast = false,
  })  : _name = name,
        _price = price,
        _isLast = isLast,
        super(key: key);

  final String _name;
  final String _price;
  final bool _isLast;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height10 * 5,
      decoration: BoxDecoration(
        border: Border(
          bottom: _isLast
              ? BorderSide.none
              : BorderSide(
                  color: AppColors.placeholder.withOpacity(0.25),
                ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              "$_name x1",
              style: TextStyle(
                color: AppColors.primary,
                fontSize: context.font16 - 1,
              ),
            ),
          ),
          Text(
            "\$$_price",
            style: TextStyle(
              color: AppColors.primary,
              fontSize: context.font16,
              fontWeight: FontWeight.w900,
            ),
          )
        ],
      ),
    );
  }
}
