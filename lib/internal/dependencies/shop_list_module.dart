import 'package:magnit_test_app/domain/bloc/shop_list_bloc/shop_list_bloc.dart';
import 'package:magnit_test_app/internal/dependencies/local_repository_module.dart';

class ShopListModule {
  static ShopListBloc shopListBloc() {
    return ShopListBloc(
        shopRepository: LocalRepositoryModule.getShopRepository(),
        characteristicsRepository:
            LocalRepositoryModule.getCharacteristicsRepository());
  }
}
