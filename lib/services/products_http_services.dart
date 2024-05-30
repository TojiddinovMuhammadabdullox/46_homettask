import 'dart:convert';

import 'package:flutter_application_1/models/product.dart';
import 'package:http/http.dart' as http;

class ProductsHttpServices {
  Future<List<Product>> getProducts() async {
    Uri url = Uri.parse("https://api.escuelajs.co/api/v1/products");
    final response = await http.get(url);
    final data = jsonDecode(response.body);
    List<Product> loadProducts = [];

    if (data != null) {
      for (var element in data) {
        loadProducts.add(Product.fromJson(element));
      }
    }
    return loadProducts;
  }
}
