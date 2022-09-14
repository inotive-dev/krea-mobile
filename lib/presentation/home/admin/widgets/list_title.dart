import 'package:flutter/material.dart';

import '../../../../core/style/color_palettes.dart';
import '../../../../core/style/sizes.dart';

class ListTitle extends StatelessWidget {
  const ListTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            'Produk',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: ColorPalettes.greyText,
              fontSize: Sizes.sp16,
            ),
          ),
        ),
        Expanded(
          child: Text(
            'Kuantitas',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: ColorPalettes.greyText,
              fontSize: Sizes.sp16,
            ),
          ),
        )
      ],
    );
  }
}
