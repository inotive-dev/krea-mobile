import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:koperasi/core/const/constants.dart';
import 'package:koperasi/core/const/strings.dart';
import 'package:koperasi/core/unions/failure.dart';
import 'package:koperasi/core/utils/utils.dart';
import 'package:koperasi/core/widgets/my_cached_network_image.dart';
import 'package:koperasi/data/remote/api/endpoint.dart';
import 'package:koperasi/presentation/home/cubit/home_cubit.dart';
import 'package:koperasi/presentation/profile/cubit/profile_cubit.dart';
import 'package:koperasi/core/extensions/ext.dart';

import '../../../../core/style/sizes.dart';

class UserAppBar extends StatelessWidget {
  const UserAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<ProfileCubit>().getProfile();

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
            left: Sizes.width20,
            right: Sizes.width20,
            bottom: Sizes.height19,
            top: Sizes.height60,
          ),
          child: BlocBuilder<HomeCubit, HomeState>(
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
                  final String date = DateFormat("HH:mm\ndd MMMM yyyy", 'id_ID').format(
                    state.lastUpdated.toLocal(),
                  );
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: BlocBuilder<ProfileCubit, ProfileState>(
                          builder: (context, state) {
                            return state.getProfileResultState.when(
                              initial: () => const SizedBox.shrink(),
                              loading: () => const Center(
                                child: CircularProgressIndicator(),
                              ),
                              error: (error) => Center(
                                child: Text(Failure.getErrorMessage(error)),
                              ),
                              success: (data) {
                                return Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MyCachedNetworkImage(
                                      imageUrl: state.user?.avatar != null
                                          ? "${Endpoint.baseUrlImage}${state.user?.avatar}"
                                          : Constants.placeholderAvatarUrl,
                                      imageBuilder: (context, imageProvider) => Container(
                                        width: Sizes.height50,
                                        height: Sizes.height50,
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
                                    SizedBox(width: Sizes.width12),
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            state.user?.name.toString().capitalize() ?? '',
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: Sizes.sp18,
                                            ),
                                          ),
                                          SizedBox(height: Sizes.height5),
                                          Text(
                                            state.user?.nik ?? '-',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: Sizes.sp16,
                                            ),
                                          ),
                                          SizedBox(height: Sizes.height5),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                        ),
                      ),
                      SizedBox(width: Sizes.width2),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              Strings.saldoAnda,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: Sizes.sp16,
                              ),
                            ),
                            SizedBox(height: Sizes.height2),
                            Text(
                              formatToIdr(state.homeUserData.totalSaldoSimpananUtang),
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: Sizes.sp20,
                              ),
                            ),
                            Text(
                              '${Strings.lastUpdated} $date',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: Sizes.sp10,
                              ),
                            ),
                          ],
                        ),
                      ),
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
