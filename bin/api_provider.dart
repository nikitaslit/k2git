import 'package:dio/dio.dart';
import 'models/product.dart';

class ApiProvider {
  final Dio _dio = Dio();

  Future<List<Product>> fetchProducts() async {
    final response = await _dio.get('https://fakestoreapi.com/products');
    final List<dynamic> data = response.data;
    return data.map((json) => Product.fromJson(json)).toList();
  }
}
