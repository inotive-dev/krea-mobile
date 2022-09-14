import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:koperasi/presentation/history/cubit/history_cubit.dart';
import 'package:koperasi/presentation/home/cubit/home_cubit.dart';
import 'package:koperasi/presentation/profile/cubit/profile_cubit.dart';
import 'package:koperasi/presentation/reset_password/cubit/reset_password_cubit.dart';

import '../di/injection_container.dart';
import '../presentation/auth/cubit/login_cubit.dart';

class AppBlocs {
  const AppBlocs._();

  static final List<BlocProvider> items = [
    BlocProvider<LoginCubit>(
      create: (context) => getIt.get(),
    ),
    BlocProvider<ProfileCubit>(
      create: (context) => getIt.get(),
    ),
    BlocProvider<HomeCubit>(
      create: (context) => getIt.get(),
    ),
    BlocProvider<HistoryCubit>(
      create: (context) => getIt.get(),
    ),
    BlocProvider<ResetPasswordCubit>(
      create: (context) => getIt.get(),
    ),
  ];
}
