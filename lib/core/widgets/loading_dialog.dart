import 'package:flutter/material.dart';
import 'package:koperasi/core/const/strings.dart';
import 'package:koperasi/core/style/color_palettes.dart';

import '../style/sizes.dart';

class LoadingDialog extends StatelessWidget {
  const LoadingDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(
        horizontal: Sizes.width24,
        vertical: Sizes.height24,
      ),
      child: Container(
        padding: EdgeInsets.all(Sizes.height16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Sizes.radius10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: Sizes.height5,
            ),
            SizedBox(
              height: Sizes.height30,
              width: Sizes.height30,
              child: CircularProgressIndicator(
                strokeWidth: Sizes.height3,
              ),
            ),
            SizedBox(
              height: Sizes.height16,
            ),
            Text(
              Strings.loading,
              style: TextStyle(
                color: ColorPalettes.primary,
                fontSize: Sizes.sp18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
