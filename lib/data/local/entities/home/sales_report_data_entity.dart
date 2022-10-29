import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:koperasi/data/local/entities/history/sales_report_entity.dart';
import 'package:koperasi/data/local/entities/history/sales_response_entity.dart';
import 'package:koperasi/data/local/entities/home/neraca/link_entity.dart';
import 'package:koperasi/data/local/hive/hive_type_id.dart';
import 'package:koperasi/domain/entities/home/sales_report_data.dart';

part 'sales_report_data_entity.g.dart';

@HiveType(typeId: HiveTypeId.salesReportDataEntity)
class SalesReportDataEntity extends Equatable {
  const SalesReportDataEntity({
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
  final List<SalesResponseEntity>? data;
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

  SalesReportData toDomain() => SalesReportData(
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
