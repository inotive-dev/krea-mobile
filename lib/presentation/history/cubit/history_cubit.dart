import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/core/base/usecase/no_param.dart';
import 'package:koperasi/domain/entities/history_entities/history_data_admin.dart';
import 'package:koperasi/domain/usecases/get_history_admin.dart';
import 'package:koperasi/domain/usecases/get_history_user.dart';

import '../../../../../core/unions/result_state.dart';

part 'history_cubit.freezed.dart';
part 'history_state.dart';

@injectable
class HistoryCubit extends Cubit<HistoryState> {
  final GetHistoryAdminUseCase _getHistoryAdminUseCase;
  final GetHistoryUserUseCase _getHistoryUserUseCase;

  HistoryCubit(
    this._getHistoryAdminUseCase,
    this._getHistoryUserUseCase,
  ) : super(HistoryState.initial());

  getHistoryAdminData(int martId) async {
    emit(state.copyWith(getHistoryAdminResultState: const ResultState.loading()));

    final _result = await _getHistoryAdminUseCase(GetHistoryAdminUseCaseParams(martId: martId.toString()));
    _result.fold(
      (l) {
        emit(
          state.copyWith(
            getHistoryAdminResultState: ResultState.error(failure: l),
          ),
        );
      },
      (r) {
        return emit(
          state.copyWith(
            getHistoryAdminResultState: ResultState.success(data: r),
            historyData: r.data ?? HistoryData.initial(),
          ),
        );
      },
    );
  }

  getHistoryUserData() async {
    emit(state.copyWith(getHistoryUserResultState: const ResultState.loading()));

    final _result = await _getHistoryUserUseCase(const NoParam());
    _result.fold(
      (l) {
        emit(
          state.copyWith(
            getHistoryUserResultState: ResultState.error(failure: l),
          ),
        );
      },
      (r) {
        return emit(
          state.copyWith(
            getHistoryUserResultState: ResultState.success(data: r),
            historyData: r.data ?? HistoryData.initial(),
          ),
        );
      },
    );
  }
}
