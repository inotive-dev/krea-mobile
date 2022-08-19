import 'package:flutter/material.dart';
import 'package:koperasi/core/style/color_palettes.dart';
import 'package:koperasi/core/style/sizes.dart';

class PageControl extends StatelessWidget {
  const PageControl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              '1-5 of 13',
              style: TextStyle(
                color: ColorPalettes.blackText,
                fontSize: Sizes.sp13,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          SizedBox(width: Sizes.width24),
          IconButton(
            onPressed: () {
              print('LEFT');
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: Sizes.height14,
            ),
          ),
          IconButton(
            onPressed: () {
              print('RIGHT');
            },
            icon: Icon(
              Icons.arrow_forward_ios,
              size: Sizes.height14,
            ),
          ),
          SizedBox(width: Sizes.width10),
        ],
      ),
    );
  }
}
