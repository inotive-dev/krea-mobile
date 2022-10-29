// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branches_data_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BranchesDataEntityAdapter extends TypeAdapter<BranchesDataEntity> {
  @override
  final int typeId = 12;

  @override
  BranchesDataEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BranchesDataEntity(
      currentPage: fields[0] as int?,
      data: (fields[1] as List?)?.cast<BranchEntity>(),
      firstPageUrl: fields[2] as String?,
      from: fields[3] as int?,
      lastPage: fields[4] as int?,
      lastPageUrl: fields[5] as String?,
      links: (fields[6] as List?)?.cast<LinkEntity>(),
      nextPageUrl: fields[7] as String?,
      path: fields[8] as String?,
      perPage: fields[9] as int?,
      prevPageUrl: fields[10] as String?,
      to: fields[11] as int?,
      total: fields[12] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, BranchesDataEntity obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.currentPage)
      ..writeByte(1)
      ..write(obj.data)
      ..writeByte(2)
      ..write(obj.firstPageUrl)
      ..writeByte(3)
      ..write(obj.from)
      ..writeByte(4)
      ..write(obj.lastPage)
      ..writeByte(5)
      ..write(obj.lastPageUrl)
      ..writeByte(6)
      ..write(obj.links)
      ..writeByte(7)
      ..write(obj.nextPageUrl)
      ..writeByte(8)
      ..write(obj.path)
      ..writeByte(9)
      ..write(obj.perPage)
      ..writeByte(10)
      ..write(obj.prevPageUrl)
      ..writeByte(11)
      ..write(obj.to)
      ..writeByte(12)
      ..write(obj.total);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BranchesDataEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
