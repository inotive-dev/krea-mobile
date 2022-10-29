import 'package:flutter/material.dart';
import 'package:koperasi/core/style/color_palettes.dart';
import 'package:koperasi/core/style/sizes.dart';
import 'package:koperasi/core/utils/date_util.dart';
import 'package:koperasi/core/utils/utils.dart';
import 'package:koperasi/data/remote/response/home/sales_report/sales_response.dart';
import 'package:koperasi/presentation/history/widget/history_detail_page.dart';

class HistoryCard extends StatelessWidget {
  final SalesResponse data;

  const HistoryCard({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorPalettes.greyBackground,
      child: InkWell(
        onTap: () => Navigator.pushNamed(
          context,
          HistoryDetailPage.routeName,
          arguments: data.id,
        ),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.only(top: 9, bottom: 9, right: 16, left: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                DateUtil.dateTimeToFormattedDate(
                  data.createdAt,
                  datePattern: "dd-MM-yyyy hh:mm",
                ),
                style: TextStyle(
                  color: ColorPalettes.textGray,
                  fontWeight: FontWeight.w400,
                  fontSize: Sizes.sp12,
                ),
              ),
              SizedBox(height: Sizes.height8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.mart?.name ?? '-',
                          style: TextStyle(
                            color: ColorPalettes.textGray,
                            fontWeight: FontWeight.w400,
                            fontSize: Sizes.sp16,
                          ),
                        ),
                        SizedBox(height: Sizes.height7),
                        Text(
                          data.mart?.address ?? '-',
                          style: TextStyle(
                            color: ColorPalettes.textGray,
                            fontWeight: FontWeight.w400,
                            fontSize: Sizes.sp12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Transaksi',
                        style: TextStyle(
                          color: ColorPalettes.textGray,
                          fontWeight: FontWeight.w400,
                          fontSize: Sizes.sp12,
                        ),
                      ),
                      SizedBox(height: Sizes.height7),
                      Text(
                        formatToIdr(data.grandTotal),
                        style: TextStyle(
                          color: ColorPalettes.textGray,
                          fontWeight: FontWeight.w600,
                          fontSize: Sizes.sp16,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
