import 'package:flutter_application_1/models/product.dart';
import 'package:flutter_application_1/services/products_http_services.dart';

class ProductsController {
  final productsHttpService = ProductsHttpServices();
  Future<List<Product>> getProducts() async {
    List<Product> products = await productsHttpService.getProducts();
    return products;
  }
}
