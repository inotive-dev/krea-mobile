import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:koperasi/core/const/constants.dart';
import 'package:koperasi/core/style/custom_text_style.dart';
import 'package:koperasi/core/style/custom_widget_style.dart';
import 'package:koperasi/core/widgets/my_cached_network_image.dart';
import 'package:koperasi/data/remote/api/endpoint.dart';
import 'package:koperasi/presentation/auth/login_page.dart';
import 'package:koperasi/presentation/profile/cubit/profile_cubit.dart';

import '../../core/const/strings.dart';
import '../../core/style/color_palettes.dart';
import '../../core/style/sizes.dart';
import '../../core/unions/result_state.dart';
import '../../domain/entities/login/user.dart';

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

  _handleGetUser(User? user) {
    setState(() {
      _nameController.text = user?.name ?? '-';
      _emailController.text = user?.email ?? '-';
      _passwordController.text = 'password';
      _confirmPasswordController.text = 'password';
    });
  }

  @override
  Widget build(BuildContext context) {
    context.read<ProfileCubit>().getUser();

    return SingleChildScrollView(
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
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: MyCachedNetworkImage(
                        imageUrl: user?.avatar != null
                            ? "${Endpoint.baseUrlImage}${user?.avatar}"
                            : Constants.placeholderAvatarUrl,
                        imageBuilder: (context, imageProvider) => Container(
                          width: Sizes.width95,
                          height: Sizes.width95,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
                          ),
                        ),
                        fit: BoxFit.cover,
                        errorWidget: CircleAvatar(
                          backgroundImage: const NetworkImage(Constants.placeholderAvatarUrl),
                          radius: Sizes.width50,
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
                        margin: const EdgeInsets.only(left: 65, top: 65),
                        child: InkWell(
                          onTap: () {},
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
                ElevatedButton(
                  onPressed: () {},
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
                        color: Colors.grey,
                        fontSize: Sizes.sp18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, Sizes.height46),
                      primary: ColorPalettes.greyForm,
                      elevation: 0,
                      side: const BorderSide(
                        width: 1,
                        color: ColorPalettes.greyForm,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
