// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'perubahan_modal_data_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PerubahanModalDataEntityAdapter
    extends TypeAdapter<PerubahanModalDataEntity> {
  @override
  final int typeId = 15;

  @override
  PerubahanModalDataEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PerubahanModalDataEntity(
      modalAwal: fields[0] as double?,
      modalAkhir: fields[1] as double?,
      labaBersih: fields[2] as double?,
      labaDitahan: fields[3] as double?,
      total1: fields[4] as double?,
      total2: fields[5] as double?,
      prive: fields[6] as double?,
      koreksi: fields[7] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, PerubahanModalDataEntity obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.modalAwal)
      ..writeByte(1)
      ..write(obj.modalAkhir)
      ..writeByte(2)
      ..write(obj.labaBersih)
      ..writeByte(3)
      ..write(obj.labaDitahan)
      ..writeByte(4)
      ..write(obj.total1)
      ..writeByte(5)
      ..write(obj.total2)
      ..writeByte(6)
      ..write(obj.prive)
      ..writeByte(7)
      ..write(obj.koreksi);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PerubahanModalDataEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
