import 'package:assessment/components/app_text.dart';
import 'package:assessment/constant/colors.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final Function()? onTap;
  final String text;

  const CommonButton({
    Key? key,
    this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: defPadding),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [purpleColor, greenColor],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                stops: const [0.1, 2.5],
              ),
              // color: btnColor,
              borderRadius: BorderRadius.circular(defPadding / 2)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                  child: AppText(
                text: "",
                clr: whiteColor,
                fontWeight: FontWeight.bold,
                size: 18,
              )),
              Center(
                  child: AppText(
                text: text,
                clr: whiteColor,
                fontWeight: FontWeight.bold,
                size: 18,
              )),
              Center(
                  child: Icon(
                Icons.arrow_forward,
                color: whiteColor,
              )),
            ],
          ),
        ));
  }
}
