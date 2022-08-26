part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(ResultState.initial()) ResultState<dynamic> logoutResultState,
    @Default(ResultState.initial()) ResultState<dynamic> getProfileResultState,
    @Default(ResultState.initial()) ResultState<dynamic> updateProfileResultState,
    @Default(User()) User? user,
    @Default('') String name,
    @Default('') String email,
    @Default('') String phoneNumber,
    @Default('') String password,
    File? pickedImageFile,
  }) = _ProfileState;
}
