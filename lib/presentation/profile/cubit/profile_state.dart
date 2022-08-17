part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(ResultState.initial()) ResultState<dynamic> logoutResultState,
    @Default(ResultState.initial()) ResultState<dynamic> getProfileResultState,
    @Default(User()) User user,
  }) = _ProfileState;
}
