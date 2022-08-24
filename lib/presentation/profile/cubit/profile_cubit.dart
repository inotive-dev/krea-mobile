import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/core/base/usecase/no_param.dart';
import 'package:koperasi/domain/usecases/get_profile.dart';

import '../../../../../core/unions/result_state.dart';
import '../../../../../domain/usecases/do_logout_usecase.dart';
import '../../../domain/entities/login/user.dart';
import '../../../domain/usecases/get_user_usecase.dart';

part 'profile_cubit.freezed.dart';
part 'profile_state.dart';

@injectable
class ProfileCubit extends Cubit<ProfileState> {
  final DoLogoutUseCase _doLogoutUseCase;
  final GetUserUseCase _getUserUseCase;
  final GetProfileUseCase _getProfileUseCase;

  ProfileCubit(
    this._doLogoutUseCase,
    this._getUserUseCase,
    this._getProfileUseCase,
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
      emit(state.copyWith(user: const User()));
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
      (data) => emit(
        state.copyWith(
          getProfileResultState: ResultState.success(
            data: data.user,
          ),
          user: data.user,
        ),
      ),
    );
  }
}
