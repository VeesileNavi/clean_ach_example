import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'local_characteristics.g.dart';

@HiveType(typeId: 2)
class LocalCharacteristics extends Equatable {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final int weight;

  const LocalCharacteristics({
    required this.id,
    required this.weight,
  });

  @override
  List<Object?> get props => [id, weight];
}
