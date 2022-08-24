part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(ResultState.initial()) ResultState<dynamic> getHomeAdminResultState,
    @Default(ResultState.initial()) ResultState<dynamic> getHomeUserResultState,
    required DateTime lastUpdated,
    required HomeData homeData,
    required HomeUserData homeUserData,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        homeData: HomeData.initial(),
        homeUserData: HomeUserData.initial(),
        lastUpdated: DateTime.now(),
      );
}
