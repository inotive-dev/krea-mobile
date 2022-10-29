import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:koperasi/data/local/entities/home/product_entity.dart';
import 'package:koperasi/domain/entities/home/transaction.dart';

import '../../hive/hive_type_id.dart';

part 'transaction_entity.g.dart';

@HiveType(typeId: HiveTypeId.transactionEntity)
class TransactionEntity extends Equatable {
  const TransactionEntity({
    required this.id,
    required this.transactionId,
    required this.productId,
    required this.consignmentProdutId,
    required this.sellPrice,
    required this.buyPrice,
    required this.qty,
    required this.discount,
    required this.ppn,
    required this.subtotal,
    required this.isConsignmentPaid,
    required this.createdAt,
    required this.updatedAt,
    required this.totalQty,
    required this.product,
  });

  @HiveField(0)
  final int? id;
  @HiveField(1)
  final int? transactionId;
  @HiveField(2)
  final int? productId;
  @HiveField(3)
  final int? consignmentProdutId;
  @HiveField(4)
  final double? sellPrice;
  @HiveField(5)
  final double? buyPrice;
  @HiveField(6)
  final int? qty;
  @HiveField(7)
  final double? discount;
  @HiveField(8)
  final double? ppn;
  @HiveField(9)
  final double? subtotal;
  @HiveField(10)
  final double? isConsignmentPaid;
  @HiveField(11)
  final DateTime? createdAt;
  @HiveField(12)
  final DateTime? updatedAt;
  @HiveField(13)
  final String? totalQty;
  @HiveField(14)
  final ProductEntity? product;

  @override
  List<Object?> get props {
    return [
      id,
      transactionId,
      productId,
      consignmentProdutId,
      sellPrice,
      buyPrice,
      qty,
      discount,
      ppn,
      subtotal,
      isConsignmentPaid,
      createdAt,
      updatedAt,
      totalQty,
      product,
    ];
  }

  Transaction toDomain() => Transaction(
        id: id,
        transactionId: transactionId,
        productId: productId,
        consignmentProdutId: consignmentProdutId,
        sellPrice: sellPrice,
        buyPrice: buyPrice,
        qty: qty,
        discount: discount,
        ppn: ppn,
        subtotal: subtotal,
        isConsignmentPaid: isConsignmentPaid,
        createdAt: createdAt,
        updatedAt: updatedAt,
        totalQty: totalQty,
        product: product?.toDomain(),
      );
}
