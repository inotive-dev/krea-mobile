part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(ResultState.initial()) ResultState<dynamic> getHomeAdminResultState,
    @Default(ResultState.initial()) ResultState<dynamic> getHomeUserResultState,
    @Default(ResultState.initial()) ResultState<dynamic> updateSalesReportState,
    @Default(ResultState.initial()) ResultState<dynamic> getHomeAdminNeracaResultState,
    @Default(ResultState.initial()) ResultState<dynamic> getHomeAdminLabaRugiResultState,
    @Default(ResultState.initial()) ResultState<dynamic> getHomeAdminPerubahanModalReportState,
    @Default(ResultState.initial()) ResultState<dynamic> getHomeAdminSalesReportState,
    @Default(ResultState.initial()) ResultState<dynamic> validateDataState,
    required HomeData homeData,
    required BranchesData neracaData,
    required BranchesData labaRugiData,
    required PerubahanModalData perubahanModalData,
    required HomeUserData homeUserData,
    required SalesReportData salesReportData,
    required DateTime lastUpdated,
    required int martId,
    required String year,
    required String type,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        homeData: HomeData.initial(),
        neracaData: BranchesData.initial(),
        labaRugiData: BranchesData.initial(),
        perubahanModalData: PerubahanModalData.initial(),
        homeUserData: HomeUserData.initial(),
        salesReportData: SalesReportData.initial(),
        lastUpdated: DateTime.now(),
        martId: 0,
        year: '2022',
        type: '',
      );
}
