import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:koperasi/core/style/color_palettes.dart';
import 'package:koperasi/di/injection_container.dart';
import 'package:koperasi/domain/repositories/my_repository.dart';
import 'package:koperasi/presentation/home/admin/widgets/admin_app_bar.dart';
import 'package:koperasi/presentation/home/admin/widgets/branch/page_control.dart';
import 'package:koperasi/presentation/home/admin/widgets/report_sales/report_sales.dart';
import 'package:koperasi/presentation/home/admin/widgets/section_label.dart';
import 'package:koperasi/presentation/home/admin/widgets/branch/tab_branches.dart';
import 'package:koperasi/presentation/home/admin/widgets/tab_report.dart';
import 'package:koperasi/presentation/home/cubit/home_cubit.dart';

import '../../../core/style/sizes.dart';

class HomeAdminPage extends StatefulWidget {
  const HomeAdminPage({Key? key}) : super(key: key);

  @override
  State<HomeAdminPage> createState() => _HomeAdminPageState();
}

class _HomeAdminPageState extends State<HomeAdminPage> with SingleTickerProviderStateMixin {
  late TabController tabBranchController;
  late MyRepository _myRepository;

  @override
  void initState() {
    tabBranchController = TabController(length: 3, vsync: this);
    super.initState();

    _myRepository = getIt.get<MyRepository>();
    final martId = _myRepository.getUser()?.martId ?? 0;
    context.read<HomeCubit>().updateMartId(martId);
    context.read<HomeCubit>().getHomeAdminData(1);
  }

  @override
  void dispose() {
    tabBranchController.dispose();
    super.dispose();
  }

  _updateSalesReportData(int page) {
    context.read<HomeCubit>().updateSalesReportData(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: Sizes.width68,
        height: Sizes.width68,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizes.width34),
          color: Colors.white,
        ),
        padding: EdgeInsets.all(Sizes.width8),
        child: RawMaterialButton(
          fillColor: ColorPalettes.darkBlue,
          elevation: 0,
          shape: const CircleBorder(),
          onPressed: () {},
          child: SvgPicture.asset(
            'assets/icons/icQr.svg',
            color: Colors.white,
            width: Sizes.width24,
            height: Sizes.width24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AdminAppBar(),
            SizedBox(height: Sizes.height12),
            const SectionLabel(text: 'Report'),
            BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                return state.getHomeAdminResultState.when(
                  initial: () => const SizedBox.shrink(),
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  success: (data) => TabReport(data: state.homeData),
                  error: (error) => Center(
                    child: Text(error.toString()),
                  ),
                );
              },
            ),
            SizedBox(height: Sizes.height25),
            TabBranches(tabController: tabBranchController),
            PageControl(
              onUpdate: (value) {},
            ),
            SizedBox(height: Sizes.height41),
            const SectionLabel(text: 'Laporan Penjualan'),
            SizedBox(height: Sizes.height10),
            BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                return state.getHomeAdminResultState.when(
                  initial: () => const SizedBox.shrink(),
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  success: (data) => Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ReportSales(
                        salesReports: state.homeData.laporanPenjualan?.data ?? [],
                        isUpdated: state.updateSalesReportState,
                      ),
                      PageControl(control: state.homeData.laporanPenjualan, onUpdate: _updateSalesReportData),
                    ],
                  ),
                  error: (error) => Center(
                    child: Text(error.toString()),
                  ),
                );
              },
            ),
            SizedBox(height: Sizes.height80),
          ],
        ),
      ),
    );
  }
}
