import 'package:hive/hive.dart';

import '../local_characteristics/local_characteristics.dart';

part 'local_product.g.dart';

@HiveType(typeId: 1)
class LocalProduct {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final List<LocalCharacteristics> characteristics;

  LocalProduct({
    required this.id,
    required this.name,
    required this.characteristics,
  });
}
