import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:koperasi/core/style/color_palettes.dart';
import 'package:koperasi/core/style/sizes.dart';
import 'package:koperasi/core/utils/get_util.dart';

class SuccessUpdateDialog extends StatelessWidget {
  final String text;

  const SuccessUpdateDialog({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: Sizes.width32,
          horizontal: Sizes.height32,
        ),
        child: Column(
          children: [
            SizedBox(
              height: Sizes.height90,
            ),
            SvgPicture.asset(
              'assets/images/done.svg',
              width: Sizes.width203,
            ),
            SizedBox(
              height: Sizes.height20,
            ),
            Text(
              text,
              style: TextStyle(
                color: ColorPalettes.blackText,
                fontSize: Sizes.sp18,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: Sizes.height36,
            ),
            ElevatedButton(
              onPressed: () => GetUtil.dismissDialog(),
              child: Text(
                'Oke',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: Sizes.sp16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, Sizes.height46),
                primary: ColorPalettes.darkBlue,
                elevation: 0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
