import 'package:flutter/material.dart';
import 'package:koperasi/core/style/sizes.dart';

import 'color_palettes.dart';

class CustomTextStyle {
  CustomTextStyle._();

  static TextStyle hintFormStyle = TextStyle(
    color: ColorPalettes.greyText,
    fontSize: Sizes.sp16,
  );

  static TextStyle profileNameStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontSize: Sizes.sp16,
  );

  static TextStyle textFormStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: Sizes.sp14,
    color: ColorPalettes.textNeutral,
  );
}
