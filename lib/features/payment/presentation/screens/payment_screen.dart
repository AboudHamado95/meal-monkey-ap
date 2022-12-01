import 'package:flutter/material.dart';
import 'package:meal_monkey/core/utils/app_colors.dart';
import 'package:meal_monkey/core/utils/assets_manager.dart';
import 'package:meal_monkey/core/utils/dimensions.dart';
import 'package:meal_monkey/core/widgets/custom_nav_bar.dart';
import 'package:meal_monkey/core/widgets/custom_text_input.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.width20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Payment Details",
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ),
                      Image.asset(ImgAssets.cartImg)
                    ],
                  ),
                ),
                SizedBox(height: context.height10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.width20),
                  child: Row(
                    children: [
                      Text(
                        "Customize your payment method",
                        style: Theme.of(context).textTheme.headline3,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.width20),
                  child: const Divider(
                    color: AppColors.placeholder,
                    thickness: 1.5,
                    height: 30,
                  ),
                ),
                Container(
                  height: 170,
                  width: context.screenWidth,
                  decoration: BoxDecoration(
                    color: AppColors.placeholderBg,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.placeholder.withOpacity(0.5),
                        offset: const Offset(0, 20),
                        blurRadius: 20,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 20,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Cash/Card on delivery",
                              style: TextStyle(
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.check,
                              color: AppColors.orange,
                            )
                          ],
                        ),
                        Divider(
                            color: AppColors.placeholder,
                            thickness: 1,
                            height: context.height20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 40,
                              child: Image.asset(ImgAssets.visaImg),
                            ),
                            const Text("**** ****"),
                            const Text("2187"),
                            OutlinedButton(
                              style: ButtonStyle(
                                  side: MaterialStateProperty.all(
                                    const BorderSide(
                                      color: AppColors.orange,
                                    ),
                                  ),
                                  shape: MaterialStateProperty.all(
                                    const StadiumBorder(),
                                  ),
                                  foregroundColor: MaterialStateProperty.all(
                                      AppColors.orange)),
                              onPressed: () {},
                              child: const Text("Delete Card"),
                            )
                          ],
                        ),
                        Divider(
                          color: AppColors.placeholder,
                          thickness: 1,
                          height: context.height20,
                        ),
                        Row(
                          children: const [
                            Text(
                              "Other Methods",
                              style: TextStyle(
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: context.height10 * 5,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: context.width20),
                  height: context.height10 * 5,
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
                                          height: 40,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: context.width20),
                                        child: CustomTextInput(
                                            hintText: "card Number",
                                            padding: context.height20 * 2),
                                      ),
                                      SizedBox(
                                        height: context.height20,
                                      ),
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
                                                  padding: context.width20 +
                                                      context.width15),
                                            ),
                                            SizedBox(
                                              height: context.height10 * 5,
                                              width: context.height10 * 10,
                                              child: CustomTextInput(
                                                hintText: "YY",
                                                padding: context.height20 * 2,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: context.height20,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: context.width20),
                                        child: CustomTextInput(
                                          hintText: "Security Code",
                                          padding: context.height20 * 2,
                                        ),
                                      ),
                                      SizedBox(
                                        height: context.height20,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: context.width20),
                                        child: CustomTextInput(
                                            hintText: "First Name",
                                            padding: context.height20 * 2),
                                      ),
                                      SizedBox(
                                        height: context.height20,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: context.width20),
                                        child: CustomTextInput(
                                            hintText: "Last Name",
                                            padding: context.height20 * 2),
                                      ),
                                      SizedBox(
                                        height: context.height20,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: context.width20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                                "You can remove this card"),
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
                                                horizontal: context.width20)
                                            .copyWith(bottom: context.height20),
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
                                                      width:
                                                          context.width20 * 2),
                                                  const Text("Add Card"),
                                                  SizedBox(
                                                      width:
                                                          context.width20 * 2),
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.add),
                          Text("Add Another Credit/Debit Card"),
                        ],
                      )),
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
