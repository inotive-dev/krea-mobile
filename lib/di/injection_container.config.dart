// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i3;
import 'package:hive_flutter/hive_flutter.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import '../core/utils/network_info/network_info.dart' as _i7;
import '../data/local/hive/hive_manager.dart' as _i4;
import '../data/local/local_data_source.dart' as _i6;
import '../data/remote/api/api_service.dart' as _i9;
import '../data/remote/remote_data_source.dart' as _i10;
import '../data/repositories/my_repository_impl.dart' as _i12;
import '../domain/repositories/my_repository.dart' as _i11;
import '../domain/usecases/check_login_status_usecase.dart' as _i15;
import '../domain/usecases/do_login_usecase.dart' as _i16;
import '../domain/usecases/do_logout_usecase.dart' as _i17;
import '../domain/usecases/get_history_admin.dart' as _i18;
import '../domain/usecases/get_history_user.dart' as _i19;
import '../domain/usecases/get_home_admin_laba_rugi_usecase.dart' as _i20;
import '../domain/usecases/get_home_admin_neraca_usecase.dart' as _i21;
import '../domain/usecases/get_home_admin_perubahan_modal_usecase.dart' as _i22;
import '../domain/usecases/get_home_admin_sales_reports.dart' as _i23;
import '../domain/usecases/get_home_admin_usecase.dart' as _i24;
import '../domain/usecases/get_home_user_usecase.dart' as _i25;
import '../domain/usecases/get_profile.dart' as _i26;
import '../domain/usecases/get_user_usecase.dart' as _i27;
import '../domain/usecases/update_profile.dart' as _i13;
import '../domain/usecases/validate_data_usecase.dart' as _i14;
import '../presentation/auth/cubit/login_cubit.dart' as _i30;
import '../presentation/history/cubit/history_cubit.dart' as _i28;
import '../presentation/home/cubit/home_cubit.dart' as _i29;
import '../presentation/profile/cubit/profile_cubit.dart' as _i31;
import 'register_module.dart' as _i32; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i7.NetworkInfoImpl>(() => registerModule.networkInfoImpl());
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'BaseUrl');
  gh.lazySingleton<_i8.Dio>(() => registerModule.dio(
      get<String>(instanceName: 'BaseUrl'), get<_i6.LocalDataSource>()));
  gh.lazySingleton<_i9.ApiService>(() => _i9.ApiService(get<_i8.Dio>()));
  gh.lazySingleton<_i10.RemoteDataSource>(
      () => _i10.RemoteDataSource(get<_i9.ApiService>()));
  gh.lazySingleton<_i11.MyRepository>(() => _i12.MyRepositoryImpl(
      get<_i10.RemoteDataSource>(),
      get<_i6.LocalDataSource>(),
      get<_i7.NetworkInfoImpl>()));
  gh.lazySingleton<_i13.UpdateProfileUseCase>(
      () => _i13.UpdateProfileUseCase(myRepository: get<_i11.MyRepository>()));
  gh.lazySingleton<_i14.ValidateDataUseCase>(
      () => _i14.ValidateDataUseCase(myRepository: get<_i11.MyRepository>()));
  gh.lazySingleton<_i15.CheckLoginStatusUseCase>(() =>
      _i15.CheckLoginStatusUseCase(myRepository: get<_i11.MyRepository>()));
  gh.lazySingleton<_i16.DoLoginUseCase>(
      () => _i16.DoLoginUseCase(myRepository: get<_i11.MyRepository>()));
  gh.lazySingleton<_i17.DoLogoutUseCase>(
      () => _i17.DoLogoutUseCase(myRepository: get<_i11.MyRepository>()));
  gh.lazySingleton<_i18.GetHistoryAdminUseCase>(() =>
      _i18.GetHistoryAdminUseCase(myRepository: get<_i11.MyRepository>()));
  gh.lazySingleton<_i19.GetHistoryUserUseCase>(
      () => _i19.GetHistoryUserUseCase(myRepository: get<_i11.MyRepository>()));
  gh.lazySingleton<_i20.GetHomeAdminLabaRugi>(
      () => _i20.GetHomeAdminLabaRugi(myRepository: get<_i11.MyRepository>()));
  gh.lazySingleton<_i21.GetHomeAdminNeraca>(
      () => _i21.GetHomeAdminNeraca(myRepository: get<_i11.MyRepository>()));
  gh.lazySingleton<_i22.GetHomeAdminPerubahanModal>(() =>
      _i22.GetHomeAdminPerubahanModal(myRepository: get<_i11.MyRepository>()));
  gh.lazySingleton<_i23.GetHomeAdminSalesReports>(() =>
      _i23.GetHomeAdminSalesReports(myRepository: get<_i11.MyRepository>()));
  gh.lazySingleton<_i24.GetHomeAdminUseCase>(
      () => _i24.GetHomeAdminUseCase(myRepository: get<_i11.MyRepository>()));
  gh.lazySingleton<_i25.GetHomeUserUseCase>(
      () => _i25.GetHomeUserUseCase(myRepository: get<_i11.MyRepository>()));
  gh.lazySingleton<_i26.GetProfileUseCase>(
      () => _i26.GetProfileUseCase(myRepository: get<_i11.MyRepository>()));
  gh.lazySingleton<_i27.GetUserUseCase>(
      () => _i27.GetUserUseCase(myRepository: get<_i11.MyRepository>()));
  gh.factory<_i28.HistoryCubit>(() => _i28.HistoryCubit(
      get<_i18.GetHistoryAdminUseCase>(), get<_i19.GetHistoryUserUseCase>()));
  gh.factory<_i29.HomeCubit>(() => _i29.HomeCubit(
      get<_i24.GetHomeAdminUseCase>(),
      get<_i25.GetHomeUserUseCase>(),
      get<_i21.GetHomeAdminNeraca>(),
      get<_i20.GetHomeAdminLabaRugi>(),
      get<_i23.GetHomeAdminSalesReports>(),
      get<_i22.GetHomeAdminPerubahanModal>()));
  gh.factory<_i30.LoginCubit>(
      () => _i30.LoginCubit(get<_i16.DoLoginUseCase>()));
  gh.factory<_i31.ProfileCubit>(() => _i31.ProfileCubit(
      get<_i17.DoLogoutUseCase>(),
      get<_i27.GetUserUseCase>(),
      get<_i26.GetProfileUseCase>(),
      get<_i13.UpdateProfileUseCase>()));
  return get;
}

class _$RegisterModule extends _i32.RegisterModule {}
