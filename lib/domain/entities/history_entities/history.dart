import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/domain/entities/history_entities/history_data_admin.dart';

part 'history.freezed.dart';

@freezed
class History with _$History {
  const factory History({
    required String? message,
    required int? statusCode,
    required HistoryData? data,
  }) = _History;
}
