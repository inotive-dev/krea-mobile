import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/domain/entities/home/product.dart';

part 'transaction.freezed.dart';

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    required int? id,
    required int? transactionId,
    required int? productId,
    required int? consignmentProdutId,
    required double? sellPrice,
    required double? buyPrice,
    required int? qty,
    required double? discount,
    required double? ppn,
    required double? subtotal,
    required double? isConsignmentPaid,
    required DateTime? createdAt,
    required DateTime? updatedAt,
    required String? totalQty,
    required Product? product,
  }) = _Transaction;
}
