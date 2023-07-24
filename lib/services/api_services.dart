import 'package:assessment/models/category_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<List<ProductModel>> getProducts() async {
    final response =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if (response.statusCode == 200) {
      return productModelFromJson(response.body);
    } else {
      throw Exception("Failed to load products");
    }
  }
}
