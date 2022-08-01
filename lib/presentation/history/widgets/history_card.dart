import 'package:flutter/material.dart';

import '../../../../core/style/sizes.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({Key? key, this.dateTime, this.shopAddress, this.shopName, this.totalAmount}) : super(key: key);

  final String? dateTime;
  final String? shopName;
  final String? shopAddress;
  final String? totalAmount;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Container(
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dateTime!,
                  style: TextStyle(
                      fontSize: Sizes.sp12,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(height: Sizes.height8),
                Text(
                  shopName!,
                  style: TextStyle(
                      fontSize: Sizes.sp16,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(height: Sizes.height5),
                Text(
                  shopAddress!,
                  style: TextStyle(
                      fontSize: Sizes.sp12,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '',
                  style: TextStyle(
                      fontSize: Sizes.sp12,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(height: Sizes.height8),
                Text(
                  'Total Transaksi',
                  style: TextStyle(
                      fontSize: Sizes.sp12,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(height: Sizes.height5),
                Text(
                  totalAmount!,
                  style: TextStyle(
                      fontSize: Sizes.sp16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            )
          ],
        ),
      ),
    );

  }
}
