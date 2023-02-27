import 'dart:developer';

import 'package:hive/hive.dart';
import 'package:magnit_test_app/data/local_storage/request/shops_filter.dart';
import '../model/model.dart';

class LocalStorageService {
  final String _boxName;

  LocalStorageService(this._boxName);

  Future<List<LocalShop>> getShopList() async {
    var box = await Hive.openBox<LocalShop>(_boxName);
    List<LocalShop> result = box.values.toList();

    return result;
  }

  Future<List<LocalShop>> getFilteredShopList(ShopsFilter shopsFilter) async {
    var box = await Hive.openBox<LocalShop>(_boxName);
    List<LocalShop> shopList = box.values.toList();
    var result = shopList
        .map(
          (localShop) => localShop.copyWith(
            products: localShop.products
                .where((localProduct) =>
                    (shopsFilter.name == null || shopsFilter.name == '' || localProduct.name.toLowerCase().contains(shopsFilter.name!.toLowerCase())) &&
                    (shopsFilter.characteristicId == null || localProduct.characteristics.where((localCharacteristic) => localCharacteristic.id == shopsFilter.characteristicId).isNotEmpty))
                .toList(),
          ),
        )
        .where((element) => element.products.isNotEmpty)
        .toList();
    return result;
  }

  Future<List<LocalCharacteristics>> getAllCharacteristics() async {
    var box = await Hive.openBox<LocalShop>(_boxName);
    List<LocalShop> shopList = box.values.toList();
    List<LocalCharacteristics> characteristics = [];
    for (var shop in shopList) {
      for (var product in shop.products) {
        for (var characteristic in product.characteristics) {
          if (!characteristics.contains(characteristic)) {
            log(characteristic.weight.toString());
            characteristics.add(characteristic);
          }
        }
      }
    }

    return characteristics.toList();
  }
}
