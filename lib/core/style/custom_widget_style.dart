import 'package:flutter/material.dart';
import 'package:koperasi/core/style/sizes.dart';

import 'color_palettes.dart';

class CustomWidgetStyle {
  CustomWidgetStyle._();

  static InputDecoration formInputDecoration = InputDecoration(
    labelStyle: const TextStyle(color: ColorPalettes.textNeutral),
    filled: true,
    isDense: true,
    fillColor: ColorPalettes.bgGreyForm,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: const BorderSide(
        color: ColorPalettes.greyBorderColor,
        width: 1,
      ),
    ),
    contentPadding: EdgeInsets.symmetric(
      horizontal: Sizes.height18,
      vertical: Sizes.height15,
    ),
  );
}
