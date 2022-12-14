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
import 'package:koperasi/presentation/reset_password/cubit/reset_password_cubit.dart';

class FormEmail extends StatefulWidget {
  const FormEmail({Key? key}) : super(key: key);

  @override
  State<FormEmail> createState() => _FormEmailState();
}

class _FormEmailState extends State<FormEmail> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  _handleSendEmail(ResultState<dynamic> state) {
    state.maybeWhen(
      loading: () async => await GetUtil.showDialog(
        const LoadingDialog(),
        barrierDismissible: false,
      ),
      success: (data) async {
        GetUtil.dismissDialog();
        context.showSuccessSnackbar(data ?? Strings.successSendEmailResetPassword);
      },
      error: (failure) {
        GetUtil.dismissDialog();
        GetUtil.context.showErrorSnackbar(Failure.getErrorMessage(failure));
      },
      orElse: () => null,
    );
  }

  _sendEmail() {
    FocusManager.instance.primaryFocus?.unfocus();
    if (_formKey.currentState!.validate()) {
      context.read<ResetPasswordCubit>().sendEmail(_emailController.text);
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
              Strings.sendEmail,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: Sizes.sp16,
                color: ColorPalettes.greyText,
              ),
            ),
            SizedBox(height: Sizes.height36),
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.done,
              validator: (_email) {
                return FormValidator.validateEmail(context, _email!);
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: ColorPalettes.bgGrey,
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
                    color: ColorPalettes.bgGrey,
                    width: 0.5,
                  ),
                ),
              ),
            ),
            SizedBox(height: Sizes.height24),
            BlocListener<ResetPasswordCubit, ResetPasswordState>(
              listenWhen: (previous, current) => previous.sendEmailResultState != current.sendEmailResultState,
              listener: (context, state) {
                _handleSendEmail(state.sendEmailResultState);
              },
              child: ElevatedButton(
                onPressed: _sendEmail,
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
