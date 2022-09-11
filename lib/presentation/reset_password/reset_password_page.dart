import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:koperasi/core/style/custom_text_style.dart';
import 'package:koperasi/core/style/custom_widget_style.dart';
import 'package:koperasi/core/unions/failure.dart';
import 'package:koperasi/core/utils/get_util.dart';
import 'package:koperasi/core/widgets/loading_dialog.dart';
import 'package:koperasi/presentation/profile/cubit/profile_cubit.dart';
import 'package:koperasi/presentation/profile/widgets/success_update_dialog.dart';

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
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  _handleResetPassword(ResultState<dynamic> resetPasswordResult) {
    resetPasswordResult.maybeWhen(
      loading: () async => await GetUtil.showDialog(
        const LoadingDialog(),
        barrierDismissible: false,
      ),
      success: (data) async {
        GetUtil.dismissDialog();
        await GetUtil.showDialog(const SuccessUpdateDialog(), barrierDismissible: false);
        // context.showSuccessSnackbar(data.message ?? Strings.msgSuccessUpdate);
      },
      error: (failure) {
        GetUtil.dismissDialog();
        GetUtil.context.showErrorSnackbar(Failure.getErrorMessage(failure));
      },
      orElse: () => null,
    );
  }

  _resetPassword() {
    FocusManager.instance.primaryFocus?.unfocus();
    // context.read<ProfileCubit>().changePassword(_passwordController.text);

    // context.read<ProfileCubit>().updateProfile();
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
        child: Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          padding: EdgeInsets.symmetric(
            vertical: Sizes.width16,
            horizontal: Sizes.height28,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Sizes.height16),
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
                  _handleResetPassword(state.updateProfileResultState);
                },
                child: ElevatedButton(
                  onPressed: _resetPassword,
                  child: Text(
                    'Submit',
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
            ],
          ),
        ),
      ),
    );
  }
}
