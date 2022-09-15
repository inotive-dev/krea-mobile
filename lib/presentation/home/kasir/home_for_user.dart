import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:koperasi/core/style/color_palettes.dart';
import 'package:koperasi/core/style/sizes.dart';
import 'package:koperasi/core/unions/failure.dart';
import 'package:koperasi/presentation/home/cubit/home_cubit.dart';
import 'package:koperasi/presentation/home/kasir/widgets/home_summary_card.dart';
import 'package:koperasi/presentation/home/kasir/widgets/user_app_bar.dart';

import '../../../core/const/strings.dart';

class HomeForUser extends StatelessWidget {
  const HomeForUser({Key? key}) : super(key: key);

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
          onPressed: () {
            print('scan qr');
          },
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
            onRefresh: () => context.read<HomeCubit>().getHomeUserData(),
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
                      onRefresh: () => context.read<HomeCubit>().getHomeUserData(),
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
                            amount: state.homeUserData.contribution.contributionWajib,
                          ),
                          HomeSummaryCard(
                            title: Strings.totalSimpananAnda,
                            amount: state.homeUserData.totalSaldoSimpananUtang.toString(),
                          ),
                          HomeSummaryCard(
                            title: Strings.totalUtang,
                            amount: state.homeUserData.totalUtang,
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
