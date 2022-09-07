import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/domain/entities/home/perubahan_modal/perubahan_modal_data.dart';

part 'perubahan_modal.freezed.dart';

@freezed
class PerubahanModal with _$PerubahanModal {
  const factory PerubahanModal({
    required String? message,
    required int? statusCode,
    required PerubahanModalData? data,
  }) = _PerubahanModal;
}
