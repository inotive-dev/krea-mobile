// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mart_response_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MartResponseEntityAdapter extends TypeAdapter<MartResponseEntity> {
  @override
  final int typeId = 8;

  @override
  MartResponseEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MartResponseEntity(
      id: fields[0] as int?,
      name: fields[1] as String?,
      address: fields[2] as String?,
      createdAt: fields[3] as DateTime?,
      updatedAt: fields[4] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, MartResponseEntity obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.address)
      ..writeByte(3)
      ..write(obj.createdAt)
      ..writeByte(4)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MartResponseEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
