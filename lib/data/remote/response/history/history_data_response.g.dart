// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HistoryDataResponse _$$_HistoryDataResponseFromJson(
        Map<String, dynamic> json) =>
    _$_HistoryDataResponse(
      thisWeekHistory: (json['this_week_history'] as List<dynamic>?)
          ?.map((e) => SalesResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastMonthHistory: (json['last_month_history'] as List<dynamic>?)
          ?.map((e) => SalesResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HistoryDataResponseToJson(
        _$_HistoryDataResponse instance) =>
    <String, dynamic>{
      'this_week_history': instance.thisWeekHistory,
      'last_month_history': instance.lastMonthHistory,
    };
