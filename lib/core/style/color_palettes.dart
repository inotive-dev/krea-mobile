import 'package:flutter/material.dart';

class ColorPalettes {
  const ColorPalettes._();

  static const _primaryValue = 0xff00BCF0;

  static const primary = Color(_primaryValue);
  static const black = Colors.black;
  static const lightGrey = bgNavigationMenu;
  static const divider = Color(0xffECECEC);
  static const divider2 = Color(0xffB5B5B5);
  static const bgGrey = Color(0xffF6F6F6);
  static const bgGrey2 = Color(0xffF8F8F8);
  static const bgGrey3 = Color(0xffB3B3B3);
  static const bgGrey4 = Color(0xffF7F7F7);
  static const bgGrey5 = Color(0xffF9F9F9);
  static const greyForm = Color(0xffE8E8E8);
  static const greyText = Color(0xffBDBDBD);

  static const greyAppBar = Color(0xffF1F2F3);
  static const greyBackground = Color(0xffF5F5F5);

  static const darkText = Color(0xffA1A1A1);
  static const blackText = Color(0xff4C4C4C);
  static const textNeutral = Color(0xff838AA3);

  static const greyUnselectedTab = Color(0xff9E9E9E);

  static const bgBlueAppBar = Color(0xff54C5ED);
  static const darkBlue = Color(0xff009CC7);
  static const bgBlueHeader = Color(0xffE1F7FF);

  static const bgBlueCard = Color(0xff2AAEDE);
  static const bgBlueCardGradient = Color(0xff299BC4);
  static const bgBlueCardWave = Color(0xff2AA1CD);

  static Color bgBlueAppBar1 = const Color(0xff54C5ED).withOpacity(0.5);
  static Color bgBlueAppBar2 = const Color(0xff54C5ED).withOpacity(1);

  static const bgNavigationMenu = Color(0xffF8F4F5);
  static const bgGreyForm = Color(0xffFCFCFC);
  static const greyBorderColor = Color(0xffE0E0E0);
  static const greyForm2 = Color(0xffEDEDED);
  static Color greyText2 = const Color(0xff404040).withOpacity(0.6);
  static Color greyText3 = const Color(0xff414141);
  static Color greyText4 = const Color(0xff9D9D9D);
  static Color greyText5 = const Color(0xff797979);
  static Color greyText6 = const Color(0xff575757);
  static const greyDark100 = Color(0xff424242);
  static Color grey75 = greyDark100.withOpacity(0.75);
  static Color grey25 = greyDark100.withOpacity(0.25);
  static const Color greyContainer = Color(0xffFAFAFA);
  static Color blackShadow = Colors.black.withOpacity(0.25);
  static Color shadowCard = const Color(0xff2B2B2B).withOpacity(0.25);

  static const primarySwatch = MaterialColor(
    _primaryValue,
    <int, Color>{
      50: Color(_primaryValue),
      100: Color(_primaryValue),
      200: Color(_primaryValue),
      300: Color(_primaryValue),
      400: Color(_primaryValue),
      500: Color(_primaryValue),
      600: Color(_primaryValue),
      700: Color(_primaryValue),
      800: Color(_primaryValue),
      900: Color(_primaryValue),
    },
  );
}
