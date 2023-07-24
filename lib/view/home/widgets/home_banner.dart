import 'package:assessment/components/app_text.dart';
import 'package:assessment/components/common_button.dart';
import 'package:assessment/constant/colors.dart';
import 'package:assessment/constant/language_constant.dart';
import 'package:flutter/material.dart';

class Banners extends StatelessWidget {
  const Banners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Center(
      child: Container(
        height: mediaQuery.height / 4.7,
        width: mediaQuery.width / 1.13,
        decoration: BoxDecoration(
          color: lightPeachColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: AppText(
                        // text: "20% OFF",
                        text: translation(context).off,
                        clr: orangeColor,
                        fontWeight: FontWeight.bold,
                        size: 22),
                  ),
                  AppText(
                      // text: "on any fast food item",
                      text: translation(context).onAnyFastFoodItem,
                      clr: blackColor,
                      fontWeight: FontWeight.bold,
                      size: 14),
                  Container(
                    width: mediaQuery.width / 2.3,
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: CommonButton(
                        text: translation(context).cntinue, onTap: () {}),
                  ),
                  AppText(
                      text: translation(context).validUntilMarch23,
                      // text: "Valid until March 23",
                      clr: greyColor,
                      fontWeight: FontWeight.normal,
                      size: 12),
                ],
              ),
              Image.asset("assets/images/Pizza.png",
                  height: mediaQuery.height / 6.5, fit: BoxFit.cover),
            ],
          ),
        ),
      ),
    );
  }
}
