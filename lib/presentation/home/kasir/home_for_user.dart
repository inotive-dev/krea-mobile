import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:koperasi/core/extensions/snackbar_ext.dart';
import 'package:koperasi/core/style/color_palettes.dart';
import 'package:koperasi/core/style/sizes.dart';
import 'package:koperasi/core/unions/failure.dart';
import 'package:koperasi/core/utils/permission_helper.dart';
import 'package:koperasi/data/local/entities/history/sales_response_entity.dart';
import 'package:koperasi/data/local/local_data_source.dart';
import 'package:koperasi/di/injection_container.dart';
import 'package:koperasi/presentation/home/cubit/home_cubit.dart';
import 'package:koperasi/presentation/home/kasir/widgets/home_summary_card.dart';
import 'package:koperasi/presentation/home/kasir/widgets/user_app_bar.dart';
import 'package:koperasi/presentation/home/widgets/scan_qr/scan_qr_page.dart';
import 'package:koperasi/presentation/profile/cubit/profile_cubit.dart';

import '../../../core/const/strings.dart';

class HomeForUser extends StatelessWidget {
  const HomeForUser({Key? key}) : super(key: key);

  void _openQRCode(BuildContext context) async {
    await PermissionHelper.requestPermissionCamera(
      onGranted: () async {
        final result = await Navigator.pushNamed(
          context,
          ScanQRPage.routeName,
        );

        if (result != null || result != '') {
          final hist = getIt.get<LocalDataSource>().getHistoryUser();
          final List<Map<String, dynamic>> listHist = [];
          for (SalesResponseEntity element in hist?.lastMonthHistory ?? []) {
            listHist.add(element.toJson());
          }
          for (SalesResponseEntity element in hist?.thisWeekHistory ?? []) {
            listHist.add(element.toJson());
          }

          context.read<HomeCubit>().validateData(result.toString(), listHist);
        }
      },
      onDenied: () {
        context.showErrorSnackbar('Tidak dapat mengakses kamera');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    context.read<HomeCubit>().getHomeUserData();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Sizes.height160),
        child: const SizedBox.shrink(),
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
          onPressed: () => _openQRCode(context),
          child: SvgPicture.asset(
            'assets/icons/icQr.svg',
            color: Colors.white,
            width: Sizes.width24,
            height: Sizes.width24,
          ),
        ),
      ),
      body: Column(
        children: [
          const UserAppBar(),
          RefreshIndicator(
            onRefresh: () {
              context.read<ProfileCubit>().getProfile();
              return context.read<HomeCubit>().getHomeUserData();
            },
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  return state.getHomeUserResultState.when(
                    initial: () => const SizedBox.shrink(),
                    loading: () => Container(
                      height: 200,
                      alignment: Alignment.center,
                      child: const CircularProgressIndicator(),
                    ),
                    error: (error) => RefreshIndicator(
                      onRefresh: () {
                        context.read<ProfileCubit>().getProfile();
                        return context.read<HomeCubit>().getHomeUserData();
                      },
                      child: SingleChildScrollView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        child: Container(
                          height: 200,
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            Failure.getErrorMessage(error),
                          ),
                        ),
                      ),
                    ),
                    success: (data) {
                      return Column(
                        children: [
                          SizedBox(height: Sizes.height47),
                          HomeSummaryCard(
                            title: Strings.totalSimpananWajib,
                            amount: state.homeUserData.contribution.contributionWajib.toString(),
                          ),
                          HomeSummaryCard(
                            title: Strings.totalSimpananAnda,
                            amount: state.homeUserData.totalSaldoSimpananUtang.toString(),
                          ),
                          HomeSummaryCard(
                            title: Strings.totalUtang,
                            amount: state.homeUserData.totalUtang.toString(),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
