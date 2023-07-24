import 'package:flutter/material.dart';

import '../../../components/app_text.dart';
import '../../../constant/colors.dart';

class CategoryHeader extends StatelessWidget {
  const CategoryHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          alignment: Alignment.topLeft,
          icon: const Icon(Icons.arrow_back,size: 30),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
                text: "Food & Drinks",
                clr: blackColor,
                fontWeight: FontWeight.bold,
                size: 16),
            Row(
              children: [
                AppText(
                    text: "Deliver to ",
                    clr: greyColor,
                    fontWeight: FontWeight.normal,
                    size: 14),
                AppText(
                    text: "Mohamadeah Dist Riyadh",
                    clr: redColor,
                    fontWeight: FontWeight.normal,
                    size: 14),
              ],
            ),
          ],
        ),
        SizedBox(
          width: defPadding,
        ),
        IconButton(
          alignment: Alignment.topLeft,
          icon: const Icon(Icons.search_outlined,size: 30),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
