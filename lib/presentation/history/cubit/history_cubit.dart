import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/core/base/usecase/no_param.dart';
import 'package:koperasi/domain/entities/history/history_data_admin.dart';
import 'package:koperasi/domain/entities/history/history_detail/history_detail_data.dart';
import 'package:koperasi/domain/usecases/get_history_admin.dart';
import 'package:koperasi/domain/usecases/get_history_detail.dart';
import 'package:koperasi/domain/usecases/get_history_user.dart';

import '../../../../../core/unions/result_state.dart';

part 'history_cubit.freezed.dart';
part 'history_state.dart';

@injectable
class HistoryCubit extends Cubit<HistoryState> {
  final GetHistoryAdminUseCase _getHistoryAdminUseCase;
  final GetHistoryUserUseCase _getHistoryUserUseCase;
  final GetHistoryDetailUseCase _getHistoryDetailUseCase;

  HistoryCubit(
    this._getHistoryAdminUseCase,
    this._getHistoryUserUseCase,
    this._getHistoryDetailUseCase,
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

  getHistoryDetail(int historyId) async {
    emit(state.copyWith(getHistoryDetailResultState: const ResultState.loading()));

    final _result = await _getHistoryDetailUseCase(GetHistoryDetailUseCaseParams(id: historyId));
    _result.fold(
      (l) {
        emit(
          state.copyWith(
            getHistoryDetailResultState: ResultState.error(failure: l),
          ),
        );
      },
      (r) {
        return emit(
          state.copyWith(
            getHistoryDetailResultState: ResultState.success(data: r),
            historyDetailData: r.data,
          ),
        );
      },
    );
  }

  onUpdateSelectedMart(Map mart) async {
    emit(state.copyWith(selectedMart: mart));
    getHistoryAdminData(mart['id']);
  }
}
