import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:koperasi/core/style/custom_text_style.dart';
import 'package:koperasi/core/style/custom_widget_style.dart';
import 'package:koperasi/core/unions/failure.dart';
import 'package:koperasi/core/utils/get_util.dart';
import 'package:koperasi/core/widgets/loading_dialog.dart';
import 'package:koperasi/presentation/profile/cubit/profile_cubit.dart';
import 'package:koperasi/core/widgets/success_update_dialog.dart';
import 'package:koperasi/presentation/reset_password/widgets/form_email.dart';
import 'package:koperasi/presentation/reset_password/widgets/form_new_password.dart';

import '../../core/const/strings.dart';
import '../../core/style/color_palettes.dart';
import '../../core/style/sizes.dart';
import '../../core/unions/result_state.dart';
import '../../../../core/extensions/snackbar_ext.dart';

class ResetPasswordPage extends StatefulWidget {
  static const routeName = '/reset-password';

  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  _buildContent(String status) {
    switch (status) {
      case 'send_email':
        return const FormEmail();
      case 'new_password':
        return const FormNewPassword();
      default:
        return const LoadingDialog();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalettes.greyAppBar,
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
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: _buildContent('new_password'),
      ),
    );
  }
}
