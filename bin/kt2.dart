import 'api_provider.dart';
import 'models/product.dart';

void main(List<String> arguments) async {
  final apiProvider = ApiProvider();
  List<Product> products = await apiProvider.fetchProducts();

  print('-----------------------------------');
  for (var product in products) {
    print('Id: ${product.id}');
    print('Title: ${product.title}');
    print('Price: \$${product.price.toStringAsFixed(2)}');
    print('Category: ${product.category}');
    print('-----------------------------------\n');
  }
}
