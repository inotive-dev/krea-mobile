import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:koperasi/core/const/constants.dart';
import 'package:koperasi/core/extensions/snackbar_ext.dart';
import 'package:koperasi/core/style/color_palettes.dart';
import 'package:koperasi/core/unions/failure.dart';
import 'package:koperasi/core/utils/permission_helper.dart';
import 'package:koperasi/data/local/entities/history/sales_response_entity.dart';
import 'package:koperasi/data/local/local_data_source.dart';
import 'package:koperasi/data/repositories/my_repository_impl.dart';
import 'package:koperasi/di/injection_container.dart';
import 'package:koperasi/presentation/home/admin/widgets/admin_app_bar.dart';
import 'package:koperasi/presentation/home/admin/widgets/branch/page_control.dart' as branch;
import 'package:koperasi/presentation/home/admin/widgets/report_sales/page_control.dart' as sales;
import 'package:koperasi/presentation/home/admin/widgets/report_sales/report_sales.dart';
import 'package:koperasi/presentation/home/admin/widgets/section_label.dart';
import 'package:koperasi/presentation/home/admin/widgets/branch/tab_branches.dart';
import 'package:koperasi/presentation/home/admin/widgets/tab_report.dart';
import 'package:koperasi/presentation/home/cubit/home_cubit.dart';
import 'package:koperasi/presentation/home/widgets/scan_qr/scan_qr_page.dart';

import '../../../core/style/sizes.dart';

class HomeAdminPage extends StatefulWidget {
  const HomeAdminPage({Key? key}) : super(key: key);

  @override
  State<HomeAdminPage> createState() => _HomeAdminPageState();
}

class _HomeAdminPageState extends State<HomeAdminPage> with TickerProviderStateMixin {
  late TabController tabBranchController;
  late MyRepositoryImpl _myRepository;

  RxBool isShowTabPageControl = false.obs;

  @override
  void initState() {
    super.initState();

    _homeAdminInitial();
    tabBranchController = TabController(length: 3, vsync: this);
    tabBranchController.addListener(_handleTabSelection);
    isShowTabPageControl.value = true;
  }

  @override
  void dispose() {
    tabBranchController.dispose();
    super.dispose();
  }

  Future<void> _homeAdminInitial() async {
    _myRepository = getIt.get<MyRepositoryImpl>();
    final martId = _myRepository.getUser()?.martId ?? 0;

    context.read<HomeCubit>().updateMartId(martId);
    context.read<HomeCubit>().updateType(Constants.typesNeraca[0]);

    context.read<HomeCubit>().getHomeAdminData(1);
    context.read<HomeCubit>().getHomeDataNeraca(1);
    context.read<HomeCubit>().getHomeDataPerubahanModal(1);
    context.read<HomeCubit>().getHomeAdminSalesReports(1);
  }

  _handleTabSelection() {
    final index = tabBranchController.index;
    if (tabBranchController.indexIsChanging || tabBranchController.index != tabBranchController.previousIndex) {
      switch (index) {
        case 0:
          isShowTabPageControl.value = true;
          context.read<HomeCubit>().updateType(Constants.typesNeraca[0]);
          context.read<HomeCubit>().getHomeDataNeraca(1);
          break;
        case 1:
          isShowTabPageControl.value = true;
          context.read<HomeCubit>().updateType(Constants.typesLabaRugi[0]);
          context.read<HomeCubit>().getHomeDataLabaRugi(1);
          break;
        case 2:
          isShowTabPageControl.value = false;
          context.read<HomeCubit>().getHomeDataPerubahanModal(1);
          break;
        default:
      }
    }
  }

  void _openQRCode() async {
    await PermissionHelper.requestPermissionCamera(
      onGranted: () async {
        final result = await Navigator.pushNamed(
          context,
          ScanQRPage.routeName,
        );

        if (result != null || result != '') {
          final datajson = jsonDecode(result.toString());

          try {
            final neraca = datajson['neraca'];
            final laba = datajson['laba'];
            final modal = datajson['modal'];

            if (neraca != null) {
              context.read<HomeCubit>().getQRNeraca(neraca);
            } else if (laba != null) {
              context.read<HomeCubit>().getQRLabaRugi(laba);
            } else if (modal != null) {
              context.read<HomeCubit>().getQRPerubahanModal(modal);
            }
            // final hist = getIt.get<LocalDataSource>().getHistoryAdmin();
            // final List<Map<String, dynamic>> listHist = [];
            // for (SalesResponseEntity element in hist?.lastMonthHistory ?? []) {
            //   listHist.add(element.toJson());
            // }
            // for (SalesResponseEntity element in hist?.thisWeekHistory ?? []) {
            //   listHist.add(element.toJson());
            // }

            // context.read<HomeCubit>().validateDataAdmin(result.toString(), listHist);
          } catch (e) {
            print('ADUH ERROR $e');
          }
        }
      },
      onDenied: () {
        context.showErrorSnackbar('Tidak dapat mengakses kamera');
      },
    );
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
          onPressed: _openQRCode,
          child: SvgPicture.asset(
            'assets/icons/icQr.svg',
            color: Colors.white,
            width: Sizes.width24,
            height: Sizes.width24,
          ),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: _homeAdminInitial,
        child: SingleChildScrollView(
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
                      child: Text(Failure.getErrorMessage(error)),
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
              }, isShowTabPageControl),
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
                      child: Text(Failure.getErrorMessage(error)),
                    ),
                  );
                },
              ),
              const sales.PageControl(),
              SizedBox(height: Sizes.height80),
            ],
          ),
        ),
      ),
    );
  }
}
