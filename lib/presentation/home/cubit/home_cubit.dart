import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/core/base/usecase/no_param.dart';
import 'package:koperasi/domain/entities/home/home_data.dart';
import 'package:koperasi/domain/entities/home/home_user_data.dart';
import 'package:koperasi/domain/usecases/get_home_admin_usecase.dart';
import 'package:koperasi/domain/usecases/get_home_user_usecase.dart';

import '../../../../../core/unions/result_state.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final GetHomeAdminUseCase _getHomeAdminUseCase;
  final GetHomeUserUseCase _getHomeUserUseCase;

  HomeCubit(
    this._getHomeAdminUseCase,
    this._getHomeUserUseCase,
  ) : super(HomeState.initial());

  getHomeAdminData(int martId) async {
    emit(state.copyWith(getHomeAdminResultState: const ResultState.loading()));

    final _result = await _getHomeAdminUseCase(GetHomeAdminUseCaseParams(martId: martId.toString()));
    _result.fold(
      (l) {
        emit(
          state.copyWith(
            getHomeAdminResultState: ResultState.error(failure: l),
          ),
        );
      },
      (r) {
        return emit(
          state.copyWith(
            getHomeAdminResultState: ResultState.success(data: r),
            homeData: r.data ?? HomeData.initial(),
            lastUpdated: DateTime.now(),
          ),
        );
      },
    );
  }

  getHomeUserData() async {
    emit(state.copyWith(getHomeUserResultState: const ResultState.loading()));

    final _result = await _getHomeUserUseCase(const NoParam());
    _result.fold(
      (l) {
        emit(
          state.copyWith(
            getHomeUserResultState: ResultState.error(failure: l),
          ),
        );
      },
      (r) {
        return emit(
          state.copyWith(
            getHomeUserResultState: ResultState.success(data: r),
            homeUserData: r.data ?? HomeUserData.initial(),
            lastUpdated: DateTime.now(),
          ),
        );
      },
    );
  }
}
