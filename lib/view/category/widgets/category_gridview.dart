import 'package:assessment/components/app_text.dart';
import 'package:assessment/constant/colors.dart';
import 'package:assessment/controller/category_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:transparent_image/transparent_image.dart';

class CategoryGridview extends StatelessWidget {
  const CategoryGridview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoryController = Provider.of<CategoryController>(context);
    return categoryController.products.isNotEmpty
        ? GridView.builder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              mainAxisExtent: 170,
            ),
            itemCount: categoryController.products.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(defPadding),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: ClipRRect(
                        // color: whiteColor,
                        borderRadius: BorderRadius.circular(defPadding),
                        child: FadeInImage.memoryNetwork(
                          height: 100,
                          fit: BoxFit.cover,
                          fadeInDuration: Duration(milliseconds: 500),
                          image: categoryController.products[index].image
                              .toString(),
                          placeholder: kTransparentImage,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 16),
                      child: AppText(
                          text: categoryController.products[index].category
                              .toString(),
                          clr: blackColor,
                          fontWeight: FontWeight.bold,
                          size: 16),
                    ),
                  ],
                ),
              );
            })
        : const Center(child: CircularProgressIndicator.adaptive());
  }
}
