import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/data/remote/response/home/perubahan_modal/perubahan_modal_data_response.dart';
import 'package:koperasi/domain/entities/home/perubahan_modal/perubahan_modal.dart';

part 'perubahan_modal_response.freezed.dart';
part 'perubahan_modal_response.g.dart';

@freezed
class PerubahanModalResponse with _$PerubahanModalResponse {
  const PerubahanModalResponse._();

  const factory PerubahanModalResponse({
    required String? message,
    required int? statusCode,
    required PerubahanModalDataResponse? data,
  }) = _PerubahanModalResponse;

  factory PerubahanModalResponse.fromJson(Map<String, dynamic> json) => _$PerubahanModalResponseFromJson(json);

  PerubahanModal toDomain() => PerubahanModal(
        message: message,
        statusCode: statusCode,
        data: data?.toDomain(),
      );
}
