import 'package:assessment/models/category_model.dart';
import 'package:assessment/services/api_services.dart';
import 'package:flutter/material.dart';

class CategoryController with ChangeNotifier {
  List<ProductModel> _products = [];

  List<ProductModel> get products => _products;

  getProductsLoaded() async {
    try {
      final data = await ApiServices().getProducts();
      _products = data;
      notifyListeners();
    } catch (e) {
      print(e.toString());
    }
  }
}
