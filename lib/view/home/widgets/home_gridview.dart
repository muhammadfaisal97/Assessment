import 'package:assessment/components/app_text.dart';
import 'package:assessment/constant/colors.dart';
import 'package:assessment/constant/language_constant.dart';
import 'package:flutter/material.dart';

class HomeGridview extends StatelessWidget {
  const HomeGridview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: lightGreenColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: AppText(
                    text: translation(context).foodDelivery,
                    // text: "Food Delivery",
                    clr: blackColor,
                    fontWeight: FontWeight.bold,
                    size: 16),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: AppText(
                    text: translation(context).orderFromYourFavoriteRestaurant,
                    // text: "Order from your favorite restaurant",
                    clr: greyColor,
                    fontWeight: FontWeight.normal,
                    size: 12),
              ),
              SizedBox(
                height: mediaQuery.height / 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/images/food.png",
                    height: mediaQuery.height / 8.2,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          // padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: lightPurpleColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: AppText(
                    text: translation(context).stores,
                    // text: "Stores",
                    clr: blackColor,
                    fontWeight: FontWeight.bold,
                    size: 16),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: AppText(
                    text: translation(context)
                        .shopTillYouDropWithEndlessOptionsAtYourFingertips,
                    // text:
                    //     "Shop till you drop with endless options at your fingertips!",
                    clr: greyColor,
                    fontWeight: FontWeight.normal,
                    size: 12),
              ),
              SizedBox(
                height: mediaQuery.height / 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 32,
                  ),
                  Image.asset(
                    "assets/images/Grocery.png",
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: lightBlueColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: AppText(
                    text: translation(context).courier,
                    // text: "Courier",
                    clr: blackColor,
                    fontWeight: FontWeight.bold,
                    size: 16),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: AppText(
                    text: translation(context)
                        .reliableParcelDeliveryToYourDoorstep,
                    // text:
                    //     "Reliable parcel delivery to your doorstep, hassle-free!",
                    clr: greyColor,
                    fontWeight: FontWeight.normal,
                    size: 12),
              ),
              SizedBox(
                height: mediaQuery.height / 22,
              ),
              Stack(
                children: [
                  Image.asset(
                    "assets/images/Courier.png",
                    height: mediaQuery.height / 13.5,
                    fit: BoxFit.cover,
                  ),
                  Positioned.fill(
                      child: Center(
                          child: Image.asset(
                    "assets/images/logo.png",
                    height: mediaQuery.height / 50,
                    fit: BoxFit.cover,
                  ))),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
        Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: lightRedColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: AppText(
                          text: translation(context).discounts,
                          // text: "Discounts",
                          clr: blackColor,
                          fontWeight: FontWeight.bold,
                          size: 16),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: AppText(
                                text: translation(context).shopSmartSaveBig,
                                // text: "Shop smart, save big!",
                                clr: greyColor,
                                fontWeight: FontWeight.normal,
                                size: 12),
                          ),
                        ),
                        Image.asset(
                          "assets/images/Discount.png",
                          height: mediaQuery.height / 24,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: lightGreenColor,
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: AppText(
                              text: translation(context).subscriptions,
                              // text: "Subscriptions",
                              clr: blackColor,
                              fontWeight: FontWeight.bold,
                              size: 16),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: AppText(
                              text: translation(context).getMore,
                              // text: "Get more,",
                              clr: greyColor,
                              fontWeight: FontWeight.normal,
                              size: 12),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: AppText(
                              text: translation(context).payLess,
                              // text: "Pay less",
                              clr: greyColor,
                              fontWeight: FontWeight.normal,
                              size: 12),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Expanded(
                            child: Image.asset(
                          "assets/images/subscription.png",
                          fit: BoxFit.cover,
                        )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
