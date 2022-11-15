// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_user_data_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HomeUserDataEntityAdapter extends TypeAdapter<HomeUserDataEntity> {
  @override
  final int typeId = 4;

  @override
  HomeUserDataEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HomeUserDataEntity(
      contribution: fields[0] as ContributionEntity?,
      totalSaldoSimpananUtang: fields[1] as int?,
      totalSaldoSimpananPokok: fields[3] as int?,
      totalUtang: fields[2] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, HomeUserDataEntity obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.contribution)
      ..writeByte(1)
      ..write(obj.totalSaldoSimpananUtang)
      ..writeByte(2)
      ..write(obj.totalUtang)
      ..writeByte(3)
      ..write(obj.totalSaldoSimpananPokok);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HomeUserDataEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
