import 'package:flutter/material.dart';

import '../../core/const/strings.dart';
import '../../core/style/custom_text_style.dart';
import '../../core/style/sizes.dart';
import '../../core/widgets/app_bar_container.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
          child: AppBarContainer(
            height: Sizes.height131,
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/dummy_avatar.png'),
              radius: 30,
            ),
            title: Text(
              'Setyabudi',
              style: CustomTextStyle.profileNameStyle,
            ),
            subtitle: Text(
              '16271818',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: Sizes.sp14),
            ),
            trailing: Padding(
              padding: EdgeInsets.all(Sizes.width7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    Strings.saldoAnda,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: Sizes.sp14),
                  ),
                  Text(
                    '200.000',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontSize: Sizes.sp17),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
