import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/data/remote/response/login/user_response.dart';

import '../login/user.dart';

part 'update_profile.freezed.dart';

@freezed
class UpdateProfile with _$UpdateProfile {
  const factory UpdateProfile({
    required UserResponse? user,
    required String? message,
  }) = _UpdateProfile;
}
