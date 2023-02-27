import '../local_storage/model/model.dart';
import 'package:magnit_test_app/data/mapper/characteristics_mapper.dart';
import 'package:magnit_test_app/domain/model/model.dart';

class ProductMapper {
  static Product fromLocal(LocalProduct localProduct) {
    return Product(
        id: localProduct.id,
        name: localProduct.name,
        characteristics: localProduct.characteristics
            .map((localCharacteristic) => CharacteristicsMapper.fromLocal(localCharacteristic))
            .toList());
  }
}
