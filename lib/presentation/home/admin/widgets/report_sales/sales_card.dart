import 'package:flutter/material.dart';
import 'package:koperasi/core/style/color_palettes.dart';
import 'package:koperasi/core/style/sizes.dart';
import 'package:koperasi/core/utils/date_util.dart';
import 'package:koperasi/core/utils/utils.dart';
import 'package:koperasi/domain/entities/home/sales_report.dart';

class SalesCard extends StatelessWidget {
  final SalesReport salesReport;

  const SalesCard({
    Key? key,
    required this.salesReport,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: Sizes.width17,
            vertical: Sizes.height10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(Sizes.height8),
              topLeft: Radius.circular(Sizes.height8),
            ),
            color: ColorPalettes.bgBlueHeader,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                DateUtil.dateTimeToFormattedDate(
                  salesReport.createdAt,
                  datePattern: "dd-MM-yyyy",
                ),
                style: TextStyle(
                  fontSize: Sizes.sp10,
                  color: ColorPalettes.darkBlue,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'No faktur: ${salesReport.id}',
                style: TextStyle(
                  fontSize: Sizes.sp10,
                  color: ColorPalettes.darkBlue,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(Sizes.height8),
              bottomLeft: Radius.circular(Sizes.height8),
            ),
            color: ColorPalettes.greyContainer,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: Sizes.width17,
            vertical: Sizes.height10,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    salesReport.user?.name ?? '-',
                    style: TextStyle(
                      fontSize: Sizes.sp16,
                      color: ColorPalettes.blackText,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Jumlah',
                    style: TextStyle(
                      fontSize: Sizes.sp12,
                      color: ColorPalettes.blackText,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: Sizes.height8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    salesReport.user?.memberNumber ?? '-',
                    style: TextStyle(
                      fontSize: Sizes.sp12,
                      color: ColorPalettes.blackText,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    formatToIdr(salesReport.grandTotal),
                    style: TextStyle(
                      fontSize: Sizes.sp16,
                      color: ColorPalettes.blackText,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
