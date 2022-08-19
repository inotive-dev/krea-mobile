import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/domain/entities/home/home_data.dart';
import 'package:koperasi/domain/usecases/get_home_admin_usecase.dart';

import '../../../../../core/unions/result_state.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final GetHomeAdminUseCase _getHomeAdminUseCase;

  HomeCubit(
    this._getHomeAdminUseCase,
  ) : super(HomeState.initial());

  getHomeAdminData() async {
    emit(state.copyWith(getHomeAdminResultState: const ResultState.loading()));

    final _result = await _getHomeAdminUseCase(const GetHomeAdminUseCaseParams(martId: '1'));
    print('INI: $_result');

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
          ),
        );
      },
    );
  }
}
