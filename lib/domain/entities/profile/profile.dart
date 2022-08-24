import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/domain/entities/login/user.dart';

part 'profile.freezed.dart';

@freezed
class Profile with _$Profile {
  const factory Profile({
    required User? user,
  }) = _Profile;
}
