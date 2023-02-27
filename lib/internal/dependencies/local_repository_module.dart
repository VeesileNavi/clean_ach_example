import 'package:magnit_test_app/data/repository/shop_local_repository.dart';
import 'package:magnit_test_app/domain/repository/shop_repository.dart';
import 'package:magnit_test_app/internal/dependencies/local_storage_module.dart';

import '../../data/repository/characteristics_local_repository.dart';
import '../../domain/repository/characteristics_repository.dart';

class LocalRepositoryModule {
  static ShopRepository? _shopRepository;
  static CharacteristicsRepository? _characteristicsRepository;

  static ShopRepository getShopRepository() {
    _shopRepository ??=
        ShopLocalRepository(LocalStorageModule.getLocalStorageUtil());
    return _shopRepository!;
  }

  static CharacteristicsRepository getCharacteristicsRepository() {
    _characteristicsRepository ??= CharacteristicsLocalRepository(
        LocalStorageModule.getLocalStorageUtil());
    return _characteristicsRepository!;
  }
}
