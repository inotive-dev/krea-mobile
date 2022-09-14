import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/domain/entities/base_response_domain.dart';

part 'base_response.freezed.dart';
part 'base_response.g.dart';

@freezed
class BaseResponse with _$BaseResponse {
  const BaseResponse._();

  const factory BaseResponse({
    required int? statusCode,
    required String? message,
  }) = _BaseResponse;

  factory BaseResponse.fromJson(Map<String, dynamic> json) => _$BaseResponseFromJson(json);

  BaseResponseDomain toDomain() => BaseResponseDomain(
        statusCode: statusCode,
        message: message,
      );
}
