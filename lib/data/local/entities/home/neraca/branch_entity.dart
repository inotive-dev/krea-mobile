import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:koperasi/domain/entities/home/branch.dart';

import '../../../hive/hive_type_id.dart';

part 'branch_entity.g.dart';

@HiveType(typeId: HiveTypeId.branchEntity)
class BranchEntity extends Equatable {
  const BranchEntity({
    required this.martName,
    required this.total,
  });

  @HiveField(0)
  final String? martName;
  @HiveField(1)
  final double? total;

  @override
  List<Object?> get props {
    return [
      martName,
      total,
    ];
  }

  Branch toDomain() => Branch(
        martName: martName,
        total: total,
      );
}
