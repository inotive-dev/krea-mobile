// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contribution_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ContributionEntityAdapter extends TypeAdapter<ContributionEntity> {
  @override
  final int typeId = 5;

  @override
  ContributionEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ContributionEntity(
      contributionWajib: fields[0] as int?,
      contributionPokok: fields[1] as int?,
      contributionSukarela: fields[2] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, ContributionEntity obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.contributionWajib)
      ..writeByte(1)
      ..write(obj.contributionPokok)
      ..writeByte(2)
      ..write(obj.contributionSukarela);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ContributionEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
