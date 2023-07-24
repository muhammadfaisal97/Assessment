import 'package:assessment/components/app_text.dart';
import 'package:assessment/constant/colors.dart';
import 'package:assessment/constant/language_constant.dart';
import 'package:flutter/material.dart';

class Stores extends StatelessWidget {
  const Stores({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(left: 16, top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
              text: translation(context).stores,
              // text: "Stores",
              clr: blackColor,
              fontWeight: FontWeight.bold,
              size: 16),
          SizedBox(
            height: mediaQuery.height / 5.5,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                10,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: 16, top: 16),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.05),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Image.asset("assets/images/gifts.png",
                            height: mediaQuery.height / 13, fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: AppText(
                            text: translation(context).burger,
                            // text: "Burger",
                            clr: blackColor,
                            fontWeight: FontWeight.w500,
                            size: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
