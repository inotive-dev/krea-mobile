part of 'reset_password_cubit.dart';

@freezed
class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState({
    @Default(ResultState.initial()) ResultState<dynamic> sendEmailResultState,
    @Default(ResultState.initial()) ResultState<dynamic> sendOTPResultState,
    @Default(ResultState.initial()) ResultState<dynamic> sendResetPasswordResultState,
    required ResetPasswordSteps? resetStep,
    required String validOtp,
  }) = _ResetPasswordState;

  factory ResetPasswordState.initial() => const ResetPasswordState(
        resetStep: ResetPasswordSteps.sendEmail,
        validOtp: '',
      );
}
