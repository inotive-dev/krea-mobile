import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      body: Column(
        children: [
          const UserAppBar(),
          SizedBox(height: Sizes.height47),
          BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return state.getHomeUserResultState.when(
                initial: () => const SizedBox.shrink(),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                error: (error) => Center(
                  child: Text(Failure.getErrorMessage(error)),
                ),
                success: (data) {
                  return Column(
                    children: [
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
        ],
      ),
    );
  }
}
