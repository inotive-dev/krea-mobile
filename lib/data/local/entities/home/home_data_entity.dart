import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:koperasi/data/local/entities/home/transaction_entity.dart';
import 'package:koperasi/domain/entities/home/home_data.dart';

import '../../hive/hive_type_id.dart';

part 'home_data_entity.g.dart';

@HiveType(typeId: HiveTypeId.homeAdminEntity)
class HomeDataEntity extends Equatable {
  const HomeDataEntity({
    required this.produkCepatTerjual,
    required this.produkLamaTerjual,
    required this.totalSaldoSimpananUtang,
    required this.totalUtang,
  });

  @HiveField(0)
  final List<TransactionEntity>? produkCepatTerjual;
  @HiveField(1)
  final List<TransactionEntity>? produkLamaTerjual;
  @HiveField(2)
  final double? totalSaldoSimpananUtang;
  @HiveField(3)
  final double? totalUtang;

  @override
  List<Object?> get props {
    return [
      produkCepatTerjual,
      produkLamaTerjual,
      totalSaldoSimpananUtang,
      totalUtang,
    ];
  }

  HomeData toDomain() => HomeData(
        produkCepatTerjual: produkCepatTerjual?.map((e) => e.toDomain()).toList(),
        produkLamaTerjual: produkLamaTerjual?.map((e) => e.toDomain()).toList(),
        totalSaldoSimpananUtang: totalSaldoSimpananUtang,
        totalUtang: totalUtang,
      );
}
