import 'package:flutter/material.dart';
import 'package:koperasi/core/style/sizes.dart';
import 'package:koperasi/core/unions/result_state.dart';
import 'package:koperasi/domain/entities/home/sales_report.dart';
import 'package:koperasi/presentation/home/admin/widgets/report_sales/sales_card.dart';

class ReportSales extends StatelessWidget {
  final List<SalesReport> salesReports;
  final ResultState isUpdated;

  const ReportSales({
    Key? key,
    required this.salesReports,
    required this.isUpdated,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      color: Colors.white,
      padding: EdgeInsets.only(
        right: Sizes.width17,
        left: Sizes.width17,
        top: Sizes.width17,
      ),
      child: isUpdated.maybeWhen(
        initial: () => const SizedBox.shrink(),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        success: (data) => ListView.separated(
          itemCount: salesReports.length,
          separatorBuilder: (context, index) => SizedBox(
            height: Sizes.height9,
          ),
          itemBuilder: (context, position) {
            return SalesCard(
              salesReport: salesReports[position],
            );
          },
        ),
        orElse: () => null,
      ),
    );
  }
}
