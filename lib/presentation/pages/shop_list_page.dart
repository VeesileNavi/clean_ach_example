import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magnit_test_app/domain/bloc/shop_list_bloc/shop_list_bloc.dart';
import 'package:magnit_test_app/internal/dependencies/shop_list_module.dart';
import 'package:magnit_test_app/presentation/filter_modal_body/filter_modal_body.dart';
import 'package:magnit_test_app/presentation/pages/product_page.dart';

import '../../domain/model/model.dart';
import 'shop_page.dart';
import '../widgets/item_card.dart';

class ShopListPage extends StatelessWidget {
  const ShopListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ShopListBloc>(
      create: (_) =>
          ShopListModule.shopListBloc()..add(const ShopListEvent.fetchData()),
      child: _ShopListView(),
    );
  }
}

class _ShopListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => showModalBottomSheet(
            context: context,
            builder: (ctx) => BlocProvider.value(
                  value: context.read<ShopListBloc>(),
                  child: const FilterModalBody(),
                )),
        child: const Icon(Icons.filter_alt_outlined),
      ),
      appBar: AppBar(
        title: const Text('Список магазинов'),
      ),
      body: BlocBuilder<ShopListBloc, ShopListState>(
        builder: (_, state) => state.when(
          showData: (shopList, _, productNameFilter, characteristicFilter) =>
              ListView.builder(
            itemCount: shopList.length,
            itemBuilder: (BuildContext context, int index) => _ShopCardItem(
              shop: shopList[index],
              filterApplied:
                  productNameFilter != null || characteristicFilter != null,
            ),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}

class _ShopCardItem extends StatelessWidget {
  final Shop shop;
  final bool filterApplied;

  const _ShopCardItem({required this.shop, required this.filterApplied});

  @override
  Widget build(BuildContext context) {
    return ItemCard(
      title: shop.name,
      onTap: () {
        if (filterApplied && shop.products.length == 1) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => ProductPage(product: shop.products.first),
            ),
          );
        } else {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => ShopPage(shop: shop),
            ),
          );
        }
      },
      iconData: Icons.shopping_bag_outlined,
      additionalInfo: 'Товаров: ${shop.products.length}',
    );
  }
}
