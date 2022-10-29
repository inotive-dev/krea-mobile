import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:koperasi/data/remote/response/home/sales_report/mart_response.dart';
import 'package:koperasi/domain/entities/history/mart.dart';

import '../../hive/hive_type_id.dart';

part 'mart_entity.g.dart';

@HiveType(typeId: HiveTypeId.martEntity)
class MartEntity extends Equatable {
  const MartEntity({
    required this.id,
    required this.name,
    required this.address,
    required this.createdAt,
    required this.updatedAt,
  });

  @HiveField(0)
  final int? id;
  @HiveField(1)
  final String? name;
  @HiveField(2)
  final String? address;
  @HiveField(3)
  final DateTime? createdAt;
  @HiveField(4)
  final DateTime? updatedAt;

  @override
  List<Object?> get props {
    return [
      id,
      name,
      address,
      createdAt,
      updatedAt,
    ];
  }

  Mart toDomain() => Mart(
        id: id,
        name: name,
        address: address,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
