import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/domain/entities/history_entities/history_data_admin.dart';
import 'package:koperasi/domain/usecases/get_history_admin.dart';

import '../../../../../core/unions/result_state.dart';

part 'history_cubit.freezed.dart';
part 'history_state.dart';

@injectable
class HistoryCubit extends Cubit<HistoryState> {
  final GetHistoryAdminUseCase _getHistoryAdminUseCase;

  HistoryCubit(
    this._getHistoryAdminUseCase,
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
}
