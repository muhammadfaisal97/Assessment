import 'package:assessment/controller/category_controller.dart';
import 'package:assessment/view/category/widgets/category_gridview.dart';
import 'package:assessment/view/category/widgets/category_header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constant/colors.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  void initState() {
    final categoryController =
        Provider.of<CategoryController>(context, listen: false);
    categoryController.getProductsLoaded();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final categoryController = Provider.of<CategoryController>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: defPadding / 1.5, vertical: defPadding * 2.5),
          child: const Column(
            children: [
              CategoryHeader(),
              CategoryGridview(),
            ],
          ),
        ),
      ),
    );
  }
}
