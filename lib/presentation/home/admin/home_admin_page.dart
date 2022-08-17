import 'package:flutter/material.dart';
import 'package:koperasi/core/style/color_palettes.dart';
import 'package:koperasi/presentation/home/admin/admin_app_bar.dart';

import '../../../core/style/sizes.dart';

class HomeAdminPage extends StatelessWidget {
  const HomeAdminPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AdminAppBar(),
          SizedBox(height: Sizes.height12),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Sizes.width19, vertical: Sizes.height10),
            child: Text(
              'Report',
              style: TextStyle(
                color: ColorPalettes.darkBlue,
                fontWeight: FontWeight.w500,
                fontSize: Sizes.sp24,
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: 150,
          )
        ],
      ),
    );
  }
}
