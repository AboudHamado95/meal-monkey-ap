import 'package:flutter/material.dart';
import 'package:meal_monkey/core/utils/app_colors.dart';
import 'package:meal_monkey/core/utils/assets_manager.dart';
import 'package:meal_monkey/core/utils/dimensions.dart';

class DessertCard extends StatelessWidget {
  const DessertCard({
    Key? key,
    required String name,
    required String rating,
    required String shop,
    required Image image,
  })  : _name = name,
        _rating = rating,
        _shop = shop,
        _image = image,
        super(key: key);

  final String _name;
  final String _rating;
  final String _shop;
  final Image _image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height10 * 25,
      width: double.infinity,
      child: Stack(
        children: [
          SizedBox(
            height: context.height10 * 25,
            width: double.infinity,
            child: _image,
          ),
          Container(
            height: context.height10 * 25,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.7),
                  Colors.black.withOpacity(0.2),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: context.height10 * 7,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: context.width20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _name,
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: Colors.white),
                  ),
                  Row(
                    children: [
                      Image.asset(ImgAssets.starFilledImg),
                      SizedBox(width: context.width10 / 2),
                      Text(
                        _rating,
                        style: const TextStyle(color: AppColors.orange),
                      ),
                      SizedBox(width: context.width10 / 2),
                      Text(
                        _shop,
                        style: const TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: context.width10 / 2),
                      Padding(
                        padding: EdgeInsets.only(bottom: context.height15 / 2),
                        child: const Text(
                          ".",
                          style: TextStyle(color: AppColors.orange),
                        ),
                      ),
                      SizedBox(width: context.width10 / 2),
                      const Text(
                        "Desserts",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
