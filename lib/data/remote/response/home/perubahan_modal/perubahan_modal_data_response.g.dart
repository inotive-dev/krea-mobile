// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'perubahan_modal_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PerubahanModalDataResponse _$$_PerubahanModalDataResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PerubahanModalDataResponse(
      modalAwal: (json['modal_awal'] as num?)?.toDouble(),
      modalAkhir: (json['modal_akhir'] as num?)?.toDouble(),
      labaBersih: (json['laba_bersih'] as num?)?.toDouble(),
      labaDitahan: (json['laba_ditahan'] as num?)?.toDouble(),
      total1: (json['total1'] as num?)?.toDouble(),
      total2: (json['total2'] as num?)?.toDouble(),
      prive: (json['prive'] as num?)?.toDouble(),
      koreksi: (json['koreksi'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_PerubahanModalDataResponseToJson(
        _$_PerubahanModalDataResponse instance) =>
    <String, dynamic>{
      'modal_awal': instance.modalAwal,
      'modal_akhir': instance.modalAkhir,
      'laba_bersih': instance.labaBersih,
      'laba_ditahan': instance.labaDitahan,
      'total1': instance.total1,
      'total2': instance.total2,
      'prive': instance.prive,
      'koreksi': instance.koreksi,
    };
