import 'dart:developer';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magnit_test_app/domain/repository/characteristics_repository.dart';
import 'package:magnit_test_app/domain/repository/shop_repository.dart';
import '../../model/model.dart';

part 'shop_list_state.dart';

part 'shop_list_event.dart';

part 'shop_list_bloc.freezed.dart';

class ShopListBloc extends Bloc<ShopListEvent, ShopListState> {
  ShopListBloc({
    required ShopRepository shopRepository,
    required CharacteristicsRepository characteristicsRepository,
  })  : _shopRepository = shopRepository,
        _characteristicsRepository = characteristicsRepository,
        super(const ShopListState.loading()) {
    on<_ApplyFilters>(_onApplyFilters);
    on<_DropFilters>(_onDropFilters);
    on<_FetchData>(_onFetchData);
  }

  final ShopRepository _shopRepository;
  final CharacteristicsRepository _characteristicsRepository;

  List<Characteristics> _characteristicsList = [];

  Future<void> _onFetchData(
      _FetchData event, Emitter<ShopListState> emit) async {
    emit(const _Loading());
    final shopList = await _shopRepository.getShopList();

    if (_characteristicsList.isEmpty) {
      _characteristicsList =
          await _characteristicsRepository.getAllCharacteristics();
    }
    emit(_ShowData(
      shopList: shopList,
      characteristicsList: _characteristicsList,
    ));
  }

  Future<void> _onApplyFilters(
      _ApplyFilters event, Emitter<ShopListState> emit) async {
    log(event.productNameFilter ?? '');
    if ((event.productNameFilter == null && event.productNameFilter! == '') &&
        event.characteristicsFilter == null) {
      return;
    }
    final filteredShopList = await _shopRepository.getFilteredShopList(
        event.productNameFilter, event.characteristicsFilter?.id);
    emit(_ShowData(
        shopList: filteredShopList,
        characteristicsList: _characteristicsList,
        productNameFilter: event.productNameFilter,
        characteristicsFilter: event.characteristicsFilter));
  }

  Future<void> _onDropFilters(
      _DropFilters event, Emitter<ShopListState> emit) async {
    add(const ShopListEvent.fetchData());
  }
}
