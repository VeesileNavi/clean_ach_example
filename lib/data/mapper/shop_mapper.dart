import '../local_storage/model/model.dart';
import 'package:magnit_test_app/data/mapper/product_mapper.dart';
import 'package:magnit_test_app/domain/model/model.dart';

class ShopMapper {
  static Shop fromLocal(LocalShop localShop) {
    return Shop(
      id: localShop.id,
      name: localShop.name,
      products: localShop.products
          .map(
            (localProduct) => ProductMapper.fromLocal(
              localProduct,
            ),
          )
          .toList(),
    );
  }
}
