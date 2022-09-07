// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SalesResponse _$$_SalesResponseFromJson(Map<String, dynamic> json) =>
    _$_SalesResponse(
      id: json['id'] as int?,
      martId: json['mart_id'] as int?,
      userId: json['user_id'] as int?,
      total: (json['total'] as num?)?.toDouble(),
      totalDiscount: (json['total_discount'] as num?)?.toDouble(),
      totalPpn: (json['total_ppn'] as num?)?.toDouble(),
      hpp: (json['hpp'] as num?)?.toDouble(),
      grandTotal: (json['grand_total'] as num?)?.toDouble(),
      paymentMethod: json['payment_method'] as String?,
      bankName: json['bank_name'] as String?,
      totalPayment: (json['total_payment'] as num?)?.toDouble(),
      totalChange: (json['total_change'] as num?)?.toDouble(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      updatedAtMobile: json['update_at_mobile'] == null
          ? null
          : DateTime.parse(json['update_at_mobile'] as String),
      isMatched: json['is_matched'] as int?,
      user: json['user'] == null
          ? null
          : UserResponse.fromJson(json['user'] as Map<String, dynamic>),
      mart: json['mart'] == null
          ? null
          : MartResponse.fromJson(json['mart'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SalesResponseToJson(_$_SalesResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mart_id': instance.martId,
      'user_id': instance.userId,
      'total': instance.total,
      'total_discount': instance.totalDiscount,
      'total_ppn': instance.totalPpn,
      'hpp': instance.hpp,
      'grand_total': instance.grandTotal,
      'payment_method': instance.paymentMethod,
      'bank_name': instance.bankName,
      'total_payment': instance.totalPayment,
      'total_change': instance.totalChange,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'update_at_mobile': instance.updatedAtMobile?.toIso8601String(),
      'is_matched': instance.isMatched,
      'user': instance.user,
      'mart': instance.mart,
    };
