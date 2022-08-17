import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:koperasi/app/app_blocs.dart';
import 'package:koperasi/app/app_pages.dart';
import 'package:koperasi/core/const/strings.dart';
import 'package:koperasi/di/injection_container.dart';
import 'package:koperasi/presentation/auth/login_page.dart';
import 'package:koperasi/presentation/home/home_page.dart';

import '../core/style/app_theme.dart';
import '../data/local/local_data_source.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp],
    );

    final _initialRoute = getIt.get<LocalDataSource>().getToken() == null ? LoginPage.routeName : HomePage.routeName;

    return MultiBlocProvider(
      providers: AppBlocs.items,
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: Strings.appName,
            theme: AppTheme.lightTheme,
            initialRoute: _initialRoute,
            getPages: AppPages.routes,
          );
        },
      ),
    );
  }
}
