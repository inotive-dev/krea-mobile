import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:koperasi/data/local/hive/hive_type_id.dart';
import 'package:koperasi/domain/entities/home/contribution.dart';

part 'contribution_entity.g.dart';

@HiveType(typeId: HiveTypeId.contributionEntity)
class ContributionEntity extends Equatable {
  const ContributionEntity({
    required this.contributionWajib,
    required this.contributionPokok,
    required this.contributionSukarela,
  });

  @HiveField(0)
  final int? contributionWajib;
  @HiveField(1)
  final int? contributionPokok;
  @HiveField(2)
  final int? contributionSukarela;

  @override
  List<Object?> get props {
    return [
      contributionWajib,
      contributionPokok,
      contributionSukarela,
    ];
  }

  Contribution toDomain() => Contribution(
        contributionWajib: contributionWajib,
        contributionPokok: contributionPokok,
        contributionSukarela: contributionSukarela,
      );
}
