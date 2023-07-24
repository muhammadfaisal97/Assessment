import 'package:assessment/components/app_text.dart';
import 'package:assessment/components/text_feild.dart';
import 'package:assessment/constant/colors.dart';
import 'package:assessment/constant/language_constant.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              alignment: Alignment.topLeft,
              icon: Icon(Icons.location_on_outlined,
                  size: 24, color: orangeColor),
              onPressed: () {},
            ),
            AppText(
                text: translation(context).shoppingInRiyadh,
                clr: blackColor,
                fontWeight: FontWeight.w600,
                size: 14),
            Container(
              margin: const EdgeInsets.only(left: 4),
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                border: Border.all(color: orangeColor),
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Center(
                child: AppText(
                    text: translation(context).changeLocation,
                    clr: orangeColor,
                    fontWeight: FontWeight.normal,
                    size: 14),
              ),
            ),
            SizedBox(width: mediaQuery.width / 12),
            IconButton(
              icon: const Icon(Icons.heart_broken_outlined, size: 24),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(
              vertical: defPadding / 1.5, horizontal: defPadding / 4),
          child: Column(
            children: [
              CustomTextField(
                prefixIcon: Center(
                  widthFactor: 1.5,
                  child: IconButton(
                    icon: Icon(Icons.search, size: 30, color: orangeColor),
                    onPressed: () {},
                  ),
                ),
                text: translation(context).searchForShopsAndRestaurants,
                // text: "Search for shops and restaurants",
              ),
            ],
          ),
        )
      ],
    );
  }
}
