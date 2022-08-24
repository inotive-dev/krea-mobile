import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/data/remote/response/login/user_response.dart';
import 'package:koperasi/domain/entities/profile/profile.dart';

part 'profile_response.freezed.dart';
part 'profile_response.g.dart';

@freezed
class ProfileResponse with _$ProfileResponse {
  const ProfileResponse._();

  const factory ProfileResponse({
    UserResponse? user,
  }) = _ProfileResponse;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) => _$ProfileResponseFromJson(json);

  Profile toDomain() => Profile(
        user: user?.toDomain(),
      );
}
