import 'package:flutter/material.dart';

import '../../../../core/style/color_palettes.dart';
import '../../../../core/style/sizes.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String quantity;

  const ProductCard({
    Key? key,
    required this.name,
    required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            name,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: ColorPalettes.blackText,
              fontSize: Sizes.sp16,
            ),
          ),
        ),
        Expanded(
          child: Text(
            quantity,
            textAlign: TextAlign.right,
            style: TextStyle(
              color: ColorPalettes.blackText,
              fontSize: Sizes.sp16,
            ),
          ),
        )
      ],
    );
  }
}
