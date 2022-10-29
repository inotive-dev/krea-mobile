import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:koperasi/data/local/entities/home/user/contribution_entity.dart';
import 'package:koperasi/data/local/hive/hive_type_id.dart';
import 'package:koperasi/domain/entities/home/contribution.dart';
import 'package:koperasi/domain/entities/home/home_user_data.dart';

part 'home_user_data_entity.g.dart';

@HiveType(typeId: HiveTypeId.homeUserEntity)
class HomeUserDataEntity extends Equatable {
  const HomeUserDataEntity({
    required this.contribution,
    required this.totalSaldoSimpananUtang,
    required this.totalUtang,
  });

  @HiveField(0)
  final ContributionEntity? contribution;
  @HiveField(1)
  final int? totalSaldoSimpananUtang;
  @HiveField(2)
  final int? totalUtang;

  @override
  List<Object?> get props {
    return [
      contribution,
      totalSaldoSimpananUtang,
      totalUtang,
    ];
  }

  HomeUserData toDomain() => HomeUserData(
        contribution: contribution?.toDomain() ?? Contribution.initial(),
        totalSaldoSimpananUtang: totalSaldoSimpananUtang ?? 0,
        totalUtang: totalUtang ?? 0,
      );
}
