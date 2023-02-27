import 'package:magnit_test_app/data/local_storage/local_storage_util.dart';
import 'package:magnit_test_app/domain/model/shop.dart';
import 'package:magnit_test_app/domain/repository/shop_repository.dart';

class ShopLocalRepository extends ShopRepository {
  final LocalStorageUtil _localStorageUtil;

  ShopLocalRepository(this._localStorageUtil);

  @override
  Future<List<Shop>> getFilteredShopList(String? name, int? characteristicId) {
    return _localStorageUtil.getFilteredShops(
        productName: name, characteristicId: characteristicId);
  }

  @override
  Future<List<Shop>> getShopList() {
    return _localStorageUtil.getAllShops();
  }

}
