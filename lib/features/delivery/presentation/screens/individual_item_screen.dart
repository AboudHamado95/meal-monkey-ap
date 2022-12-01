import 'package:flutter/material.dart';
import 'package:meal_monkey/core/utils/app_colors.dart';
import 'package:meal_monkey/core/utils/assets_manager.dart';
import 'package:meal_monkey/core/utils/dimensions.dart';
import 'package:meal_monkey/core/widgets/custom_nav_bar.dart';
import 'package:meal_monkey/features/delivery/presentation/widgets/custom_painter/custom_triangle.dart';

class IndividualItemScreen extends StatelessWidget {
  const IndividualItemScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Stack(
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          height: context.screenHeight * 0.5,
                          width: context.screenWidth,
                          child: Image.asset(ImgAssets.pizza3Img,
                              fit: BoxFit.cover),
                        ),
                        Container(
                          height: context.screenHeight * 0.5,
                          width: context.screenWidth,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: const [0.0, 0.4],
                              colors: [
                                Colors.black.withOpacity(0.9),
                                Colors.black.withOpacity(0.0),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SafeArea(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: context.width20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Icon(
                                    Icons.arrow_back_ios_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                                Image.asset(ImgAssets.cartWhiteImg),
                              ],
                            ),
                          ),
                          SizedBox(height: context.screenHeight * 0.35),
                          SizedBox(
                            height: context.height20 * 40,
                            width: double.infinity,
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: context.height15 * 2),
                                  child: Container(
                                    height: context.height10 * 70,
                                    width: double.infinity,
                                    padding: EdgeInsets.symmetric(
                                        vertical: context.height30),
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(
                                              context.radius20 * 2),
                                          topRight: Radius.circular(
                                              context.radius20 * 2),
                                        ),
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: context.width20),
                                          child: Text("Tandoori Chicken Pizza",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline4),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: context.width20),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Image.asset(ImgAssets
                                                          .starFilledImg),
                                                      SizedBox(
                                                        width: context.width15 /
                                                                2 +
                                                            0.5,
                                                      ),
                                                      Image.asset(
                                                        ImgAssets.starFilledImg,
                                                      ),
                                                      SizedBox(
                                                        width: context.width15 /
                                                                2 +
                                                            0.5,
                                                      ),
                                                      Image.asset(ImgAssets
                                                          .starFilledImg),
                                                      SizedBox(
                                                        width: context.width15 /
                                                                2 +
                                                            0.5,
                                                      ),
                                                      Image.asset(ImgAssets
                                                          .starFilledImg),
                                                      SizedBox(
                                                        width: context.width15 /
                                                                2 +
                                                            0.5,
                                                      ),
                                                      Image.asset(
                                                          ImgAssets.starImg),
                                                      SizedBox(
                                                        width: context.width15 /
                                                                2 +
                                                            0.5,
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                      height:
                                                          context.height10 / 2),
                                                  Text(
                                                    "4 Star Ratings",
                                                    style: TextStyle(
                                                      color: AppColors.orange,
                                                      fontSize:
                                                          context.font26 / 2 -
                                                              1,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    SizedBox(
                                                        height:
                                                            context.height20),
                                                    Text(
                                                      "Rs. 750",
                                                      style: TextStyle(
                                                        color:
                                                            AppColors.primary,
                                                        fontSize:
                                                            context.font16 * 2 -
                                                                2,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                    const Text("/per Portion")
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: context.width20),
                                          child: Text(
                                            "Description",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline4!
                                                .copyWith(
                                                    fontSize: context.font16),
                                          ),
                                        ),
                                        SizedBox(height: context.height10),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: context.width20),
                                          child: const Text(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada"),
                                        ),
                                        SizedBox(height: context.height20),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: context.width20),
                                          child: const Divider(
                                            color: AppColors.placeholder,
                                            thickness: 1.5,
                                          ),
                                        ),
                                        SizedBox(height: context.height10),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: context.width20),
                                          child: Text(
                                            "Customize your Order",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline4!
                                                .copyWith(
                                                    fontSize: context.font16),
                                          ),
                                        ),
                                        SizedBox(height: context.height10),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: context.width20),
                                          child: Container(
                                            height: context.height10 * 5,
                                            width: double.infinity,
                                            padding: EdgeInsets.only(
                                                left: context.width30,
                                                right: context.width10),
                                            decoration: ShapeDecoration(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        context.radius15 / 3),
                                              ),
                                              color: AppColors.placeholderBg,
                                            ),
                                            child: DropdownButtonHideUnderline(
                                              child: DropdownButton(
                                                hint: Row(
                                                  children: const [
                                                    Text(
                                                        "-Select the size of portion-"),
                                                  ],
                                                ),
                                                value: "default",
                                                onChanged: (_) {},
                                                items: const [
                                                  DropdownMenuItem(
                                                    value: "default",
                                                    child: Text(
                                                        "-Select the size of portion-"),
                                                  ),
                                                ],
                                                icon: Image.asset(
                                                    ImgAssets.dropDownImg),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: context.height10 / 2),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: context.width20),
                                          child: Container(
                                            height: context.height10 * 5,
                                            width: double.infinity,
                                            padding: EdgeInsets.only(
                                                left: context.width30,
                                                right: context.width10),
                                            decoration: ShapeDecoration(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        context.radius15 / 3),
                                              ),
                                              color: AppColors.placeholderBg,
                                            ),
                                            child: DropdownButtonHideUnderline(
                                              child: DropdownButton(
                                                hint: Row(
                                                  children: const [
                                                    Text(
                                                        "-Select the ingredients-"),
                                                  ],
                                                ),
                                                value: "default",
                                                onChanged: (_) {},
                                                items: const [
                                                  DropdownMenuItem(
                                                    value: "default",
                                                    child: Text(
                                                        "-Select the ingredients-"),
                                                  ),
                                                ],
                                                icon: Image.asset(
                                                    ImgAssets.dropDownImg),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: context.height15,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: context.width20),
                                          child: Row(
                                            children: [
                                              Text(
                                                "Number of Portions",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline4!
                                                    .copyWith(
                                                      fontSize:
                                                          context.radius15,
                                                    ),
                                              ),
                                              Expanded(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    ElevatedButton(
                                                      style: ButtonStyle(
                                                          elevation:
                                                              MaterialStateProperty
                                                                  .all(5.0)),
                                                      onPressed: () {},
                                                      child: const Text("-"),
                                                    ),
                                                    SizedBox(
                                                        width: context.width10 /
                                                            2),
                                                    Container(
                                                      height: context.height10 *
                                                          3.5,
                                                      width: context.height10 *
                                                          5.5,
                                                      decoration:
                                                          const ShapeDecoration(
                                                        shape: StadiumBorder(
                                                          side: BorderSide(
                                                              color: AppColors
                                                                  .orange),
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: const [
                                                          Text(
                                                            "2",
                                                            style: TextStyle(
                                                              color: AppColors
                                                                  .orange,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width:
                                                          context.width10 / 2,
                                                    ),
                                                    ElevatedButton(
                                                      style: ButtonStyle(
                                                          elevation:
                                                              MaterialStateProperty
                                                                  .all(5.0)),
                                                      onPressed: () {},
                                                      child: const Text("+"),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: context.height20 * 10,
                                          width: double.infinity,
                                          child: Stack(
                                            children: [
                                              Container(
                                                width: context.width20 * 6,
                                                decoration: ShapeDecoration(
                                                  color: AppColors.orange,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topRight: Radius.circular(
                                                          context.radius20 * 2),
                                                      bottomRight:
                                                          Radius.circular(
                                                              context.radius20 *
                                                                  2),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal:
                                                          context.width20),
                                                  child: Container(
                                                    height:
                                                        context.height20 * 8,
                                                    width: double.infinity,
                                                    margin: EdgeInsets.only(
                                                      left: context.width10 * 5,
                                                      right:
                                                          context.width20 * 2,
                                                    ),
                                                    decoration: ShapeDecoration(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          topLeft: Radius
                                                              .circular(context
                                                                      .height20 *
                                                                  2),
                                                          bottomLeft: Radius
                                                              .circular(context
                                                                      .height20 *
                                                                  2),
                                                          topRight: Radius
                                                              .circular(context
                                                                  .height10),
                                                          bottomRight: Radius
                                                              .circular(context
                                                                  .height10),
                                                        ),
                                                      ),
                                                      shadows: [
                                                        BoxShadow(
                                                          color: AppColors
                                                              .placeholder
                                                              .withOpacity(0.3),
                                                          offset: const Offset(
                                                              0, 5),
                                                          blurRadius: 5,
                                                        ),
                                                      ],
                                                      color: Colors.white,
                                                    ),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        const Text(
                                                          "Total Price",
                                                        ),
                                                        SizedBox(
                                                            height: context
                                                                .height10),
                                                        Text(
                                                          "LKR 1500",
                                                          style: TextStyle(
                                                              color: AppColors
                                                                  .primary,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: context
                                                                  .font20),
                                                        ),
                                                        SizedBox(
                                                            height: context
                                                                .height20),
                                                        SizedBox(
                                                          width:
                                                              context.width20 *
                                                                  10,
                                                          child: ElevatedButton(
                                                              onPressed: () {},
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Image.asset(
                                                                      ImgAssets
                                                                          .addToCartImg),
                                                                  const Text(
                                                                      "Add to Cart")
                                                                ],
                                                              )),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    right: context.width20),
                                                child: Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Container(
                                                    width: context.width30 * 2,
                                                    height:
                                                        context.height30 * 2,
                                                    decoration: ShapeDecoration(
                                                      color: Colors.white,
                                                      shadows: [
                                                        BoxShadow(
                                                            color: AppColors
                                                                .placeholder
                                                                .withOpacity(
                                                                    0.3),
                                                            offset:
                                                                const Offset(
                                                                    0, 5),
                                                            blurRadius: 5),
                                                      ],
                                                      shape:
                                                          const CircleBorder(),
                                                    ),
                                                    child: Image.asset(ImgAssets
                                                        .cartFilledImg),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(right: context.width20),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      decoration: ShapeDecoration(
                                        shadows: const [
                                          BoxShadow(
                                            color: AppColors.placeholder,
                                            offset: Offset(0, 2),
                                            blurRadius: 6,
                                          ),
                                        ],
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(
                                                context.radius30 * 2),
                                            bottomRight: Radius.circular(
                                                context.radius30 * 2),
                                            topLeft: Radius.circular(
                                                context.radius20 * 2),
                                            bottomLeft: Radius.circular(
                                                context.radius20 * 2),
                                          ),
                                        ),
                                      ),
                                      child: ClipPath(
                                        clipper: CustomTriangle(),
                                        child: Container(
                                          width: context.width30 * 2,
                                          height: context.height30 * 2,
                                          color: Colors.white,
                                          child: Image.asset(
                                              ImgAssets.favFilledImg),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: context.height10),
              ],
            ),
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            child: CustomNavBar(),
          ),
        ],
      ),
    );
  }
}

