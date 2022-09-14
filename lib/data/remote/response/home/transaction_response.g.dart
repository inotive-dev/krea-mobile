// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionResponse _$$_TransactionResponseFromJson(
        Map<String, dynamic> json) =>
    _$_TransactionResponse(
      id: json['id'] as int?,
      transactionId: json['transaction_id'] as int?,
      productId: json['product_id'] as int?,
      consignmentProdutId: json['consignment_product_id'] as int?,
      sellPrice: (json['sell_price'] as num?)?.toDouble(),
      buyPrice: (json['buy_price'] as num?)?.toDouble(),
      qty: json['qty'] as int?,
      discount: (json['discount'] as num?)?.toDouble(),
      ppn: (json['ppn'] as num?)?.toDouble(),
      subtotal: (json['subtotal'] as num?)?.toDouble(),
      isConsignmentPaid: (json['is_consignment_paid'] as num?)?.toDouble(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      totalQty: json['total_quantity'] as String?,
      product: json['product'] == null
          ? null
          : ProductResponse.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TransactionResponseToJson(
        _$_TransactionResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'transaction_id': instance.transactionId,
      'product_id': instance.productId,
      'consignment_product_id': instance.consignmentProdutId,
      'sell_price': instance.sellPrice,
      'buy_price': instance.buyPrice,
      'qty': instance.qty,
      'discount': instance.discount,
      'ppn': instance.ppn,
      'subtotal': instance.subtotal,
      'is_consignment_paid': instance.isConsignmentPaid,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'total_quantity': instance.totalQty,
      'product': instance.product,
    };
