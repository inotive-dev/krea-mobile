import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/core/base/usecase/no_param.dart';

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

  ProfileCubit(
    this._doLogoutUseCase,
    this._getUserUseCase,
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
    print(_result);
    if (_result == null) {
      emit(state.copyWith(user: const User()));
      return;
    }

    emit(state.copyWith(user: _result));
  }
}
