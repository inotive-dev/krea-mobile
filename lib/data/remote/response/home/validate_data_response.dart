import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/data/remote/response/home/valid_data_response.dart';
import 'package:koperasi/domain/entities/home/validate_data/validate_data.dart';

part 'validate_data_response.freezed.dart';
part 'validate_data_response.g.dart';

@freezed
class ValidateDataResponse with _$ValidateDataResponse {
  const ValidateDataResponse._();

  const factory ValidateDataResponse({
    required String? message,
    required int? statusCode,
    required ValidDataResponse? data,
  }) = _ValidateDataResponse;

  factory ValidateDataResponse.fromJson(Map<String, dynamic> json) => _$ValidateDataResponseFromJson(json);

  ValidateData toDomain() => ValidateData(
        message: message,
        statusCode: statusCode,
        data: data?.toDomain(),
      );
}
