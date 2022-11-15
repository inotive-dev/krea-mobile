// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_user_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeUserDataResponse _$$_HomeUserDataResponseFromJson(
        Map<String, dynamic> json) =>
    _$_HomeUserDataResponse(
      contribution: ContributionResponse.fromJson(
          json['contribution'] as Map<String, dynamic>),
      totalSaldoSimpananUtang: json['total_saldo_simpanan_utang'] as int,
      totalSaldoSimpananPokok: json['total_saldo_simpanan_pokok'] as int?,
      totalUtang: json['total_utang'] as int,
    );

Map<String, dynamic> _$$_HomeUserDataResponseToJson(
        _$_HomeUserDataResponse instance) =>
    <String, dynamic>{
      'contribution': instance.contribution,
      'total_saldo_simpanan_utang': instance.totalSaldoSimpananUtang,
      'total_saldo_simpanan_pokok': instance.totalSaldoSimpananPokok,
      'total_utang': instance.totalUtang,
    };
