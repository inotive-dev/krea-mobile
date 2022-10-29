import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:koperasi/data/local/entities/history/mart_response_entity.dart';
import 'package:koperasi/data/local/entities/history/user_response_entity.dart';
import 'package:koperasi/data/remote/response/home/sales_report/sales_response.dart';

import '../../hive/hive_type_id.dart';

part 'sales_response_entity.g.dart';

@HiveType(typeId: HiveTypeId.salesResponseEntity)
class SalesResponseEntity extends Equatable {
  const SalesResponseEntity({
    required this.id,
    required this.martId,
    required this.userId,
    required this.total,
    required this.totalDiscount,
    required this.totalPpn,
    required this.hpp,
    required this.grandTotal,
    required this.paymentMethod,
    required this.bankName,
    required this.totalPayment,
    required this.totalChange,
    required this.createdAt,
    required this.updatedAt,
    required this.updatedAtMobile,
    required this.isMatched,
    required this.user,
    required this.mart,
  });

  @HiveField(0)
  final int? id;
  @HiveField(1)
  final int? martId;
  @HiveField(2)
  final int? userId;
  @HiveField(3)
  final double? total;
  @HiveField(4)
  final double? totalDiscount;
  @HiveField(5)
  final double? totalPpn;
  @HiveField(6)
  final double? hpp;
  @HiveField(7)
  final double? grandTotal;
  @HiveField(8)
  final String? paymentMethod;
  @HiveField(9)
  final String? bankName;
  @HiveField(10)
  final double? totalPayment;
  @HiveField(11)
  final double? totalChange;
  @HiveField(12)
  final DateTime? createdAt;
  @HiveField(13)
  final DateTime? updatedAt;
  @HiveField(14)
  final DateTime? updatedAtMobile;
  @HiveField(15)
  final int? isMatched;
  @HiveField(16)
  final UserResponseEntity? user;
  @HiveField(17)
  final MartResponseEntity? mart;

  @override
  List<Object?> get props {
    return [
      id,
      martId,
      userId,
      total,
      totalDiscount,
      totalPpn,
      hpp,
      grandTotal,
      paymentMethod,
      bankName,
      totalPayment,
      totalChange,
      createdAt,
      updatedAt,
      updatedAtMobile,
      isMatched,
      user,
      mart,
    ];
  }

  SalesResponse toDomain() => SalesResponse(
        id: id,
        martId: martId,
        userId: userId,
        total: total,
        totalDiscount: totalDiscount,
        totalPpn: totalPpn,
        hpp: hpp,
        grandTotal: grandTotal,
        paymentMethod: paymentMethod,
        bankName: bankName,
        totalPayment: totalPayment,
        totalChange: totalChange,
        createdAt: createdAt,
        updatedAt: updatedAt,
        updatedAtMobile: updatedAtMobile,
        isMatched: isMatched,
        user: user?.toDomain(),
        mart: mart?.toDomain(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "mart_id": martId,
        "user_id": userId,
        "total": total,
        'total_discount': totalDiscount,
        'total_ppn': totalPpn,
        'hpp': hpp,
        'grand_total': grandTotal,
        'payment_method': paymentMethod,
        'bank_name': bankName,
        'total_payment': totalPayment,
        'total_change': totalChange,
        'created_at': createdAt == null ? null : createdAt!.toIso8601String(),
        'updated_at': updatedAt == null ? null : updatedAt!.toIso8601String(),
        'updated_at_mobile': updatedAtMobile == null ? null : updatedAtMobile!.toIso8601String(),
        'is_matched': isMatched,
        'user': user?.toString(),
        'mart': mart?.toString(),
      };
}
