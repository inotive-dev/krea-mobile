import 'package:freezed_annotation/freezed_annotation.dart';

import '../login/user.dart';

part 'update_profile.freezed.dart';

@freezed
class UpdateProfile with _$UpdateProfile {
  const factory UpdateProfile({
    required User? user,
    required String? message,
  }) = _UpdateProfile;
}
