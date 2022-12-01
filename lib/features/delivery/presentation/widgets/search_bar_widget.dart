import 'package:flutter/material.dart';
import 'package:meal_monkey/core/utils/app_colors.dart';
import 'package:meal_monkey/core/utils/assets_manager.dart';
import 'package:meal_monkey/core/utils/dimensions.dart';

class SearchBarWidget extends StatelessWidget {
  final String title;
  const SearchBarWidget({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: context.width10 * 5,
        width: double.infinity,
        decoration: const ShapeDecoration(
          shape: StadiumBorder(),
          color: AppColors.placeholderBg,
        ),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Image.asset(ImgAssets.searchFilledImg),
            hintText: title,
            hintStyle: TextStyle(
              color: AppColors.placeholder,
              fontSize: context.font16 * 18 / 16,
            ),
            contentPadding: EdgeInsets.only(
              top: context.height10 * 0.9,
            ),
          ),
        ),
      ),
    );
  }
}
