import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_palettes.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    fontFamily: 'Inter',
    brightness: Brightness.light,
    primaryColor: ColorPalettes.primary,
    dividerColor: ColorPalettes.divider,
    primarySwatch: ColorPalettes.primarySwatch,
    scaffoldBackgroundColor: ColorPalettes.greyBackground,
    textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
  );
}
