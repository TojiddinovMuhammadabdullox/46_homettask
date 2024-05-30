import 'dart:convert';
import 'package:flutter_application_1/models/category.dart';
import 'package:http/http.dart' as http;

class CategoriesHttpServices {
  Future<List<Category>> getCategories() async {
    Uri url = Uri.parse("https://api.escuelajs.co/api/v1/categories");
    final response = await http.get(url);
    final data = jsonDecode(response.body);
    List<Category> loadedCategories = [];

    if (data != null) {
      for (var element in data) {
        loadedCategories.add(Category.fromJson(element));
      }
    }
    return loadedCategories;
  }
}
