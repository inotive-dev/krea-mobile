part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(ResultState.initial()) ResultState<dynamic> getHomeAdminResultState,
    @Default(ResultState.initial()) ResultState<dynamic> getHomeUserResultState,
    @Default(ResultState.initial()) ResultState<dynamic> updateSalesReportState,
    @Default(ResultState.initial()) ResultState<dynamic> getHomeAdminNeracaResultState,
    @Default(ResultState.initial()) ResultState<dynamic> getHomeAdminLabaRugiResultState,
    required HomeData homeData,
    required List<Branch> neracaData,
    required List<Branch> labaRugiData,
    required HomeUserData homeUserData,
    required DateTime lastUpdated,
    required int martId,
    required String year,
    required String type,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        homeData: HomeData.initial(),
        neracaData: [],
        labaRugiData: [],
        homeUserData: HomeUserData.initial(),
        lastUpdated: DateTime.now(),
        martId: 0,
        year: '2022',
        type: '',
      );
}
