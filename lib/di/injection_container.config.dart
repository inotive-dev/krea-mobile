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
import '../domain/usecases/check_login_status_usecase.dart' as _i12;
import '../domain/usecases/do_login_usecase.dart' as _i13;
import '../domain/usecases/do_logout_usecase.dart' as _i14;
import '../domain/usecases/get_user_usecase.dart' as _i15;
import '../presentation/auth/cubit/login_cubit.dart' as _i16;
import '../presentation/profile/cubit/profile_cubit.dart' as _i17;
import 'register_module.dart' as _i18; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i12.CheckLoginStatusUseCase>(() =>
      _i12.CheckLoginStatusUseCase(myRepository: get<_i10.MyRepository>()));
  gh.lazySingleton<_i13.DoLoginUseCase>(
      () => _i13.DoLoginUseCase(myRepository: get<_i10.MyRepository>()));
  gh.lazySingleton<_i14.DoLogoutUseCase>(
      () => _i14.DoLogoutUseCase(myRepository: get<_i10.MyRepository>()));
  gh.lazySingleton<_i15.GetUserUseCase>(
      () => _i15.GetUserUseCase(myRepository: get<_i10.MyRepository>()));
  gh.factory<_i16.LoginCubit>(
      () => _i16.LoginCubit(get<_i13.DoLoginUseCase>()));
  gh.factory<_i17.ProfileCubit>(() => _i17.ProfileCubit(
      get<_i14.DoLogoutUseCase>(), get<_i15.GetUserUseCase>()));
  return get;
}

class _$RegisterModule extends _i18.RegisterModule {}
