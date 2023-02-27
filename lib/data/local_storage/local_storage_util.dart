import 'package:magnit_test_app/data/local_storage/request/shops_filter.dart';
import 'package:magnit_test_app/data/local_storage/service/local_storage_service.dart';
import 'package:magnit_test_app/data/mapper/characteristics_mapper.dart';
import 'package:magnit_test_app/data/mapper/shop_mapper.dart';

import '../../domain/model/model.dart';

class LocalStorageUtil {
  final LocalStorageService _localStorageService;

  LocalStorageUtil(this._localStorageService);

  Future<List<Shop>> getAllShops() async {
    final localShops = await _localStorageService.getShopList();
    final result =
        localShops.map((localShop) => ShopMapper.fromLocal(localShop)).toList();
    return result;
  }

  Future<List<Characteristics>> getAllCharacteristics() async {
    final localCharacteristics = await _localStorageService.getAllCharacteristics();
    final result = localCharacteristics
        .map((localCharacteristics) =>
            CharacteristicsMapper.fromLocal(localCharacteristics))
        .toList();
    return result;
  }

  Future<List<Shop>> getFilteredShops(
      {String? productName, int? characteristicId}) async {
    final filter =
        ShopsFilter(name: productName, characteristicId: characteristicId);
    final filteredShops = await _localStorageService.getFilteredShopList(filter);
    final result = filteredShops
        .map((localShop) => ShopMapper.fromLocal(localShop))
        .toList();
    return result;
  }
}
