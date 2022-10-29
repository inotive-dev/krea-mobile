import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/data/remote/response/login/user_response.dart';
import 'package:koperasi/domain/entities/login/user.dart';

part 'profile.freezed.dart';

@freezed
class Profile with _$Profile {
  const factory Profile({
    required UserResponse? user,
  }) = _Profile;
}
