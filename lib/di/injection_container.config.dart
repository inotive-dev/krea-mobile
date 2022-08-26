// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i3;
import 'package:hive_flutter/hive_flutter.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import '../data/local/hive/hive_manager.dart' as _i4;
import '../data/local/local_data_source.dart' as _i6;
import '../data/remote/api/api_service.dart' as _i8;
import '../data/remote/remote_data_source.dart' as _i9;
import '../data/repositories/my_repository_impl.dart' as _i11;
import '../domain/repositories/my_repository.dart' as _i10;
import '../domain/usecases/check_login_status_usecase.dart' as _i13;
import '../domain/usecases/do_login_usecase.dart' as _i14;
import '../domain/usecases/do_logout_usecase.dart' as _i15;
import '../domain/usecases/get_history_admin.dart' as _i16;
import '../domain/usecases/get_history_user.dart' as _i17;
import '../domain/usecases/get_home_admin_usecase.dart' as _i18;
import '../domain/usecases/get_home_user_usecase.dart' as _i19;
import '../domain/usecases/get_profile.dart' as _i20;
import '../domain/usecases/get_user_usecase.dart' as _i21;
import '../domain/usecases/update_profile.dart' as _i12;
import '../presentation/auth/cubit/login_cubit.dart' as _i24;
import '../presentation/history/cubit/history_cubit.dart' as _i22;
import '../presentation/home/cubit/home_cubit.dart' as _i23;
import '../presentation/profile/cubit/profile_cubit.dart' as _i25;
import 'register_module.dart' as _i26; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Box<dynamic>>(() => registerModule.hiveBoxKoperasi());
  gh.lazySingleton<_i4.HiveManager>(
      () => _i4.HiveManager(get<_i5.Box<dynamic>>()));
  gh.lazySingleton<_i6.LocalDataSource>(
      () => _i6.LocalDataSource(get<_i4.HiveManager>()));
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'BaseUrl');
  gh.lazySingleton<_i7.Dio>(() => registerModule.dio(
      get<String>(instanceName: 'BaseUrl'), get<_i6.LocalDataSource>()));
  gh.lazySingleton<_i8.ApiService>(() => _i8.ApiService(get<_i7.Dio>()));
  gh.lazySingleton<_i9.RemoteDataSource>(
      () => _i9.RemoteDataSource(get<_i8.ApiService>()));
  gh.lazySingleton<_i10.MyRepository>(() => _i11.MyRepositoryImpl(
      get<_i9.RemoteDataSource>(), get<_i6.LocalDataSource>()));
  gh.lazySingleton<_i12.UpdateProfileUseCase>(
      () => _i12.UpdateProfileUseCase(myRepository: get<_i10.MyRepository>()));
  gh.lazySingleton<_i13.CheckLoginStatusUseCase>(() =>
      _i13.CheckLoginStatusUseCase(myRepository: get<_i10.MyRepository>()));
  gh.lazySingleton<_i14.DoLoginUseCase>(
      () => _i14.DoLoginUseCase(myRepository: get<_i10.MyRepository>()));
  gh.lazySingleton<_i15.DoLogoutUseCase>(
      () => _i15.DoLogoutUseCase(myRepository: get<_i10.MyRepository>()));
  gh.lazySingleton<_i16.GetHistoryAdminUseCase>(() =>
      _i16.GetHistoryAdminUseCase(myRepository: get<_i10.MyRepository>()));
  gh.lazySingleton<_i17.GetHistoryUserUseCase>(
      () => _i17.GetHistoryUserUseCase(myRepository: get<_i10.MyRepository>()));
  gh.lazySingleton<_i18.GetHomeAdminUseCase>(
      () => _i18.GetHomeAdminUseCase(myRepository: get<_i10.MyRepository>()));
  gh.lazySingleton<_i19.GetHomeUserUseCase>(
      () => _i19.GetHomeUserUseCase(myRepository: get<_i10.MyRepository>()));
  gh.lazySingleton<_i20.GetProfileUseCase>(
      () => _i20.GetProfileUseCase(myRepository: get<_i10.MyRepository>()));
  gh.lazySingleton<_i21.GetUserUseCase>(
      () => _i21.GetUserUseCase(myRepository: get<_i10.MyRepository>()));
  gh.factory<_i22.HistoryCubit>(() => _i22.HistoryCubit(
      get<_i16.GetHistoryAdminUseCase>(), get<_i17.GetHistoryUserUseCase>()));
  gh.factory<_i23.HomeCubit>(() => _i23.HomeCubit(
      get<_i18.GetHomeAdminUseCase>(), get<_i19.GetHomeUserUseCase>()));
  gh.factory<_i24.LoginCubit>(
      () => _i24.LoginCubit(get<_i14.DoLoginUseCase>()));
  gh.factory<_i25.ProfileCubit>(() => _i25.ProfileCubit(
      get<_i15.DoLogoutUseCase>(),
      get<_i21.GetUserUseCase>(),
      get<_i20.GetProfileUseCase>(),
      get<_i12.UpdateProfileUseCase>()));
  return get;
}

class _$RegisterModule extends _i26.RegisterModule {}
