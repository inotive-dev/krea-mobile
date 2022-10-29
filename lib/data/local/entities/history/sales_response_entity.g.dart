// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_response_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SalesResponseEntityAdapter extends TypeAdapter<SalesResponseEntity> {
  @override
  final int typeId = 6;

  @override
  SalesResponseEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SalesResponseEntity(
      id: fields[0] as int?,
      martId: fields[1] as int?,
      userId: fields[2] as int?,
      total: fields[3] as double?,
      totalDiscount: fields[4] as double?,
      totalPpn: fields[5] as double?,
      hpp: fields[6] as double?,
      grandTotal: fields[7] as double?,
      paymentMethod: fields[8] as String?,
      bankName: fields[9] as String?,
      totalPayment: fields[10] as double?,
      totalChange: fields[11] as double?,
      createdAt: fields[12] as DateTime?,
      updatedAt: fields[13] as DateTime?,
      updatedAtMobile: fields[14] as DateTime?,
      isMatched: fields[15] as int?,
      user: fields[16] as UserResponseEntity?,
      mart: fields[17] as MartResponseEntity?,
    );
  }

  @override
  void write(BinaryWriter writer, SalesResponseEntity obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.martId)
      ..writeByte(2)
      ..write(obj.userId)
      ..writeByte(3)
      ..write(obj.total)
      ..writeByte(4)
      ..write(obj.totalDiscount)
      ..writeByte(5)
      ..write(obj.totalPpn)
      ..writeByte(6)
      ..write(obj.hpp)
      ..writeByte(7)
      ..write(obj.grandTotal)
      ..writeByte(8)
      ..write(obj.paymentMethod)
      ..writeByte(9)
      ..write(obj.bankName)
      ..writeByte(10)
      ..write(obj.totalPayment)
      ..writeByte(11)
      ..write(obj.totalChange)
      ..writeByte(12)
      ..write(obj.createdAt)
      ..writeByte(13)
      ..write(obj.updatedAt)
      ..writeByte(14)
      ..write(obj.updatedAtMobile)
      ..writeByte(15)
      ..write(obj.isMatched)
      ..writeByte(16)
      ..write(obj.user)
      ..writeByte(17)
      ..write(obj.mart);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SalesResponseEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
