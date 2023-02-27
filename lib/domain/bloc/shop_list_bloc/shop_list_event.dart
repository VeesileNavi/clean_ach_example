part of 'shop_list_bloc.dart';

@freezed
class ShopListEvent with _$ShopListEvent {
  const factory ShopListEvent.applyFilters(
    String? productNameFilter,
    Characteristics? characteristicsFilter,
  ) = _ApplyFilters;



  const factory ShopListEvent.dropFilters() = _DropFilters;

  const factory ShopListEvent.fetchData() = _FetchData;
}
