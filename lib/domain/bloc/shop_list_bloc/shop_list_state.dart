part of 'shop_list_bloc.dart';

@freezed
class ShopListState with _$ShopListState {
  const factory ShopListState.showData({
    required List<Shop> shopList,
    required List<Characteristics> characteristicsList,
    String? productNameFilter,
    Characteristics? characteristicsFilter,
  }) = _ShowData;

  const factory ShopListState.loading() = _Loading;
}
