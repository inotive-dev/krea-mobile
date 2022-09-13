// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TransactionEntityAdapter extends TypeAdapter<TransactionEntity> {
  @override
  final int typeId = 3;

  @override
  TransactionEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TransactionEntity(
      id: fields[0] as int?,
      transactionId: fields[1] as int?,
      productId: fields[2] as int?,
      consignmentProdutId: fields[3] as int?,
      sellPrice: fields[4] as double?,
      buyPrice: fields[5] as double?,
      qty: fields[6] as int?,
      discount: fields[7] as double?,
      ppn: fields[8] as double?,
      subtotal: fields[9] as double?,
      isConsignmentPaid: fields[10] as double?,
      createdAt: fields[11] as DateTime?,
      updatedAt: fields[12] as DateTime?,
      totalQty: fields[13] as String?,
      product: fields[14] as ProductEntity?,
    );
  }

  @override
  void write(BinaryWriter writer, TransactionEntity obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.transactionId)
      ..writeByte(2)
      ..write(obj.productId)
      ..writeByte(3)
      ..write(obj.consignmentProdutId)
      ..writeByte(4)
      ..write(obj.sellPrice)
      ..writeByte(5)
      ..write(obj.buyPrice)
      ..writeByte(6)
      ..write(obj.qty)
      ..writeByte(7)
      ..write(obj.discount)
      ..writeByte(8)
      ..write(obj.ppn)
      ..writeByte(9)
      ..write(obj.subtotal)
      ..writeByte(10)
      ..write(obj.isConsignmentPaid)
      ..writeByte(11)
      ..write(obj.createdAt)
      ..writeByte(12)
      ..write(obj.updatedAt)
      ..writeByte(13)
      ..write(obj.totalQty)
      ..writeByte(14)
      ..write(obj.product);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransactionEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
