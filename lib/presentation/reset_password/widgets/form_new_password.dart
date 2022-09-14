import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:koperasi/core/const/strings.dart';
import 'package:koperasi/core/extensions/snackbar_ext.dart';
import 'package:koperasi/core/style/color_palettes.dart';
import 'package:koperasi/core/style/custom_text_style.dart';
import 'package:koperasi/core/style/sizes.dart';
import 'package:koperasi/core/unions/failure.dart';
import 'package:koperasi/core/unions/result_state.dart';
import 'package:koperasi/core/utils/form_validator.dart';
import 'package:koperasi/core/utils/get_util.dart';
import 'package:koperasi/core/widgets/loading_dialog.dart';
import 'package:koperasi/core/widgets/success_update_dialog.dart';
import 'package:koperasi/presentation/reset_password/cubit/reset_password_cubit.dart';

class FormNewPassword extends StatefulWidget {
  const FormNewPassword({Key? key}) : super(key: key);

  @override
  State<FormNewPassword> createState() => _FormNewPasswordState();
}

class _FormNewPasswordState extends State<FormNewPassword> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  bool hidePassword = true;
  String suffixPasswordText = Strings.show;

  _handleResetPassword(ResultState<dynamic> state) {
    state.maybeWhen(
      loading: () async => await GetUtil.showDialog(
        const LoadingDialog(),
        barrierDismissible: false,
      ),
      success: (data) async {
        GetUtil.dismissDialog();
        await GetUtil.showDialog(
          SuccessUpdateDialog(
            text: Strings.successResetPassword,
            onPress: () {
              GetUtil.dismissDialog();
              Navigator.pop(context);
            },
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

  _resetPassword() {
    FocusManager.instance.primaryFocus?.unfocus();
    if (_formKey.currentState!.validate()) {
      context.read<ResetPasswordCubit>().sendResetPassword(_passwordController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        vertical: Sizes.width16,
        horizontal: Sizes.height28,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Sizes.height16),
            Text(
              Strings.passwordInfo,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: Sizes.sp16,
                color: ColorPalettes.greyText,
              ),
            ),
            SizedBox(height: Sizes.height36),
            TextFormField(
              controller: _passwordController,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              obscureText: hidePassword,
              validator: (_password) {
                return FormValidator.validatePassword(
                  context,
                  _password!,
                  textError: "Tidak boleh kosong!",
                );
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: ColorPalettes.bgGrey,
                hintText: Strings.newPassword,
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
                      style: TextStyle(color: ColorPalettes.primary, fontWeight: FontWeight.w500, fontSize: Sizes.sp16),
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
                    color: ColorPalettes.bgGrey,
                    width: 0.5,
                  ),
                ),
              ),
            ),
            SizedBox(height: Sizes.height19),
            TextFormField(
              controller: _confirmPasswordController,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              obscureText: hidePassword,
              validator: (_password) {
                if (_password != _passwordController.text) {
                  return 'Harus sama dengan password';
                }
                return FormValidator.validatePassword(
                  context,
                  _password!,
                  textError: "Tidak boleh kosong!",
                );
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: ColorPalettes.bgGrey,
                hintText: Strings.confirmPassword,
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
                      style: TextStyle(color: ColorPalettes.primary, fontWeight: FontWeight.w500, fontSize: Sizes.sp16),
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
                    color: ColorPalettes.bgGrey,
                    width: 0.5,
                  ),
                ),
              ),
            ),
            SizedBox(height: Sizes.height20),
            BlocListener<ResetPasswordCubit, ResetPasswordState>(
              listenWhen: (previous, current) =>
                  previous.sendResetPasswordResultState != current.sendResetPasswordResultState,
              listener: (context, state) {
                _handleResetPassword(state.sendResetPasswordResultState);
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
    );
  }
}
