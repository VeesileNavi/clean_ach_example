// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShopListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Shop> shopList,
            List<Characteristics> characteristicsList,
            String? productNameFilter,
            Characteristics? characteristicsFilter)
        showData,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Shop> shopList,
            List<Characteristics> characteristicsList,
            String? productNameFilter,
            Characteristics? characteristicsFilter)?
        showData,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Shop> shopList,
            List<Characteristics> characteristicsList,
            String? productNameFilter,
            Characteristics? characteristicsFilter)?
        showData,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowData value) showData,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowData value)? showData,
    TResult? Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowData value)? showData,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopListStateCopyWith<$Res> {
  factory $ShopListStateCopyWith(
          ShopListState value, $Res Function(ShopListState) then) =
      _$ShopListStateCopyWithImpl<$Res, ShopListState>;
}

/// @nodoc
class _$ShopListStateCopyWithImpl<$Res, $Val extends ShopListState>
    implements $ShopListStateCopyWith<$Res> {
  _$ShopListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ShowDataCopyWith<$Res> {
  factory _$$_ShowDataCopyWith(
          _$_ShowData value, $Res Function(_$_ShowData) then) =
      __$$_ShowDataCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Shop> shopList,
      List<Characteristics> characteristicsList,
      String? productNameFilter,
      Characteristics? characteristicsFilter});
}

/// @nodoc
class __$$_ShowDataCopyWithImpl<$Res>
    extends _$ShopListStateCopyWithImpl<$Res, _$_ShowData>
    implements _$$_ShowDataCopyWith<$Res> {
  __$$_ShowDataCopyWithImpl(
      _$_ShowData _value, $Res Function(_$_ShowData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopList = null,
    Object? characteristicsList = null,
    Object? productNameFilter = freezed,
    Object? characteristicsFilter = freezed,
  }) {
    return _then(_$_ShowData(
      shopList: null == shopList
          ? _value._shopList
          : shopList // ignore: cast_nullable_to_non_nullable
              as List<Shop>,
      characteristicsList: null == characteristicsList
          ? _value._characteristicsList
          : characteristicsList // ignore: cast_nullable_to_non_nullable
              as List<Characteristics>,
      productNameFilter: freezed == productNameFilter
          ? _value.productNameFilter
          : productNameFilter // ignore: cast_nullable_to_non_nullable
              as String?,
      characteristicsFilter: freezed == characteristicsFilter
          ? _value.characteristicsFilter
          : characteristicsFilter // ignore: cast_nullable_to_non_nullable
              as Characteristics?,
    ));
  }
}

/// @nodoc

class _$_ShowData implements _ShowData {
  const _$_ShowData(
      {required final List<Shop> shopList,
      required final List<Characteristics> characteristicsList,
      this.productNameFilter,
      this.characteristicsFilter})
      : _shopList = shopList,
        _characteristicsList = characteristicsList;

  final List<Shop> _shopList;
  @override
  List<Shop> get shopList {
    if (_shopList is EqualUnmodifiableListView) return _shopList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shopList);
  }

  final List<Characteristics> _characteristicsList;
  @override
  List<Characteristics> get characteristicsList {
    if (_characteristicsList is EqualUnmodifiableListView)
      return _characteristicsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characteristicsList);
  }

  @override
  final String? productNameFilter;
  @override
  final Characteristics? characteristicsFilter;

  @override
  String toString() {
    return 'ShopListState.showData(shopList: $shopList, characteristicsList: $characteristicsList, productNameFilter: $productNameFilter, characteristicsFilter: $characteristicsFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowData &&
            const DeepCollectionEquality().equals(other._shopList, _shopList) &&
            const DeepCollectionEquality()
                .equals(other._characteristicsList, _characteristicsList) &&
            (identical(other.productNameFilter, productNameFilter) ||
                other.productNameFilter == productNameFilter) &&
            (identical(other.characteristicsFilter, characteristicsFilter) ||
                other.characteristicsFilter == characteristicsFilter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_shopList),
      const DeepCollectionEquality().hash(_characteristicsList),
      productNameFilter,
      characteristicsFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowDataCopyWith<_$_ShowData> get copyWith =>
      __$$_ShowDataCopyWithImpl<_$_ShowData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Shop> shopList,
            List<Characteristics> characteristicsList,
            String? productNameFilter,
            Characteristics? characteristicsFilter)
        showData,
    required TResult Function() loading,
  }) {
    return showData(shopList, characteristicsList, productNameFilter,
        characteristicsFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Shop> shopList,
            List<Characteristics> characteristicsList,
            String? productNameFilter,
            Characteristics? characteristicsFilter)?
        showData,
    TResult? Function()? loading,
  }) {
    return showData?.call(shopList, characteristicsList, productNameFilter,
        characteristicsFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Shop> shopList,
            List<Characteristics> characteristicsList,
            String? productNameFilter,
            Characteristics? characteristicsFilter)?
        showData,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (showData != null) {
      return showData(shopList, characteristicsList, productNameFilter,
          characteristicsFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowData value) showData,
    required TResult Function(_Loading value) loading,
  }) {
    return showData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowData value)? showData,
    TResult? Function(_Loading value)? loading,
  }) {
    return showData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowData value)? showData,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (showData != null) {
      return showData(this);
    }
    return orElse();
  }
}

abstract class _ShowData implements ShopListState {
  const factory _ShowData(
      {required final List<Shop> shopList,
      required final List<Characteristics> characteristicsList,
      final String? productNameFilter,
      final Characteristics? characteristicsFilter}) = _$_ShowData;

  List<Shop> get shopList;
  List<Characteristics> get characteristicsList;
  String? get productNameFilter;
  Characteristics? get characteristicsFilter;
  @JsonKey(ignore: true)
  _$$_ShowDataCopyWith<_$_ShowData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$ShopListStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ShopListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Shop> shopList,
            List<Characteristics> characteristicsList,
            String? productNameFilter,
            Characteristics? characteristicsFilter)
        showData,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Shop> shopList,
            List<Characteristics> characteristicsList,
            String? productNameFilter,
            Characteristics? characteristicsFilter)?
        showData,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Shop> shopList,
            List<Characteristics> characteristicsList,
            String? productNameFilter,
            Characteristics? characteristicsFilter)?
        showData,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowData value) showData,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowData value)? showData,
    TResult? Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowData value)? showData,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ShopListState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
mixin _$ShopListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? productNameFilter, Characteristics? characteristicsFilter)
        applyFilters,
    required TResult Function() dropFilters,
    required TResult Function() fetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? productNameFilter, Characteristics? characteristicsFilter)?
        applyFilters,
    TResult? Function()? dropFilters,
    TResult? Function()? fetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? productNameFilter, Characteristics? characteristicsFilter)?
        applyFilters,
    TResult Function()? dropFilters,
    TResult Function()? fetchData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplyFilters value) applyFilters,
    required TResult Function(_DropFilters value) dropFilters,
    required TResult Function(_FetchData value) fetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApplyFilters value)? applyFilters,
    TResult? Function(_DropFilters value)? dropFilters,
    TResult? Function(_FetchData value)? fetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplyFilters value)? applyFilters,
    TResult Function(_DropFilters value)? dropFilters,
    TResult Function(_FetchData value)? fetchData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopListEventCopyWith<$Res> {
  factory $ShopListEventCopyWith(
          ShopListEvent value, $Res Function(ShopListEvent) then) =
      _$ShopListEventCopyWithImpl<$Res, ShopListEvent>;
}

/// @nodoc
class _$ShopListEventCopyWithImpl<$Res, $Val extends ShopListEvent>
    implements $ShopListEventCopyWith<$Res> {
  _$ShopListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ApplyFiltersCopyWith<$Res> {
  factory _$$_ApplyFiltersCopyWith(
          _$_ApplyFilters value, $Res Function(_$_ApplyFilters) then) =
      __$$_ApplyFiltersCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? productNameFilter, Characteristics? characteristicsFilter});
}

/// @nodoc
class __$$_ApplyFiltersCopyWithImpl<$Res>
    extends _$ShopListEventCopyWithImpl<$Res, _$_ApplyFilters>
    implements _$$_ApplyFiltersCopyWith<$Res> {
  __$$_ApplyFiltersCopyWithImpl(
      _$_ApplyFilters _value, $Res Function(_$_ApplyFilters) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productNameFilter = freezed,
    Object? characteristicsFilter = freezed,
  }) {
    return _then(_$_ApplyFilters(
      freezed == productNameFilter
          ? _value.productNameFilter
          : productNameFilter // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == characteristicsFilter
          ? _value.characteristicsFilter
          : characteristicsFilter // ignore: cast_nullable_to_non_nullable
              as Characteristics?,
    ));
  }
}

/// @nodoc

class _$_ApplyFilters implements _ApplyFilters {
  const _$_ApplyFilters(this.productNameFilter, this.characteristicsFilter);

  @override
  final String? productNameFilter;
  @override
  final Characteristics? characteristicsFilter;

  @override
  String toString() {
    return 'ShopListEvent.applyFilters(productNameFilter: $productNameFilter, characteristicsFilter: $characteristicsFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApplyFilters &&
            (identical(other.productNameFilter, productNameFilter) ||
                other.productNameFilter == productNameFilter) &&
            (identical(other.characteristicsFilter, characteristicsFilter) ||
                other.characteristicsFilter == characteristicsFilter));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, productNameFilter, characteristicsFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApplyFiltersCopyWith<_$_ApplyFilters> get copyWith =>
      __$$_ApplyFiltersCopyWithImpl<_$_ApplyFilters>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? productNameFilter, Characteristics? characteristicsFilter)
        applyFilters,
    required TResult Function() dropFilters,
    required TResult Function() fetchData,
  }) {
    return applyFilters(productNameFilter, characteristicsFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? productNameFilter, Characteristics? characteristicsFilter)?
        applyFilters,
    TResult? Function()? dropFilters,
    TResult? Function()? fetchData,
  }) {
    return applyFilters?.call(productNameFilter, characteristicsFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? productNameFilter, Characteristics? characteristicsFilter)?
        applyFilters,
    TResult Function()? dropFilters,
    TResult Function()? fetchData,
    required TResult orElse(),
  }) {
    if (applyFilters != null) {
      return applyFilters(productNameFilter, characteristicsFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplyFilters value) applyFilters,
    required TResult Function(_DropFilters value) dropFilters,
    required TResult Function(_FetchData value) fetchData,
  }) {
    return applyFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApplyFilters value)? applyFilters,
    TResult? Function(_DropFilters value)? dropFilters,
    TResult? Function(_FetchData value)? fetchData,
  }) {
    return applyFilters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplyFilters value)? applyFilters,
    TResult Function(_DropFilters value)? dropFilters,
    TResult Function(_FetchData value)? fetchData,
    required TResult orElse(),
  }) {
    if (applyFilters != null) {
      return applyFilters(this);
    }
    return orElse();
  }
}

abstract class _ApplyFilters implements ShopListEvent {
  const factory _ApplyFilters(final String? productNameFilter,
      final Characteristics? characteristicsFilter) = _$_ApplyFilters;

  String? get productNameFilter;
  Characteristics? get characteristicsFilter;
  @JsonKey(ignore: true)
  _$$_ApplyFiltersCopyWith<_$_ApplyFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DropFiltersCopyWith<$Res> {
  factory _$$_DropFiltersCopyWith(
          _$_DropFilters value, $Res Function(_$_DropFilters) then) =
      __$$_DropFiltersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DropFiltersCopyWithImpl<$Res>
    extends _$ShopListEventCopyWithImpl<$Res, _$_DropFilters>
    implements _$$_DropFiltersCopyWith<$Res> {
  __$$_DropFiltersCopyWithImpl(
      _$_DropFilters _value, $Res Function(_$_DropFilters) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DropFilters implements _DropFilters {
  const _$_DropFilters();

  @override
  String toString() {
    return 'ShopListEvent.dropFilters()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DropFilters);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? productNameFilter, Characteristics? characteristicsFilter)
        applyFilters,
    required TResult Function() dropFilters,
    required TResult Function() fetchData,
  }) {
    return dropFilters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? productNameFilter, Characteristics? characteristicsFilter)?
        applyFilters,
    TResult? Function()? dropFilters,
    TResult? Function()? fetchData,
  }) {
    return dropFilters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? productNameFilter, Characteristics? characteristicsFilter)?
        applyFilters,
    TResult Function()? dropFilters,
    TResult Function()? fetchData,
    required TResult orElse(),
  }) {
    if (dropFilters != null) {
      return dropFilters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplyFilters value) applyFilters,
    required TResult Function(_DropFilters value) dropFilters,
    required TResult Function(_FetchData value) fetchData,
  }) {
    return dropFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApplyFilters value)? applyFilters,
    TResult? Function(_DropFilters value)? dropFilters,
    TResult? Function(_FetchData value)? fetchData,
  }) {
    return dropFilters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplyFilters value)? applyFilters,
    TResult Function(_DropFilters value)? dropFilters,
    TResult Function(_FetchData value)? fetchData,
    required TResult orElse(),
  }) {
    if (dropFilters != null) {
      return dropFilters(this);
    }
    return orElse();
  }
}

abstract class _DropFilters implements ShopListEvent {
  const factory _DropFilters() = _$_DropFilters;
}

/// @nodoc
abstract class _$$_FetchDataCopyWith<$Res> {
  factory _$$_FetchDataCopyWith(
          _$_FetchData value, $Res Function(_$_FetchData) then) =
      __$$_FetchDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchDataCopyWithImpl<$Res>
    extends _$ShopListEventCopyWithImpl<$Res, _$_FetchData>
    implements _$$_FetchDataCopyWith<$Res> {
  __$$_FetchDataCopyWithImpl(
      _$_FetchData _value, $Res Function(_$_FetchData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchData implements _FetchData {
  const _$_FetchData();

  @override
  String toString() {
    return 'ShopListEvent.fetchData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? productNameFilter, Characteristics? characteristicsFilter)
        applyFilters,
    required TResult Function() dropFilters,
    required TResult Function() fetchData,
  }) {
    return fetchData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? productNameFilter, Characteristics? characteristicsFilter)?
        applyFilters,
    TResult? Function()? dropFilters,
    TResult? Function()? fetchData,
  }) {
    return fetchData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? productNameFilter, Characteristics? characteristicsFilter)?
        applyFilters,
    TResult Function()? dropFilters,
    TResult Function()? fetchData,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplyFilters value) applyFilters,
    required TResult Function(_DropFilters value) dropFilters,
    required TResult Function(_FetchData value) fetchData,
  }) {
    return fetchData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApplyFilters value)? applyFilters,
    TResult? Function(_DropFilters value)? dropFilters,
    TResult? Function(_FetchData value)? fetchData,
  }) {
    return fetchData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplyFilters value)? applyFilters,
    TResult Function(_DropFilters value)? dropFilters,
    TResult Function(_FetchData value)? fetchData,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData(this);
    }
    return orElse();
  }
}

abstract class _FetchData implements ShopListEvent {
  const factory _FetchData() = _$_FetchData;
}
