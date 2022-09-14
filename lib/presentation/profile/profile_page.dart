import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:koperasi/core/const/constants.dart';
import 'package:koperasi/core/style/custom_text_style.dart';
import 'package:koperasi/core/style/custom_widget_style.dart';
import 'package:koperasi/core/unions/failure.dart';
import 'package:koperasi/core/utils/get_util.dart';
import 'package:koperasi/core/widgets/image_permission_dialog.dart';
import 'package:koperasi/core/widgets/loading_dialog.dart';
import 'package:koperasi/core/widgets/my_cached_network_image.dart';
import 'package:koperasi/data/remote/api/endpoint.dart';
import 'package:koperasi/presentation/auth/login_page.dart';
import 'package:koperasi/presentation/profile/cubit/profile_cubit.dart';
import 'package:koperasi/core/widgets/success_update_dialog.dart';

import '../../core/const/strings.dart';
import '../../core/style/color_palettes.dart';
import '../../core/style/sizes.dart';
import '../../core/unions/result_state.dart';
import '../../domain/entities/login/user.dart';
import '../../../../core/extensions/snackbar_ext.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  void initState() {
    super.initState();

    context.read<ProfileCubit>().getProfile();
  }

  void _doLogout() async {
    context.read<ProfileCubit>().doLogOut();
  }

  _handleLogoutResult(ResultState<dynamic> logoutResult) {
    logoutResult.maybeWhen(
      success: (data) async {
        await Navigator.pushReplacementNamed(context, LoginPage.routeName);
      },
      error: (failure) {},
      orElse: () => null,
    );
  }

  _handleUpdateProfile(ResultState<dynamic> updateResult) {
    updateResult.maybeWhen(
      loading: () async => await GetUtil.showDialog(
        const LoadingDialog(),
        barrierDismissible: false,
      ),
      success: (data) async {
        GetUtil.dismissDialog();
        await GetUtil.showDialog(
          const SuccessUpdateDialog(
            text: Strings.successUpdateProfile,
          ),
          barrierDismissible: false,
        );
      },
      error: (failure) {
        GetUtil.dismissDialog();
        GetUtil.context.showErrorSnackbar(Failure.getErrorMessage(failure));
      },
      orElse: () => null,
    );
  }

  _handleGetUser(User? user) {
    setState(() {
      _nameController.text = user?.name ?? '-';
      _emailController.text = user?.email ?? '-';
      _passwordController.text = Constants.placeholderPassword;
      _confirmPasswordController.text = Constants.placeholderPassword;
    });
  }

  _updateProfile() {
    FocusManager.instance.primaryFocus?.unfocus();
    final password = _passwordController.text;
    final confirmPassword = _confirmPasswordController.text;

    bool isUpdatePassword = false;

    if (password != Constants.placeholderPassword && password == confirmPassword) {
      isUpdatePassword = true;
      context.read<ProfileCubit>().changePassword(_passwordController.text);
    }

    if (password != confirmPassword) {
      GetUtil.context.showErrorSnackbar('Confirm password harus sama dengan password!');
    } else {
      context.read<ProfileCubit>().changeName(_nameController.text);
      context.read<ProfileCubit>().changeEmail(_emailController.text);

      context.read<ProfileCubit>().updateProfile(isUpdatePassword);
    }
  }

  _onTapPickerImage() async {
    await GetUtil.showDialog(
      ImagePermissionDialog(
        pickedImageFile: (imageFile) {
          GetUtil.context.read<ProfileCubit>().savePickedImageFile(imageFile);
        },
      ),
    );
  }

  Future<void> _refreshProfile() async {
    context.read<ProfileCubit>().getProfile();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _refreshProfile,
      child: SingleChildScrollView(
        child: Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          padding: EdgeInsets.symmetric(
            vertical: Sizes.width16,
            horizontal: Sizes.height28,
          ),
          child: context.select(
            (ProfileCubit value) {
              final user = value.state.user;
              _handleGetUser(user);

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Sizes.height10),
                  Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: ClipOval(
                          child: Container(
                            width: Sizes.width95,
                            height: Sizes.width95,
                            decoration: const BoxDecoration(
                              color: ColorPalettes.bgNavigationMenu,
                              shape: BoxShape.circle,
                            ),
                            child: value.state.pickedImageFile == null
                                ? MyCachedNetworkImage(
                                    imageUrl: user?.avatar != null
                                        ? "${Endpoint.baseUrlImage}${user?.avatar}"
                                        : Constants.placeholderAvatarUrl,
                                    width: Sizes.width95,
                                    height: Sizes.width95,
                                    fit: BoxFit.cover,
                                    errorWidget: CircleAvatar(
                                      backgroundImage: const NetworkImage(Constants.placeholderAvatarUrl),
                                      radius: Sizes.width50,
                                    ),
                                  )
                                : Image.file(
                                    value.state.pickedImageFile!,
                                    width: Sizes.width95,
                                    height: Sizes.width95,
                                    fit: BoxFit.cover,
                                  ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: Sizes.width43,
                          width: Sizes.width43,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          margin: EdgeInsets.only(left: Sizes.width60, top: Sizes.width60),
                          child: InkWell(
                            onTap: _onTapPickerImage,
                            child: Icon(
                              Icons.camera_alt_rounded,
                              size: Sizes.width24,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Sizes.height16),
                  Text(
                    Strings.nama,
                    style: CustomTextStyle.textFormStyle,
                  ),
                  SizedBox(height: Sizes.height7),
                  TextFormField(
                    controller: _nameController,
                    style: TextStyle(
                      color: ColorPalettes.textNeutral,
                      fontSize: Sizes.sp14,
                    ),
                    decoration: CustomWidgetStyle.formInputDecoration,
                  ),
                  SizedBox(height: Sizes.height19),
                  Text(
                    Strings.email,
                    style: CustomTextStyle.textFormStyle,
                  ),
                  SizedBox(height: Sizes.height7),
                  TextFormField(
                    controller: _emailController,
                    style: TextStyle(
                      color: ColorPalettes.textNeutral,
                      fontSize: Sizes.sp14,
                    ),
                    decoration: CustomWidgetStyle.formInputDecoration,
                  ),
                  SizedBox(height: Sizes.height19),
                  Text(
                    Strings.password,
                    style: CustomTextStyle.textFormStyle,
                  ),
                  SizedBox(height: Sizes.height7),
                  TextFormField(
                    controller: _passwordController,
                    style: TextStyle(
                      color: ColorPalettes.textNeutral,
                      fontSize: Sizes.sp14,
                    ),
                    obscureText: true,
                    decoration: CustomWidgetStyle.formInputDecoration,
                  ),
                  SizedBox(height: Sizes.height19),
                  Text(
                    Strings.confirmPassword,
                    style: CustomTextStyle.textFormStyle,
                  ),
                  SizedBox(height: Sizes.height7),
                  TextFormField(
                    controller: _confirmPasswordController,
                    style: TextStyle(
                      color: ColorPalettes.textNeutral,
                      fontSize: Sizes.sp14,
                    ),
                    obscureText: true,
                    decoration: CustomWidgetStyle.formInputDecoration,
                  ),
                  SizedBox(height: Sizes.height20),
                  BlocListener<ProfileCubit, ProfileState>(
                    listenWhen: (previous, current) =>
                        previous.updateProfileResultState != current.updateProfileResultState,
                    listener: (context, state) {
                      _handleUpdateProfile(state.updateProfileResultState);
                    },
                    child: ElevatedButton(
                      onPressed: _updateProfile,
                      child: Text(
                        'Update',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: Sizes.sp18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, Sizes.height46),
                        elevation: 0,
                      ),
                    ),
                  ),
                  SizedBox(height: Sizes.height15),
                  BlocListener<ProfileCubit, ProfileState>(
                    listenWhen: (previous, current) => previous.logoutResultState != current.logoutResultState,
                    listener: (context, state) {
                      _handleLogoutResult(state.logoutResultState);
                    },
                    child: ElevatedButton(
                      onPressed: _doLogout,
                      child: Text(
                        'Logout',
                        style: TextStyle(
                          color: ColorPalettes.primary,
                          fontSize: Sizes.sp18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, Sizes.height46),
                        primary: Theme.of(context).scaffoldBackgroundColor,
                        elevation: 0,
                        side: const BorderSide(
                          width: 1,
                          color: ColorPalettes.primary,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Sizes.height15),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
