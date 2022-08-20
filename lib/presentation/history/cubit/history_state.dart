part of 'history_cubit.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState({
    @Default(ResultState.initial()) ResultState<dynamic> getHistoryAdminResultState,
    required HistoryData historyData,
  }) = _HistoryState;

  factory HistoryState.initial() => HistoryState(
        historyData: HistoryData.initial(),
      );
}
