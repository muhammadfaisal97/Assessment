import 'package:assessment/constant/colors.dart';
import 'package:assessment/view/home/widgets/favorite_merchants.dart';
import 'package:assessment/view/home/widgets/home_Restaurant.dart';
import 'package:assessment/view/home/widgets/home_banner.dart';
import 'package:assessment/view/home/widgets/home_gridview.dart';
import 'package:assessment/view/home/widgets/home_header.dart';
import 'package:assessment/view/home/widgets/home_stores.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: defPadding / 2, vertical: defPadding * 2.5),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeHeader(),
              Banners(),
              HomeGridview(),
              SizedBox(
                height: 8,
              ),
              FavoriteMerchants(),
              Restaurants(),
              Stores(),
            ],
          ),
        ),
      ),
    );
  }
}
