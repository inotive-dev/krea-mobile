import 'package:flutter/material.dart';
import 'package:koperasi/core/style/color_palettes.dart';
import 'package:koperasi/core/style/sizes.dart';

class BranchCard extends StatelessWidget {
  const BranchCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.width24,
        vertical: Sizes.height18,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Nama Cabang',
                style: TextStyle(
                  color: ColorPalettes.blackText,
                  fontSize: Sizes.sp12,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                'Total',
                style: TextStyle(
                  color: ColorPalettes.blackText,
                  fontSize: Sizes.sp12,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.end,
              )
            ],
          ),
          SizedBox(height: Sizes.height8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Lestari',
                style: TextStyle(
                  color: ColorPalettes.blackText,
                  fontSize: Sizes.sp16,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                'Rp. 50.000.000',
                style: TextStyle(
                  color: ColorPalettes.blackText,
                  fontSize: Sizes.sp16,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.end,
              )
            ],
          )
        ],
      ),
    );
  }
}
