part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(ResultState.initial()) ResultState<dynamic> getHomeAdminResultState,
    required HomeData homeData,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        homeData: HomeData.initial(),
      );
}
