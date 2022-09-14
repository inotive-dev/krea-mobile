import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:koperasi/core/const/enums.dart';
import 'package:koperasi/presentation/reset_password/cubit/reset_password_cubit.dart';
import 'package:koperasi/presentation/reset_password/widgets/form_email.dart';
import 'package:koperasi/presentation/reset_password/widgets/form_new_password.dart';
import 'package:koperasi/presentation/reset_password/widgets/form_otp.dart';

import '../../core/const/strings.dart';
import '../../core/style/color_palettes.dart';
import '../../core/style/sizes.dart';

class ResetPasswordPage extends StatefulWidget {
  static const routeName = '/reset-password';

  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  _buildContent(status) {
    switch (status) {
      case ResetPasswordSteps.sendEmail:
        return const FormEmail();
      case ResetPasswordSteps.sendOtp:
        return const FormOTP();
      case ResetPasswordSteps.sendNewPassword:
        return const FormNewPassword();
      default:
        return Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          alignment: Alignment.center,
          child: const Text('Page not found!'),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResetPasswordCubit, ResetPasswordState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              Strings.resetPassword,
              style: TextStyle(
                color: ColorPalettes.darkBlue,
                fontSize: Sizes.sp20,
              ),
            ),
            centerTitle: true,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              iconSize: Sizes.width14,
              onPressed: () {
                if (state.resetStep != ResetPasswordSteps.sendEmail) {
                  final backStep = state.resetStep == ResetPasswordSteps.sendNewPassword
                      ? ResetPasswordSteps.sendOtp
                      : ResetPasswordSteps.sendEmail;
                  context.read<ResetPasswordCubit>().changeStep(backStep);
                } else {
                  Navigator.pop(context);
                }
              },
            ),
          ),
          body: SingleChildScrollView(
            child: _buildContent(state.resetStep),
          ),
        );
      },
    );
  }
}
