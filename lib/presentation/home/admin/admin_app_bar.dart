import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/style/sizes.dart';

class AdminAppBar extends StatelessWidget {
  const AdminAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(Sizes.width8),
              bottomRight: Radius.circular(Sizes.width8),
            ),
            child: SvgPicture.asset(
              'assets/images/intersect.svg',
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            left: Sizes.width26,
            right: Sizes.width26,
            bottom: Sizes.height19,
            top: Sizes.height60,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: const AssetImage('assets/images/dummy_avatar.png'),
                    radius: Sizes.height30,
                  ),
                  SizedBox(
                    width: Sizes.width12,
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Setyabudi",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: Sizes.sp18),
                        ),
                        SizedBox(height: Sizes.height5),
                        Text(
                          '16271818',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: Sizes.sp17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: Sizes.width2),
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Saldo Anda",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: Sizes.sp17,
                          ),
                        ),
                        SizedBox(height: Sizes.height2),
                        Text(
                          '200.000',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: Sizes.sp22,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Last Updated 09.00\n22 Februari 2022',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: Sizes.sp9,
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
