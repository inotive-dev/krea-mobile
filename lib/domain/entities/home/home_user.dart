import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/domain/entities/home/home_user_data.dart';

part 'home_user.freezed.dart';

@freezed
class HomeUser with _$HomeUser {
  const factory HomeUser({
    required String? message,
    required int? statusCode,
    required HomeUserData? data,
  }) = _HomeUser;
}
