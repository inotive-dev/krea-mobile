import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/core/base/usecase/no_param.dart';
import 'package:koperasi/data/remote/response/login/user_response.dart';
import 'package:koperasi/domain/usecases/get_profile.dart';
import 'package:koperasi/domain/usecases/update_profile.dart';

import '../../../../../core/unions/result_state.dart';
import '../../../../../domain/usecases/do_logout_usecase.dart';
import '../../../domain/usecases/get_user_usecase.dart';

part 'profile_cubit.freezed.dart';
part 'profile_state.dart';

@injectable
class ProfileCubit extends Cubit<ProfileState> {
  final DoLogoutUseCase _doLogoutUseCase;
  final GetUserUseCase _getUserUseCase;
  final GetProfileUseCase _getProfileUseCase;
  final UpdateProfileUseCase _updateProfileUseCase;

  ProfileCubit(
    this._doLogoutUseCase,
    this._getUserUseCase,
    this._getProfileUseCase,
    this._updateProfileUseCase,
  ) : super(const ProfileState());

  doLogOut() async {
    emit(state.copyWith(logoutResultState: const ResultState.loading()));

    final _result = await _doLogoutUseCase(const DoLogoutUseCaseParams());

    _result.fold(
      (failure) => emit(
        state.copyWith(
          logoutResultState: ResultState.error(
            failure: failure,
          ),
        ),
      ),
      (data) => emit(
        state.copyWith(
          logoutResultState: const ResultState.success(
            data: null,
          ),
        ),
      ),
    );
  }

  getUser() {
    final _result = _getUserUseCase(const NoParam());
    if (_result == null) {
      emit(state.copyWith(user: null));
      return;
    }

    emit(state.copyWith(user: _result));
  }

  getProfile() async {
    emit(state.copyWith(getProfileResultState: const ResultState.loading()));

    final _result = await _getProfileUseCase(const NoParam());

    _result.fold(
      (failure) => emit(
        state.copyWith(
          getProfileResultState: ResultState.error(
            failure: failure,
          ),
        ),
      ),
      (data) {
        resetValue();
        emit(
          state.copyWith(
            getProfileResultState: ResultState.success(
              data: data.user,
            ),
            user: data.user,
          ),
        );
      },
    );
  }

  updateProfile(bool isUpdatePassword) async {
    if (!isUpdatePassword &&
        state.name == state.user?.name &&
        state.email == state.user?.email &&
        state.pickedImageFile == null) {
      return;
    }

    emit(state.copyWith(updateProfileResultState: const ResultState.loading()));

    final _result = await _updateProfileUseCase(
      UpdateProfileUseCaseParams(
        name: state.name,
        email: state.email,
        password: state.password,
        imageFile: state.pickedImageFile,
        phoneNumber: state.user?.phone ?? '',
      ),
    );

    _result.fold(
      (failure) {
        emit(
          state.copyWith(
            updateProfileResultState: ResultState.error(
              failure: failure,
            ),
          ),
        );
      },
      (data) {
        emit(
          state.copyWith(
            updateProfileResultState: ResultState.success(
              data: data,
            ),
            user: state.user?.copyWith(
              name: data.user?.name ?? '',
              email: data.user?.email ?? '',
            ),
            name: data.user?.name ?? '',
            email: data.user?.email ?? '',
          ),
        );
      },
    );
  }

  changeName(String? value) {
    emit(state.copyWith(name: value ?? ''));
  }

  changeEmail(String? value) {
    emit(state.copyWith(email: value ?? ''));
  }

  changePassword(String? value) {
    emit(state.copyWith(password: value ?? ''));
  }

  savePickedImageFile(File pickedImageFile) {
    emit(state.copyWith(pickedImageFile: pickedImageFile));
  }

  resetValue() {
    emit(state.copyWith(
      name: '',
      email: '',
      password: '',
      pickedImageFile: null,
      phoneNumber: '',
    ));
  }
}
