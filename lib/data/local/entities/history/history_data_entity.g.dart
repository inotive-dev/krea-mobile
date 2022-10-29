// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_data_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HistoryDataEntityAdapter extends TypeAdapter<HistoryDataEntity> {
  @override
  final int typeId = 11;

  @override
  HistoryDataEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HistoryDataEntity(
      thisWeekHistory: (fields[0] as List?)?.cast<SalesResponseEntity>(),
      lastMonthHistory: (fields[1] as List?)?.cast<SalesResponseEntity>(),
    );
  }

  @override
  void write(BinaryWriter writer, HistoryDataEntity obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.thisWeekHistory)
      ..writeByte(1)
      ..write(obj.lastMonthHistory);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HistoryDataEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
