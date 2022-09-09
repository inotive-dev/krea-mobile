import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:koperasi/core/const/constants.dart';
import 'package:koperasi/core/style/color_palettes.dart';
import 'package:koperasi/di/injection_container.dart';
import 'package:koperasi/domain/entities/home/branches_data.dart';
import 'package:koperasi/domain/repositories/my_repository.dart';
import 'package:koperasi/presentation/home/admin/widgets/admin_app_bar.dart';
import 'package:koperasi/presentation/home/admin/widgets/branch/page_control.dart' as branch;
import 'package:koperasi/presentation/home/admin/widgets/report_sales/page_control.dart' as sales;
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

  RxBool _isShowTabPageControl = false.obs;

  @override
  void initState() {
    super.initState();
    tabBranchController = TabController(length: 3, vsync: this);
    tabBranchController.addListener(_handleTabSelection);

    _myRepository = getIt.get<MyRepository>();
    final martId = _myRepository.getUser()?.martId ?? 0;

    context.read<HomeCubit>().updateMartId(martId);
    context.read<HomeCubit>().updateType(Constants.typesNeraca[0]);

    context.read<HomeCubit>().getHomeAdminData(1);
    context.read<HomeCubit>().getHomeDataNeraca(1);
    context.read<HomeCubit>().getHomeDataPerubahanModal(1);
    context.read<HomeCubit>().getHomeAdminSalesReports(1);
    _isShowTabPageControl.value = true;
  }

  @override
  void dispose() {
    tabBranchController.dispose();
    super.dispose();
  }

  _handleTabSelection() {
    final index = tabBranchController.index;
    if (tabBranchController.indexIsChanging) {
      switch (index) {
        case 0:
          _isShowTabPageControl.value = true;
          context.read<HomeCubit>().updateType(Constants.typesNeraca[0]);
          context.read<HomeCubit>().getHomeDataNeraca(1);
          break;
        case 1:
          _isShowTabPageControl.value = true;
          context.read<HomeCubit>().updateType(Constants.typesLabaRugi[0]);
          context.read<HomeCubit>().getHomeDataLabaRugi(1);
          break;
        case 2:
          _isShowTabPageControl.value = false;
          context.read<HomeCubit>().getHomeDataPerubahanModal(1);
          break;
        default:
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Sizes.height160),
        child: const AdminAppBar(),
      ),
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
            ObxValue<RxBool>((rx) {
              if (rx.value) {
                return branch.PageControl(
                  activeTab: () => tabBranchController.index,
                );
              } else {
                return const SizedBox.shrink();
              }
            }, _isShowTabPageControl),
            SizedBox(height: Sizes.height41),
            const SectionLabel(text: 'Laporan Penjualan'),
            SizedBox(height: Sizes.height10),
            BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                return state.getHomeAdminSalesReportState.when(
                  initial: () => const SizedBox.shrink(),
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  success: (data) => Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ReportSales(
                        salesReports: state.salesReportData.data ?? [],
                        isUpdated: state.updateSalesReportState,
                      ),
                    ],
                  ),
                  error: (error) => Center(
                    child: Text(error.toString()),
                  ),
                );
              },
            ),
            const sales.PageControl(),
            SizedBox(height: Sizes.height80),
          ],
        ),
      ),
    );
  }
}
