part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(ResultState.initial()) ResultState<dynamic> getHomeAdminResultState,
    @Default(ResultState.initial()) ResultState<dynamic> getHomeUserResultState,
    @Default(ResultState.initial()) ResultState<dynamic> updateSalesReportState,
    required DateTime lastUpdated,
    required HomeData homeData,
    required HomeUserData homeUserData,
    required int martId,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        homeData: HomeData.initial(),
        homeUserData: HomeUserData.initial(),
        lastUpdated: DateTime.now(),
        martId: 0,
      );
}
