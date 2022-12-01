import 'package:flutter/material.dart';
import 'package:meal_monkey/core/utils/app_colors.dart';
import 'package:meal_monkey/core/utils/assets_manager.dart';
import 'package:meal_monkey/core/utils/dimensions.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({
    Key? key,
    required String name,
    required String count,
    required Widget imageShape,
  })  : _name = name,
        _count = count,
        _imageShape = imageShape,
        super(key: key);

  final String _name;
  final String _count;
  final Widget _imageShape;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: context.height20 * 4,
          width: double.infinity,
          margin: EdgeInsets.symmetric(
            horizontal: context.width20,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: context.width20 * 4,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(context.radius15 * 3 + 5),
              bottomLeft: Radius.circular(context.radius15 * 3 + 5),
              topRight: Radius.circular(context.radius20 / 2),
              bottomRight: Radius.circular(context.radius20 / 2),
            ),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: AppColors.placeholder,
                offset: Offset(0, 5),
                blurRadius: 10,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _name,
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: AppColors.primary,
                    ),
              ),
              SizedBox(
                height: context.height10 / 2,
              ),
              Text("$_count items")
            ],
          ),
        ),
        SizedBox(
          height: 80,
          child: Align(
            alignment: Alignment.centerLeft,
            child: _imageShape,
          ),
        ),
        SizedBox(
          height: context.height20 * 4,
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: context.height20 * 2,
              width: context.width20 * 2,
              decoration: const ShapeDecoration(
                  shape: CircleBorder(),
                  color: Colors.white,
                  shadows: [
                    BoxShadow(
                      color: AppColors.placeholder,
                      offset: Offset(0, 2),
                      blurRadius: 5,
                    )
                  ]),
              child: Image.asset(ImgAssets.nextFilledImg),
            ),
          ),
        ),
      ],
    );
  }
}
