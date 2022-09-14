import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/data/remote/response/home/home_user_data_response.dart';
import 'package:koperasi/domain/entities/home/home_user.dart';

part 'home_user_response.freezed.dart';
part 'home_user_response.g.dart';

@freezed
class HomeUserResponse with _$HomeUserResponse {
  const HomeUserResponse._();

  const factory HomeUserResponse({
    required String? message,
    required int? statusCode,
    required HomeUserDataResponse? data,
  }) = _HomeUserResponse;

  factory HomeUserResponse.fromJson(Map<String, dynamic> json) => _$HomeUserResponseFromJson(json);

  HomeUser toDomain() => HomeUser(
        message: message,
        statusCode: statusCode,
        data: data?.toDomain(),
      );
}
