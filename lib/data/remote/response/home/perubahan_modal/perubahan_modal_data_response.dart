import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/domain/entities/home/perubahan_modal/perubahan_modal_data.dart';

part 'perubahan_modal_data_response.freezed.dart';
part 'perubahan_modal_data_response.g.dart';

@freezed
class PerubahanModalDataResponse with _$PerubahanModalDataResponse {
  const PerubahanModalDataResponse._();

  const factory PerubahanModalDataResponse({
    @JsonKey(name: 'modal_awal') required double? modalAwal,
    @JsonKey(name: 'modal_akhir') required double? modalAkhir,
    @JsonKey(name: 'laba_bersih') required double? labaBersih,
    @JsonKey(name: 'laba_ditahan') required double? labaDitahan,
    required double? total1,
    required double? total2,
    required double? prive,
    required double? koreksi,
  }) = _PerubahanModalDataResponse;

  factory PerubahanModalDataResponse.fromJson(Map<String, dynamic> json) => _$PerubahanModalDataResponseFromJson(json);

  PerubahanModalData toDomain() => PerubahanModalData(
        modalAwal: modalAwal,
        modalAkhir: modalAkhir,
        labaBersih: labaBersih,
        labaDitahan: labaDitahan,
        total1: total1,
        total2: total2,
        prive: prive,
        koreksi: koreksi,
      );
}
