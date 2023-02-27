import 'characteristics.dart';

class Product {
  final int id;
  final String name;
  final List<Characteristics> characteristics;

  Product({
    required this.id,
    required this.name,
    required this.characteristics,
  });
}
