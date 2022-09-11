import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/domain/entities/home/validate_data/valid_data.dart';

part 'validate_data.freezed.dart';

@freezed
class ValidateData with _$ValidateData {
  const factory ValidateData({
    required String? message,
    required int? statusCode,
    required ValidData? data,
  }) = _ValidateData;
}
