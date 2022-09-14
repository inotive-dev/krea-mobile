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
import '../data/repositories/my_repository_impl.dart' as _i10;
import '../domain/usecases/check_login_status_usecase.dart' as _i16;
import '../domain/usecases/do_login_usecase.dart' as _i17;
import '../domain/usecases/do_logout_usecase.dart' as _i18;
import '../domain/usecases/get_history_admin.dart' as _i19;
import '../domain/usecases/get_history_detail.dart' as _i20;
import '../domain/usecases/get_history_user.dart' as _i21;
import '../domain/usecases/get_home_admin_laba_rugi_usecase.dart' as _i22;
import '../domain/usecases/get_home_admin_neraca_usecase.dart' as _i23;
import '../domain/usecases/get_home_admin_perubahan_modal_usecase.dart' as _i24;
import '../domain/usecases/get_home_admin_sales_reports.dart' as _i25;
import '../domain/usecases/get_home_admin_usecase.dart' as _i26;
import '../domain/usecases/get_home_user_usecase.dart' as _i27;
import '../domain/usecases/get_profile.dart' as _i28;
import '../domain/usecases/get_user_usecase.dart' as _i29;
import '../domain/usecases/send_email_reset_password_usecase.dart' as _i11;
import '../domain/usecases/send_otp_reset_password_usecase%20copy.dart' as _i13;
import '../domain/usecases/send_otp_reset_password_usecase.dart' as _i12;
import '../domain/usecases/update_profile.dart' as _i14;
import '../domain/usecases/validate_data_usecase.dart' as _i15;
import '../presentation/auth/cubit/login_cubit.dart' as _i32;
import '../presentation/history/cubit/history_cubit.dart' as _i30;
import '../presentation/home/cubit/home_cubit.dart' as _i31;
import '../presentation/profile/cubit/profile_cubit.dart' as _i33;
import '../presentation/reset_password/cubit/reset_password_cubit.dart' as _i34;
import 'register_module.dart' as _i35; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i10.MyRepositoryImpl>(() => _i10.MyRepositoryImpl(
      get<_i9.RemoteDataSource>(), get<_i6.LocalDataSource>()));
  gh.lazySingleton<_i11.SendEmailResetPasswordUseCase>(() =>
      _i11.SendEmailResetPasswordUseCase(
          myRepository: get<_i10.MyRepositoryImpl>()));
  gh.lazySingleton<_i12.SendOTPResetPasswordUseCase>(() =>
      _i12.SendOTPResetPasswordUseCase(
          myRepository: get<_i10.MyRepositoryImpl>()));
  gh.lazySingleton<_i13.SendResetPasswordUseCase>(() =>
      _i13.SendResetPasswordUseCase(
          myRepository: get<_i10.MyRepositoryImpl>()));
  gh.lazySingleton<_i14.UpdateProfileUseCase>(() =>
      _i14.UpdateProfileUseCase(myRepository: get<_i10.MyRepositoryImpl>()));
  gh.lazySingleton<_i15.ValidateDataUseCase>(() =>
      _i15.ValidateDataUseCase(myRepository: get<_i10.MyRepositoryImpl>()));
  gh.lazySingleton<_i16.CheckLoginStatusUseCase>(() =>
      _i16.CheckLoginStatusUseCase(myRepository: get<_i10.MyRepositoryImpl>()));
  gh.lazySingleton<_i17.DoLoginUseCase>(
      () => _i17.DoLoginUseCase(myRepository: get<_i10.MyRepositoryImpl>()));
  gh.lazySingleton<_i18.DoLogoutUseCase>(
      () => _i18.DoLogoutUseCase(myRepository: get<_i10.MyRepositoryImpl>()));
  gh.lazySingleton<_i19.GetHistoryAdminUseCase>(() =>
      _i19.GetHistoryAdminUseCase(myRepository: get<_i10.MyRepositoryImpl>()));
  gh.lazySingleton<_i20.GetHistoryDetailUseCase>(() =>
      _i20.GetHistoryDetailUseCase(myRepository: get<_i10.MyRepositoryImpl>()));
  gh.lazySingleton<_i21.GetHistoryUserUseCase>(() =>
      _i21.GetHistoryUserUseCase(myRepository: get<_i10.MyRepositoryImpl>()));
  gh.lazySingleton<_i22.GetHomeAdminLabaRugi>(() =>
      _i22.GetHomeAdminLabaRugi(myRepository: get<_i10.MyRepositoryImpl>()));
  gh.lazySingleton<_i23.GetHomeAdminNeraca>(() =>
      _i23.GetHomeAdminNeraca(myRepository: get<_i10.MyRepositoryImpl>()));
  gh.lazySingleton<_i24.GetHomeAdminPerubahanModal>(() =>
      _i24.GetHomeAdminPerubahanModal(
          myRepository: get<_i10.MyRepositoryImpl>()));
  gh.lazySingleton<_i25.GetHomeAdminSalesReports>(() =>
      _i25.GetHomeAdminSalesReports(
          myRepository: get<_i10.MyRepositoryImpl>()));
  gh.lazySingleton<_i26.GetHomeAdminUseCase>(() =>
      _i26.GetHomeAdminUseCase(myRepository: get<_i10.MyRepositoryImpl>()));
  gh.lazySingleton<_i27.GetHomeUserUseCase>(() =>
      _i27.GetHomeUserUseCase(myRepository: get<_i10.MyRepositoryImpl>()));
  gh.lazySingleton<_i28.GetProfileUseCase>(
      () => _i28.GetProfileUseCase(myRepository: get<_i10.MyRepositoryImpl>()));
  gh.lazySingleton<_i29.GetUserUseCase>(
      () => _i29.GetUserUseCase(myRepository: get<_i10.MyRepositoryImpl>()));
  gh.factory<_i30.HistoryCubit>(() => _i30.HistoryCubit(
      get<_i19.GetHistoryAdminUseCase>(),
      get<_i21.GetHistoryUserUseCase>(),
      get<_i20.GetHistoryDetailUseCase>()));
  gh.factory<_i31.HomeCubit>(() => _i31.HomeCubit(
      get<_i26.GetHomeAdminUseCase>(),
      get<_i27.GetHomeUserUseCase>(),
      get<_i23.GetHomeAdminNeraca>(),
      get<_i22.GetHomeAdminLabaRugi>(),
      get<_i25.GetHomeAdminSalesReports>(),
      get<_i24.GetHomeAdminPerubahanModal>()));
  gh.factory<_i32.LoginCubit>(
      () => _i32.LoginCubit(get<_i17.DoLoginUseCase>()));
  gh.factory<_i33.ProfileCubit>(() => _i33.ProfileCubit(
      get<_i18.DoLogoutUseCase>(),
      get<_i29.GetUserUseCase>(),
      get<_i28.GetProfileUseCase>(),
      get<_i14.UpdateProfileUseCase>()));
  gh.factory<_i34.ResetPasswordCubit>(() => _i34.ResetPasswordCubit(
      get<_i11.SendEmailResetPasswordUseCase>(),
      get<_i12.SendOTPResetPasswordUseCase>(),
      get<_i13.SendResetPasswordUseCase>()));
  return get;
}

class _$RegisterModule extends _i35.RegisterModule {}
