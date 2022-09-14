import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response_domain.freezed.dart';

@freezed
class BaseResponseDomain with _$BaseResponseDomain {
  const factory BaseResponseDomain({
    required String? message,
    required int? statusCode,
  }) = _BaseResponseDomain;
}
