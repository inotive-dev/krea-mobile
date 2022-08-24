import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:koperasi/core/const/constants.dart';
import 'package:koperasi/core/utils/utils.dart';
import 'package:koperasi/core/widgets/my_cached_network_image.dart';
import 'package:koperasi/data/remote/api/endpoint.dart';
import 'package:koperasi/presentation/home/cubit/home_cubit.dart';
import 'package:koperasi/presentation/profile/cubit/profile_cubit.dart';

import '../../../../core/style/sizes.dart';

class UserAppBar extends StatelessWidget {
  const UserAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<ProfileCubit>().getProfile();

    final lastUpdated = DateTime.now().toString().obs;

    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(Sizes.width8),
              bottomRight: Radius.circular(Sizes.width8),
            ),
            child: SvgPicture.asset(
              'assets/images/intersect.svg',
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            left: Sizes.width26,
            right: Sizes.width26,
            bottom: Sizes.height19,
            top: Sizes.height60,
          ),
          child: BlocBuilder<ProfileCubit, ProfileState>(
            builder: (context, state) {
              return state.getProfileResultState.when(
                initial: () => const SizedBox.shrink(),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                error: (error) => Center(
                  child: Text(error.toString()),
                ),
                success: (data) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          MyCachedNetworkImage(
                            imageUrl: state.user?.avatar != null
                                ? "${Endpoint.baseUrlImage}${state.user?.avatar}"
                                : Constants.placeholderAvatarUrl,
                            imageBuilder: (context, imageProvider) => Container(
                              width: Sizes.height48,
                              height: Sizes.height48,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
                              ),
                            ),
                            fit: BoxFit.cover,
                            errorWidget: CircleAvatar(
                              backgroundImage: const NetworkImage(Constants.placeholderAvatarUrl),
                              radius: Sizes.height30,
                            ),
                          ),
                          SizedBox(
                            width: Sizes.width12,
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  state.user?.name ?? '-',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: Sizes.sp18),
                                ),
                                SizedBox(height: Sizes.height5),
                                Text(
                                  state.user?.nik ?? '-',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: Sizes.sp17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: Sizes.width2),
                          Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Saldo Anda",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: Sizes.sp17,
                                  ),
                                ),
                                SizedBox(height: Sizes.height2),
                                BlocBuilder<HomeCubit, HomeState>(
                                  builder: (context, state) {
                                    return state.getHomeUserResultState.when(
                                      initial: () => const SizedBox.shrink(),
                                      loading: () => const Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                      error: (error) => Center(
                                        child: Text(error.toString()),
                                      ),
                                      success: (data) {
                                        lastUpdated.value = DateFormat("HH:mm\ndd MMMM yyyy", 'id_ID').format(
                                          state.lastUpdated.toLocal(),
                                        );
                                        return Text(
                                          formatToIdr(state.homeUserData.totalSaldoSimpananUtang),
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: Sizes.sp22,
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      ObxValue<RxString>(
                        (rx) {
                          return Text(
                            'Last Updated ${rx.value}',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: Sizes.sp9,
                            ),
                          );
                        },
                        lastUpdated,
                      )
                    ],
                  );
                },
              );
            },
          ),
        )
      ],
    );
  }
}
