// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LinkEntityAdapter extends TypeAdapter<LinkEntity> {
  @override
  final int typeId = 14;

  @override
  LinkEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LinkEntity(
      url: fields[0] as String?,
      label: fields[1] as String?,
      active: fields[2] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, LinkEntity obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.url)
      ..writeByte(1)
      ..write(obj.label)
      ..writeByte(2)
      ..write(obj.active);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LinkEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
