import 'package:flutter/material.dart';

import 'package:magnit_test_app/domain/model/model.dart';
import 'package:magnit_test_app/presentation/widgets/item_card.dart';

class ProductPage extends StatelessWidget {
  final Product product;

  const ProductPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Страница товара ${product.name}'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: const EdgeInsets.all(24),child: Text('Характеристики товара ${product.name}')),
          Expanded(
            child: ListView.builder(
              itemCount: product.characteristics.length,
              itemBuilder: (context, index) => _CharacteristicsCard(
                characteristics: product.characteristics[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CharacteristicsCard extends StatelessWidget {
  final Characteristics characteristics;

  const _CharacteristicsCard({required this.characteristics});

  @override
  Widget build(BuildContext context) {
    return ItemCard(
      iconData: Icons.settings,
      title: 'Вес: ${characteristics.weight}',
      additionalInfo: 'Идентификатор: ${characteristics.id}',
    );
  }
}
