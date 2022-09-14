import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:koperasi/core/const/strings.dart';
import 'package:koperasi/core/extensions/snackbar_ext.dart';
import 'package:koperasi/core/style/color_palettes.dart';
import 'package:koperasi/core/style/sizes.dart';
import 'package:koperasi/core/unions/failure.dart';
import 'package:koperasi/core/unions/result_state.dart';
import 'package:koperasi/core/utils/get_util.dart';
import 'package:koperasi/core/widgets/loading_dialog.dart';
import 'package:koperasi/presentation/reset_password/cubit/reset_password_cubit.dart';
import 'package:koperasi/presentation/reset_password/widgets/otp_input.dart';

class FormOTP extends StatefulWidget {
  const FormOTP({Key? key}) : super(key: key);

  @override
  State<FormOTP> createState() => _FormOTPState();
}

class _FormOTPState extends State<FormOTP> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();
  final TextEditingController _fieldFive = TextEditingController();

  bool _showErrorEmptyField = false;

  _handleSendOTP(ResultState<dynamic> state) {
    state.maybeWhen(
      loading: () async => await GetUtil.showDialog(
        const LoadingDialog(),
        barrierDismissible: false,
      ),
      success: (data) async {
        GetUtil.dismissDialog();
        context.showSuccessSnackbar(data ?? Strings.successSendOTPResetPassword);
      },
      error: (failure) {
        GetUtil.dismissDialog();
        GetUtil.context.showErrorSnackbar(Failure.getErrorMessage(failure));
      },
      orElse: () => null,
    );
  }

  _sendOTP() {
    FocusManager.instance.primaryFocus?.unfocus();
    if (_formKey.currentState!.validate()) {
      final otp = _fieldOne.text + _fieldTwo.text + _fieldThree.text + _fieldFour.text + _fieldFive.text;
      context.read<ResetPasswordCubit>().sendOTP(otp);
      setState(() {
        _showErrorEmptyField = false;
      });
    } else {
      setState(() {
        _showErrorEmptyField = true;
      });
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
              Strings.sendOTP,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: Sizes.sp16,
                color: ColorPalettes.greyText,
              ),
            ),
            SizedBox(height: Sizes.height55),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OtpInput(_fieldOne, true),
                OtpInput(_fieldTwo, false),
                OtpInput(_fieldThree, false),
                OtpInput(_fieldFour, false),
                OtpInput(_fieldFive, false)
              ],
            ),
            SizedBox(height: Sizes.height20),
            Visibility(
              visible: _showErrorEmptyField,
              child: const Center(
                child: Text(
                  "Field can't be left blank",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            SizedBox(height: Sizes.height20),
            BlocListener<ResetPasswordCubit, ResetPasswordState>(
              listenWhen: (previous, current) => previous.sendOTPResultState != current.sendOTPResultState,
              listener: (context, state) {
                _handleSendOTP(state.sendOTPResultState);
              },
              child: ElevatedButton(
                onPressed: _sendOTP,
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
