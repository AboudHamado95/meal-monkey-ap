import 'package:flutter/material.dart';
import 'package:meal_monkey/config/routes/app_routes.dart';
import 'package:meal_monkey/core/utils/app_colors.dart';
import 'package:meal_monkey/core/utils/assets_manager.dart';
import 'package:meal_monkey/core/utils/dimensions.dart';
import 'package:meal_monkey/core/widgets/custom_nav_bar.dart';
import 'package:meal_monkey/core/widgets/custom_text_input.dart';
import 'package:meal_monkey/features/payment/presentation/widgets/payment_card.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_rounded,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Checkout",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: context.height20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.width20),
                  child: const Text("Delivery Address"),
                ),
                SizedBox(height: context.height10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.width20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: context.screenWidth * 0.4,
                        child: Text(
                          "653 Nostrand Ave., Brooklyn, NY 11216",
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(Routes.changeAddressScreen);
                        },
                        child: const Text(
                          "Change",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: context.height10),
                Container(
                  height: context.height10,
                  width: double.infinity,
                  color: AppColors.placeholderBg,
                ),
                SizedBox(height: context.height20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.width20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Payment method"),
                      TextButton(
                        onPressed: () {
                          showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              isScrollControlled: true,
                              isDismissible: false,
                              context: context,
                              builder: (context) {
                                return SizedBox(
                                  height: context.screenHeight * 0.7,
                                  child: SingleChildScrollView(
                                    physics: const BouncingScrollPhysics(),
                                    child: ListView(
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              icon: const Icon(
                                                Icons.clear,
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: context.width20),
                                          child: Row(
                                            children: [
                                              Text(
                                                "Add Credit/Debit Card",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline3,
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: context.width20),
                                          child: Divider(
                                            color: AppColors.placeholder
                                                .withOpacity(0.5),
                                            thickness: 1.5,
                                            height: context.height20 * 2,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: context.width20),
                                          child: CustomTextInput(
                                              hintText: "card Number",
                                              padding: context.height20 * 2),
                                        ),
                                        SizedBox(height: context.height20),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: context.width20),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text("Expiry"),
                                              SizedBox(
                                                height: context.height10 * 5,
                                                width: context.width20 * 5,
                                                child: CustomTextInput(
                                                  hintText: "MM",
                                                  padding: context.height20 +
                                                      context.height15,
                                                ),
                                              ),
                                              SizedBox(
                                                height: context.height10 * 5,
                                                width: context.width20 * 5,
                                                child: CustomTextInput(
                                                  hintText: "YY",
                                                  padding: context.height20 * 2,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: context.height20),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: context.width20),
                                          child: CustomTextInput(
                                              hintText: "Security Code",
                                              padding: context.height20 * 2),
                                        ),
                                        SizedBox(height: context.height20),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: context.width20),
                                          child: CustomTextInput(
                                              hintText: "First Name",
                                              padding: context.height20 * 2),
                                        ),
                                        SizedBox(height: context.height20),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: context.width20),
                                          child: CustomTextInput(
                                              hintText: "Last Name",
                                              padding: context.height20 * 2),
                                        ),
                                        SizedBox(height: context.height20),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: context.width20),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizedBox(
                                                width:
                                                    context.screenWidth * 0.4,
                                                child: const Text(
                                                    "You can remove this card at anytime"),
                                              ),
                                              Switch(
                                                value: false,
                                                onChanged: (_) {},
                                                thumbColor:
                                                    MaterialStateProperty.all(
                                                  AppColors.secondary,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: context.height30),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: context.width20),
                                          child: SizedBox(
                                            height: context.height10 * 5,
                                            child: ElevatedButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    const Icon(
                                                      Icons.add,
                                                    ),
                                                    SizedBox(
                                                        width: context.width20 *
                                                            2),
                                                    const Text("Add Card"),
                                                    SizedBox(
                                                        width: context.width20 *
                                                            2),
                                                  ],
                                                )),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                        child: Row(
                          children: const [
                            Icon(Icons.add),
                            Text(
                              "Add Card",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                PaymentCard(
                  widget: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Cash on delivery"),
                      Container(
                        width: context.width15,
                        height: context.height15,
                        decoration: const ShapeDecoration(
                          shape: CircleBorder(
                            side: BorderSide(color: AppColors.orange),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: context.height10),
                PaymentCard(
                  widget: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: context.width20 * 2,
                            child: Image.asset(ImgAssets.visa2Img),
                          ),
                          SizedBox(width: context.width10),
                          const Text("**** **** **** 2187"),
                        ],
                      ),
                      Container(
                        width: context.width15,
                        height: context.height15,
                        decoration: const ShapeDecoration(
                          shape: CircleBorder(
                            side: BorderSide(color: AppColors.orange),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: context.height10),
                PaymentCard(
                  widget: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: context.width20 * 2,
                            height: context.height30,
                            child: Image.asset(ImgAssets.paypalImg),
                          ),
                          SizedBox(width: context.width10),
                          const Text("johndoe@email.com"),
                        ],
                      ),
                      Container(
                        width: context.width15,
                        height: context.height15,
                        decoration: const ShapeDecoration(
                          shape: CircleBorder(
                            side: BorderSide(color: AppColors.orange),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: context.height20),
                Container(
                  height: context.height10,
                  width: double.infinity,
                  color: AppColors.placeholderBg,
                ),
                SizedBox(height: context.height20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.width20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Sub Total"),
                          Text(
                            "\$68",
                            style: Theme.of(context).textTheme.headline3,
                          )
                        ],
                      ),
                      SizedBox(
                        height: context.height10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Delivery Cost"),
                          Text(
                            "\$2",
                            style: Theme.of(context).textTheme.headline3,
                          )
                        ],
                      ),
                      SizedBox(
                        height: context.height10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Discount"),
                          Text(
                            "-\$4",
                            style: Theme.of(context).textTheme.headline3,
                          )
                        ],
                      ),
                      Divider(
                        height: context.width20 * 2,
                        color: AppColors.placeholder.withOpacity(0.25),
                        thickness: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Total"),
                          Text(
                            "\$66",
                            style: Theme.of(context).textTheme.headline3,
                          )
                        ],
                      ),
                      SizedBox(height: context.height20),
                    ],
                  ),
                ),
                Container(
                  height: context.height10,
                  width: double.infinity,
                  color: AppColors.placeholderBg,
                ),
                SizedBox(height: context.height20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.width20),
                  child: SizedBox(
                    height: context.height10 * 5,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            isScrollControlled: true,
                            isDismissible: false,
                            context: context,
                            builder: (context) {
                              return SizedBox(
                                height: context.screenHeight * 0.9,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          icon: const Icon(Icons.clear),
                                        ),
                                      ],
                                    ),
                                    Image.asset(ImgAssets.vector4Img),
                                    SizedBox(height: context.height20),
                                    Text(
                                      "Thank You!",
                                      style: TextStyle(
                                        color: AppColors.primary,
                                        fontWeight: FontWeight.w900,
                                        fontSize: context.font26 + 4,
                                      ),
                                    ),
                                    SizedBox(
                                      height: context.height10,
                                    ),
                                    Text(
                                      "for your order",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline4!
                                          .copyWith(color: AppColors.primary),
                                    ),
                                    SizedBox(height: context.height20),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: context.width20),
                                      child: const Text(
                                          "Your order is now being processed. We will let you know once the order is picked from the outlet. Check the status of your order"),
                                    ),
                                    SizedBox(height: context.height20 * 2),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: context.width20,
                                      ),
                                      child: SizedBox(
                                        height: context.height10 * 5,
                                        width: double.infinity,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          child: const Text("Track My Order"),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: context.width20,
                                      ),
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pushReplacementNamed(
                                                  Routes.homeScreen);
                                        },
                                        child: const Text(
                                          "Back To Home",
                                          style: TextStyle(
                                            color: AppColors.primary,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            });
                      },
                      child: const Text("Send Order"),
                    ),
                  ),
                )
              ],
            ),
          ),
          const Positioned(bottom: 0, left: 0, child: CustomNavBar())
        ],
      ),
    );
  }
}
