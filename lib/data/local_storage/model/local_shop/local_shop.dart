import 'package:hive/hive.dart';

import '../local_product/local_product.dart';

part 'local_shop.g.dart';

@HiveType(typeId: 0)
class LocalShop {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final List<LocalProduct> products;

  LocalShop copyWith({String? name, List<LocalProduct>? products}) {
    return LocalShop(
        id: id,
        name: name ?? this.name,
        products: products ?? this.products);
  }

  LocalShop({
    required this.id,
    required this.name,
    required this.products,
  });
}
