// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_shop.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocalShopAdapter extends TypeAdapter<LocalShop> {
  @override
  final int typeId = 0;

  @override
  LocalShop read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocalShop(
      id: fields[0] as int,
      name: fields[1] as String,
      products: (fields[2] as List).cast<LocalProduct>(),
    );
  }

  @override
  void write(BinaryWriter writer, LocalShop obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.products);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalShopAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
