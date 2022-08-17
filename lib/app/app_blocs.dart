import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:koperasi/presentation/profile/cubit/profile_cubit.dart';

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
  ];
}
