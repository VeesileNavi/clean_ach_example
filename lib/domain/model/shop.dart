import 'package:magnit_test_app/domain/model/product.dart';

class Shop {
  final int id;
  final String name;
  final List<Product> products;

  Shop({
    required this.id,
    required this.name,
    required this.products,
  });
}
