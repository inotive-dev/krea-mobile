import 'package:flutter/material.dart';
import 'package:koperasi/core/style/color_palettes.dart';
import 'package:koperasi/core/style/sizes.dart';

class RowText extends StatelessWidget {
  final String title;
  final String value;
  const RowText({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Sizes.height7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: ColorPalettes.blackText,
              fontSize: Sizes.sp16,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.start,
          ),
          Text(
            value,
            style: TextStyle(
              color: ColorPalettes.blackText,
              fontSize: Sizes.sp16,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.end,
          )
        ],
      ),
    );
  }
}
