import 'package:flutter/material.dart';

import '../../../../core/style/color_palettes.dart';
import '../../../../core/style/sizes.dart';

class SectionLabel extends StatelessWidget {
  final String text;

  const SectionLabel({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.width19,
        vertical: Sizes.height10,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: ColorPalettes.darkBlue,
          fontWeight: FontWeight.w500,
          fontSize: Sizes.sp24,
        ),
      ),
    );
  }
}
