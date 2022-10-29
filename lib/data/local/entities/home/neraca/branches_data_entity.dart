import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:koperasi/data/local/entities/home/neraca/branch_entity.dart';
import 'package:koperasi/data/local/entities/home/neraca/link_entity.dart';
import 'package:koperasi/domain/entities/home/branches_data.dart';

import '../../../hive/hive_type_id.dart';

part 'branches_data_entity.g.dart';

@HiveType(typeId: HiveTypeId.branchesDataEntity)
class BranchesDataEntity extends Equatable {
  const BranchesDataEntity({
    required this.currentPage,
    required this.data,
    required this.firstPageUrl,
    required this.from,
    required this.lastPage,
    required this.lastPageUrl,
    required this.links,
    required this.nextPageUrl,
    required this.path,
    required this.perPage,
    required this.prevPageUrl,
    required this.to,
    required this.total,
  });

  @HiveField(0)
  final int? currentPage;
  @HiveField(1)
  final List<BranchEntity>? data;
  @HiveField(2)
  final String? firstPageUrl;
  @HiveField(3)
  final int? from;
  @HiveField(4)
  final int? lastPage;
  @HiveField(5)
  final String? lastPageUrl;
  @HiveField(6)
  final List<LinkEntity>? links;
  @HiveField(7)
  final String? nextPageUrl;
  @HiveField(8)
  final String? path;
  @HiveField(9)
  final int? perPage;
  @HiveField(10)
  final String? prevPageUrl;
  @HiveField(11)
  final int? to;
  @HiveField(12)
  final int? total;

  @override
  List<Object?> get props {
    return [
      currentPage,
      data,
      firstPageUrl,
      from,
      lastPage,
      lastPageUrl,
      links,
      nextPageUrl,
      path,
      perPage,
      prevPageUrl,
      to,
      total,
    ];
  }

  BranchesData toDomain() => BranchesData(
        currentPage: currentPage,
        data: data?.map((e) => e.toDomain()).toList(),
        firstPageUrl: firstPageUrl,
        from: from,
        lastPage: lastPage,
        lastPageUrl: lastPageUrl,
        links: links?.map((e) => e.toDomain()).toList(),
        nextPageUrl: nextPageUrl,
        path: path,
        perPage: perPage,
        prevPageUrl: prevPageUrl,
        to: to,
        total: total,
      );
}
