// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BranchEntityAdapter extends TypeAdapter<BranchEntity> {
  @override
  final int typeId = 13;

  @override
  BranchEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BranchEntity(
      martName: fields[0] as String?,
      total: fields[1] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, BranchEntity obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.martName)
      ..writeByte(1)
      ..write(obj.total);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BranchEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
