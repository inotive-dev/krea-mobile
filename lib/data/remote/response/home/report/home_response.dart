import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/data/remote/response/home/report/home_data_response.dart';
import 'package:koperasi/domain/entities/home/home.dart';

part 'home_response.freezed.dart';
part 'home_response.g.dart';

@freezed
class HomeResponse with _$HomeResponse {
  const HomeResponse._();

  const factory HomeResponse({
    required String? message,
    required int? statusCode,
    required HomeDataResponse? data,
  }) = _HomeResponse;

  factory HomeResponse.fromJson(Map<String, dynamic> json) => _$HomeResponseFromJson(json);

  Home toDomain() => Home(
        message: message,
        statusCode: statusCode,
        data: data?.toDomain(),
      );
}
