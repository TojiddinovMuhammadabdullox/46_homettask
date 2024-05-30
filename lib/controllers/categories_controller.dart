import 'package:flutter_application_1/models/category.dart';
import 'package:flutter_application_1/services/categories_http_services.dart';

class CategoriesController {
  final categoriesHttpService = CategoriesHttpServices();
  Future<List<Category>> getCategories() async {
    List<Category> categories = await categoriesHttpService.getCategories();
    return categories;
  }
}
