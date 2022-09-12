part of 'history_cubit.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState({
    @Default(ResultState.initial()) ResultState<dynamic> getHistoryAdminResultState,
    @Default(ResultState.initial()) ResultState<dynamic> getHistoryUserResultState,
    @Default(ResultState.initial()) ResultState<dynamic> getHistoryDetailResultState,
    @Default({'id': 1, 'name': 'Mart Alfa'}) Map selectedMart,
    required HistoryData historyData,
    required List<HistoryDetailData>? historyDetailData,
  }) = _HistoryState;

  factory HistoryState.initial() => HistoryState(
        historyData: HistoryData.initial(),
        historyDetailData: null,
      );
}
