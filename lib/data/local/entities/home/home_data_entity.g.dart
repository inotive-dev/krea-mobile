// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_data_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HomeDataEntityAdapter extends TypeAdapter<HomeDataEntity> {
  @override
  final int typeId = 1;

  @override
  HomeDataEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HomeDataEntity(
      produkCepatTerjual: (fields[0] as List?)?.cast<TransactionEntity>(),
      produkLamaTerjual: (fields[1] as List?)?.cast<TransactionEntity>(),
      totalSaldoSimpananUtang: fields[2] as double?,
      totalUtang: fields[3] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, HomeDataEntity obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.produkCepatTerjual)
      ..writeByte(1)
      ..write(obj.produkLamaTerjual)
      ..writeByte(2)
      ..write(obj.totalSaldoSimpananUtang)
      ..writeByte(3)
      ..write(obj.totalUtang);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HomeDataEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
