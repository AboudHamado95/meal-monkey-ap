import 'package:flutter/material.dart';
import 'package:meal_monkey/core/utils/app_colors.dart';
import 'package:meal_monkey/core/utils/dimensions.dart';

class MoreCard extends StatelessWidget {
  const MoreCard({
    Key? key,
    required String name,
    required Image image,
    bool isNoti = false,
    required Function handler,
  })  : _name = name,
        _image = image,
        _isNoti = isNoti,
        _handler = handler,
        super(key: key);

  final String _name;
  final Image _image;
  final bool _isNoti;
  final Function _handler;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _handler();
      },
      child: SizedBox(
        height: context.height10 * 7,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.only(
                right: context.width20,
              ),
              padding: EdgeInsets.symmetric(horizontal: context.width20),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(context.radius15 / 2),
                ),
                color: AppColors.placeholderBg,
              ),
              child: Row(
                children: [
                  Container(
                      width: context.width10 * 5,
                      height: context.height10 * 5,
                      decoration: const ShapeDecoration(
                        shape: CircleBorder(),
                        color: AppColors.placeholder,
                      ),
                      child: _image),
                  SizedBox(width: context.width10),
                  Text(
                    _name,
                    style: const TextStyle(
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: context.height20 * 2,
                width: context.width20 * 2,
                decoration: ShapeDecoration(
                  shape: const CircleBorder(),
                  shadows: [
                    BoxShadow(
                      color: AppColors.placeholder.withOpacity(0.3),
                      offset: const Offset(0, 5),
                      blurRadius: 5,
                    ),
                  ],
                  color: AppColors.placeholderBg,
                ),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColors.secondary,
                  size: context.iconsSize16,
                ),
              ),
            ),
            if (_isNoti)
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: context.height30,
                  width: context.width30,
                  margin: EdgeInsets.only(
                    right: context.width10 * 5,
                  ),
                  decoration: const ShapeDecoration(
                    shape: CircleBorder(),
                    color: Colors.red,
                  ),
                  child: const Center(
                    child: Text(
                      "15",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
