import 'package:flutter/material.dart';
import 'package:meal_monkey/config/routes/app_routes.dart';
import 'package:meal_monkey/core/utils/app_colors.dart';
import 'package:meal_monkey/core/utils/assets_manager.dart';
import 'package:meal_monkey/core/utils/dimensions.dart';

class CustomNavBar extends StatelessWidget {
  final bool? home;
  final bool? menu;
  final bool? offer;
  final bool? profile;
  final bool? more;
  const CustomNavBar({
    Key? key,
    this.home = false,
    this.menu = false,
    this.offer = false,
    this.profile = false,
    this.more = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height10 * 12,
      width: context.screenWidth,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: CustomNavBarClipper(),
              child: Container(
                height: context.height20 * 4,
                width: context.screenWidth,
                padding: EdgeInsets.symmetric(horizontal: context.width20),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (!menu!) {
                          Navigator.of(context)
                              .pushReplacementNamed(Routes.menuScreen);
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          menu!
                              ? Image.asset(ImgAssets.moreFilledImg)
                              : Image.asset(ImgAssets.moreImg),
                          menu!
                              ? const Text("Menu",
                                  style: TextStyle(color: AppColors.orange))
                              : const Text("Menu"),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (!offer!) {
                          Navigator.of(context)
                              .pushReplacementNamed(Routes.offerScreen);
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          offer!
                              ? Image.asset(ImgAssets.bagFilledImg)
                              : Image.asset(ImgAssets.bagImg),
                          offer!
                              ? const Text("Offers",
                                  style: TextStyle(color: AppColors.orange))
                              : const Text("Offers"),
                        ],
                      ),
                    ),
                    SizedBox(width: context.width20),
                    GestureDetector(
                      onTap: () {
                        if (!profile!) {
                          Navigator.of(context)
                              .pushReplacementNamed(Routes.profileScreen);
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          profile!
                              ? Image.asset(ImgAssets.userFilledImg)
                              : Image.asset(ImgAssets.userImg),
                          profile!
                              ? const Text("Profile",
                                  style: TextStyle(color: AppColors.orange))
                              : const Text("Profile"),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (!more!) {
                          Navigator.of(context)
                              .pushReplacementNamed(Routes.moreScreen);
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          more!
                              ? Image.asset(ImgAssets.menuFilledImg)
                              : Image.asset(ImgAssets.menuImg),
                          more!
                              ? const Text("More",
                                  style: TextStyle(color: AppColors.orange))
                              : const Text("More"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: context.height20 * 4,
              width: context.width20 * 4,
              child: FloatingActionButton(
                elevation: 0,
                backgroundColor:
                    home! ? AppColors.orange : AppColors.placeholder,
                onPressed: () {
                  if (!home!) {
                    Navigator.of(context)
                        .pushReplacementNamed(Routes.homeScreen);
                  }
                },
                child: Image.asset(ImgAssets.homeWhiteImg),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomNavBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width * 0.3, 0);
    path.quadraticBezierTo(
      size.width * 0.375,
      0,
      size.width * 0.375,
      size.height * 0.1,
    );
    path.cubicTo(
      size.width * 0.4,
      size.height * 0.8,
      size.width * 0.6,
      size.height * 0.9,
      size.width * 0.625,
      size.height * 0.1,
    );
    path.quadraticBezierTo(
      size.width * 0.625,
      0,
      size.width * 0.7,
      0.1,
    );
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
