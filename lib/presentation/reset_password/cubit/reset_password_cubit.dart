import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/core/const/enums.dart';
import 'package:koperasi/domain/usecases/send_email_reset_password_usecase.dart';
import 'package:koperasi/domain/usecases/send_otp_reset_password_usecase%20copy.dart';
import 'package:koperasi/domain/usecases/send_otp_reset_password_usecase.dart';

import '../../../core/unions/result_state.dart';

part 'reset_password_cubit.freezed.dart';
part 'reset_password_state.dart';

@injectable
class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  final SendEmailResetPasswordUseCase _sendEmailResetPasswordUseCase;
  final SendOTPResetPasswordUseCase _sendOTPResetPasswordUseCase;
  final SendResetPasswordUseCase _sendResetPasswordUseCase;

  ResetPasswordCubit(
    this._sendEmailResetPasswordUseCase,
    this._sendOTPResetPasswordUseCase,
    this._sendResetPasswordUseCase,
  ) : super(ResetPasswordState.initial());

  sendEmail(String email) async {
    emit(state.copyWith(sendEmailResultState: const ResultState.loading()));
    final _result = await _sendEmailResetPasswordUseCase(SendEmailUseCaseParams(email: email));

    _result.fold(
      (failure) {
        emit(
          state.copyWith(
            sendEmailResultState: ResultState.error(failure: failure),
          ),
        );
      },
      (data) => emit(
        state.copyWith(
          sendEmailResultState: ResultState.success(data: data),
          resetStep: ResetPasswordSteps.sendOtp,
        ),
      ),
    );
  }

  sendOTP(String otp) async {
    emit(state.copyWith(sendOTPResultState: const ResultState.loading()));
    final _result = await _sendOTPResetPasswordUseCase(SendOTPUseCaseParams(otp: otp));

    _result.fold(
      (failure) {
        emit(
          state.copyWith(
            sendOTPResultState: ResultState.error(failure: failure),
          ),
        );
      },
      (data) => emit(
        state.copyWith(
          sendOTPResultState: ResultState.success(data: data),
          resetStep: ResetPasswordSteps.sendNewPassword,
          validOtp: otp,
        ),
      ),
    );
  }

  sendResetPassword(String password) async {
    print("${state.validOtp} - $password");
    emit(state.copyWith(sendResetPasswordResultState: const ResultState.loading()));
    final _result = await _sendResetPasswordUseCase(SendResetPasswordUseCaseParams(
      otp: state.validOtp,
      password: password,
    ));

    _result.fold(
      (failure) {
        emit(
          state.copyWith(
            sendResetPasswordResultState: ResultState.error(failure: failure),
          ),
        );
      },
      (data) => emit(
        state.copyWith(
          sendResetPasswordResultState: ResultState.success(data: data),
          resetStep: ResetPasswordSteps.sendEmail,
        ),
      ),
    );
  }

  changeStep(ResetPasswordSteps step) {
    emit(
      state.copyWith(resetStep: step),
    );
  }
}
