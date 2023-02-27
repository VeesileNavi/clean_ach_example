import '../model/model.dart';

abstract class ShopRepository {
  Future<List<Shop>> getShopList();

  Future<List<Shop>> getFilteredShopList(
    String? name,
    int? characteristicId,
  );

}
