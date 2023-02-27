import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:magnit_test_app/presentation/pages/product_page.dart';
import 'package:magnit_test_app/presentation/widgets/item_card.dart';

import '../../domain/model/model.dart';

class ShopPage extends StatelessWidget {
  final Shop shop;

  const ShopPage({super.key, required this.shop});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Страница магазинa ${shop.name}'),
      ),
      body: ListView.builder(
          itemCount: shop.products.length,
          itemBuilder: (context, index) => _ProductCardItem(
                product: shop.products[index],
              )),
    );
  }
}

class _ProductCardItem extends StatelessWidget {
  final Product product;

  const _ProductCardItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return ItemCard(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => ProductPage(product: product),
        ),
      ),
      iconData: Icons.add_card_rounded,
      title: product.name,
      additionalInfo: 'Характеристик: ${product.characteristics.length}',
    );
  }
}
