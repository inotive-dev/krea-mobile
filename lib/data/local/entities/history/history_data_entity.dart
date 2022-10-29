import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:koperasi/data/local/entities/history/sales_response_entity.dart';
import 'package:koperasi/data/local/hive/hive_type_id.dart';
import 'package:koperasi/domain/entities/history/history_data_admin.dart';

part 'history_data_entity.g.dart';

@HiveType(typeId: HiveTypeId.historyEntity)
class HistoryDataEntity extends Equatable {
  const HistoryDataEntity({
    required this.thisWeekHistory,
    required this.lastMonthHistory,
  });

  @HiveField(0)
  final List<SalesResponseEntity>? thisWeekHistory;
  @HiveField(1)
  final List<SalesResponseEntity>? lastMonthHistory;

  @override
  List<Object?> get props {
    return [
      thisWeekHistory,
      lastMonthHistory,
    ];
  }

  HistoryData toDomain() => HistoryData(
        thisWeekHistory: thisWeekHistory?.map((e) => e.toDomain()).toList(),
        lastMonthHistory: lastMonthHistory?.map((e) => e.toDomain()).toList(),
      );
}
