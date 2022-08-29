import 'package:flutter/material.dart';
import 'package:koperasi/core/style/color_palettes.dart';
import 'package:koperasi/core/style/sizes.dart';
import 'package:koperasi/core/utils/utils.dart';
import 'package:koperasi/domain/entities/home/branch.dart';

class BranchCard extends StatelessWidget {
  final Branch branch;

  const BranchCard({
    Key? key,
    required this.branch,
  }) : super(key: key);

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
                branch.martName ?? '-',
                style: TextStyle(
                  color: ColorPalettes.blackText,
                  fontSize: Sizes.sp16,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                formatToIdr(branch.total),
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
