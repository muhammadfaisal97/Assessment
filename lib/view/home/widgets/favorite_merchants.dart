import 'package:assessment/components/app_text.dart';
import 'package:assessment/constant/colors.dart';
import 'package:assessment/constant/language_constant.dart';
import 'package:flutter/material.dart';

class FavoriteMerchants extends StatelessWidget {
  const FavoriteMerchants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 8),
              child: AppText(
                  text: translation(context).favoriteMerchants,
                  // text: "Favorite Merchants",
                  clr: blackColor,
                  fontWeight: FontWeight.bold,
                  size: 18),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8, top: 8),
              child: AppText(
                  text: translation(context).viewAll,
                  // text: "View All",
                  clr: orangeColor,
                  fontWeight: FontWeight.bold,
                  size: 14),
            ),
          ],
        ),
        SizedBox(
          height: mediaQuery.width / 2,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: List.generate(
              3,
              (index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 8, top: 8, left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            child: Image.asset(
                          "assets/images/Rectangle.png",
                          height: mediaQuery.height / 6,
                          fit: BoxFit.cover,
                        )),
                        SizedBox(
                          width: mediaQuery.width / 1.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8, top: 8),
                                child: AppText(
                                    text: translation(context).englishTeaHouse,
                                    // text: "English Tea House",
                                    clr: blackColor,
                                    fontWeight: FontWeight.bold,
                                    size: 14),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(right: 4, top: 8),
                                    child: Icon(Icons.star,
                                        color: orangeColor, size: 20),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: AppText(
                                        text: "4.0",
                                        clr: blackColor,
                                        fontWeight: FontWeight.bold,
                                        size: 12),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(right: 8, top: 8),
                                    child: AppText(
                                        text: "(100+)",
                                        clr: greyColor,
                                        fontWeight: FontWeight.bold,
                                        size: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                    ),
                    child: AppText(
                        text: translation(context).beveragesIceCreamTea,
                        // text: "Beverages, Ice Cream,Tea",
                        clr: greyColor,
                        fontWeight: FontWeight.normal,
                        size: 12),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
