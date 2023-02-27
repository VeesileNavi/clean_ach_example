// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_characteristics.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocalCharacteristicsAdapter extends TypeAdapter<LocalCharacteristics> {
  @override
  final int typeId = 2;

  @override
  LocalCharacteristics read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocalCharacteristics(
      id: fields[0] as int,
      weight: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, LocalCharacteristics obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.weight);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalCharacteristicsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
