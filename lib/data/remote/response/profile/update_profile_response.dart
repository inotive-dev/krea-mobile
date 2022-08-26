import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/profile/update_profile.dart';
import '../login/user_response.dart';

part 'update_profile_response.freezed.dart';
part 'update_profile_response.g.dart';

@freezed
class UpdateProfileResponse with _$UpdateProfileResponse {
  const UpdateProfileResponse._();

  const factory UpdateProfileResponse({
    UserResponse? user,
    String? message,
  }) = _UpdateProfileResponse;

  factory UpdateProfileResponse.fromJson(Map<String, dynamic> json) => _$UpdateProfileResponseFromJson(json);

  UpdateProfile toDomain() => UpdateProfile(
        user: user?.toDomain(),
        message: message,
      );
}
