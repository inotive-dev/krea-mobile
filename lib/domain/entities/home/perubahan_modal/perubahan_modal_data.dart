import 'package:freezed_annotation/freezed_annotation.dart';

part 'perubahan_modal_data.freezed.dart';

@freezed
class PerubahanModalData with _$PerubahanModalData {
  const factory PerubahanModalData({
    required double? modalAwal,
    required double? modalAkhir,
    required double? labaBersih,
    required double? labaDitahan,
    required double? total1,
    required double? total2,
    required double? prive,
    required double? koreksi,
  }) = _PerubahanModalData;

  factory PerubahanModalData.initial() => const PerubahanModalData(
        modalAwal: 0.0,
        modalAkhir: 0.0,
        labaBersih: 0.0,
        labaDitahan: 0.0,
        total1: 0.0,
        total2: 0.0,
        prive: 0.0,
        koreksi: 0.0,
      );
}
