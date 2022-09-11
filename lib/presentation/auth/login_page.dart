import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:koperasi/core/extensions/snackbar_ext.dart';
import 'package:koperasi/core/style/color_palettes.dart';
import 'package:koperasi/core/utils/form_validator.dart';
import 'package:koperasi/presentation/home/home_page.dart';
import 'package:koperasi/presentation/reset_password/reset_password_page.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../../core/const/strings.dart';
import '../../core/style/custom_text_style.dart';
import '../../core/style/sizes.dart';
import '../../core/unions/failure.dart';
import 'cubit/login_cubit.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/login';

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final RoundedLoadingButtonController _btnController = RoundedLoadingButtonController();

  bool hidePassword = true;
  String suffixPasswordText = Strings.show;

  AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;

  void actionLogin() async {
    if (_formKey.currentState!.validate()) {
      context.read<LoginCubit>().saveUsername(_emailController.text);
      context.read<LoginCubit>().savePassword(_passwordController.text);
      context.read<LoginCubit>().doLogin();
    } else {
      _btnController.error();
      setState(() {
        _autoValidateMode = AutovalidateMode.always;
      });
      Timer(const Duration(seconds: 1), () {
        _btnController.reset();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Sizes.height200),
        child: Stack(
          children: [
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
            Positioned(
              bottom: Sizes.height39,
              left: Sizes.width24,
              child: Text(
                Strings.login,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: Sizes.sp42,
                ),
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
              FocusManager.instance.primaryFocus!.unfocus();
            }
          },
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: Sizes.width16),
            child: Form(
              key: _formKey,
              autovalidateMode: _autoValidateMode,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Sizes.height42),
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                    validator: (_email) {
                      return FormValidator.validateEmail(context, _email!);
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: ColorPalettes.greyForm,
                      hintText: Strings.email,
                      hintStyle: CustomTextStyle.hintFormStyle,
                      counter: const SizedBox.shrink(),
                      contentPadding: const EdgeInsets.all(16.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(Sizes.width8),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorPalettes.primary,
                          width: 0.5,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorPalettes.greyForm,
                          width: 0.5,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Sizes.height5),
                  TextFormField(
                    controller: _passwordController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    obscureText: hidePassword,
                    validator: (_password) {
                      return FormValidator.validatePassword(context, _password!);
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: ColorPalettes.greyForm,
                      hintText: Strings.password,
                      hintStyle: CustomTextStyle.hintFormStyle,
                      counter: const SizedBox.shrink(),
                      contentPadding: const EdgeInsets.all(16.0),
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            hidePassword = !hidePassword;
                            if (hidePassword) {
                              suffixPasswordText = Strings.show;
                            } else {
                              suffixPasswordText = Strings.hide;
                            }
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16, right: 16, bottom: 16),
                          child: Text(
                            suffixPasswordText,
                            style: TextStyle(
                                color: ColorPalettes.primary, fontWeight: FontWeight.w500, fontSize: Sizes.sp16),
                          ),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(Sizes.width8),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorPalettes.primary,
                          width: 0.5,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorPalettes.greyForm,
                          width: 0.5,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Sizes.height26),
                  BlocListener<LoginCubit, LoginState>(
                    listenWhen: (previous, current) => previous.loginResultState != current.loginResultState,
                    listener: (context, state) {
                      state.loginResultState.maybeWhen(
                        success: (data) async {
                          _btnController.success();
                          Timer(const Duration(seconds: 1), () {
                            _btnController.reset();
                            Navigator.pushReplacementNamed(
                              context,
                              HomePage.routeName,
                            );
                          });
                        },
                        error: (failure) {
                          context.showErrorSnackbar(Failure.getErrorMessage(failure));
                          _btnController.error();
                          Timer(const Duration(seconds: 1), () {
                            _btnController.reset();
                          });
                        },
                        orElse: () => null,
                      );
                    },
                    child: RoundedLoadingButton(
                      child: Text(
                        Strings.login,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: Sizes.sp16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      width: MediaQuery.of(context).size.width,
                      color: ColorPalettes.primary,
                      borderRadius: Sizes.height4,
                      controller: _btnController,
                      onPressed: actionLogin,
                      height: Sizes.height46,
                    ),
                  ),
                  SizedBox(height: Sizes.height26),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        Strings.lupaPassword,
                        style:
                            TextStyle(color: ColorPalettes.darkText, fontSize: Sizes.sp16, fontWeight: FontWeight.w500),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            ResetPasswordPage.routeName,
                          );
                        },
                        child: Text(
                          Strings.reset,
                          style: TextStyle(
                              color: ColorPalettes.primary, fontSize: Sizes.sp16, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Sizes.height26),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
