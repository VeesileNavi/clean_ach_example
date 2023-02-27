import 'dart:developer';
import 'dart:math' as math;

import 'package:hive_flutter/hive_flutter.dart';
import 'package:magnit_test_app/internal/utils/extensions.dart';

import '../../data/local_storage/model/model.dart';
import '../values/constants.dart';

class HiveMockInitializer {
  static init() async {
    await Hive.initFlutter();
    log("INIT");
    Hive.registerAdapter(LocalShopAdapter());
    Hive.registerAdapter(LocalProductAdapter());
    Hive.registerAdapter(LocalCharacteristicsAdapter());
  }

  static void setupData() async {
    var box = await Hive.openBox<LocalShop>(Constants.localShopBox);
    if (box.values.isEmpty) {
      await box.addAll(_getMockData());
    }
  }

  static List<LocalShop> _getMockData() {
    /// The list of products names
    /// (based on the length of this list,
    /// the list of products will be filled with random lists of products)
    List<String> productsTitles = [
      'Болты',
      'Гайки',
      'Шурупы',
      'Гвозди',
      'Дрель',
      'Пассатижи',
      'Салфетки',
      'Дезодорант',
      'Скрепки',
      'Краскопульт'
    ];

    /// The list of store names
    /// (based on the length of this list,
    /// the list of products will be filled with random lists of products)
    List<String> shopTitles = [
      'Максидом',
      'Петрович',
      'Сказка',
      'IKEA',
      'Леруа Мерлен',
      'Магнит',
    ];

    List<LocalCharacteristics> characteristics = [];

    ///Filling characteristics list
    for (var i = 0; i < 10; i++) {
      characteristics.add(
          LocalCharacteristics(id: i, weight: (math.Random().nextInt(1000))));
    }

    List<LocalProduct> products = [];

    ///Filling products list
    for (var i = 0; i < productsTitles.length; i++) {
      products.add(LocalProduct(
        id: i,
        name: productsTitles[i],
        characteristics: characteristics
            .randomRange
            .toList(),
      ));
    }

    List<LocalShop> shops = [];

    ///Filling shops list
    for (var i = 0; i < shopTitles.length; i++) {
      shops.add(LocalShop(
        id: i,
        name: shopTitles[i],
        products: products.randomRange.toList(),
      ));
    }
    return shops;
  }
}
