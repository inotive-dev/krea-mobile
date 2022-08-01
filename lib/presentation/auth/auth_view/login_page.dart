import 'dart:async';

import 'package:flutter/material.dart';
import 'package:koperasi/core/const/enums.dart';
import 'package:koperasi/core/const/keys.dart';
import 'package:koperasi/core/style/color_palettes.dart';
import 'package:koperasi/core/utils/form_validator.dart';
import 'package:koperasi/core/utils/session_helper.dart';
import 'package:koperasi/core/widgets/app_bar_container.dart';
import 'package:koperasi/presentation/home/home_page.dart';
import 'package:koperasi/repository/login_repository.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../../../core/const/strings.dart';
import '../../../core/style/custom_text_style.dart';
import '../../../core/style/sizes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  bool hidePassword = true;
  String suffixPasswordText = Strings.show;

  AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;
  final LoginRepository _loginRepository = LoginRepository();

  void _doLogin() async {
    if (_formKey.currentState!.validate()) {
      //         // todo login function
      _loginRepository.authLogin(email: _emailController.text, password: _passwordController.text).then((response) {
        if(response?.user != null){
          SessionHelper().saveToken(response!.token!);
          SessionHelper().saveDynamicSession(Keys.role, response.user!.app!);
          _btnController.success();
          Timer(const Duration(seconds: 1), (){
            _btnController.reset();
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage(
              role: response.user!.app == 'admin' ? Role.admin : Role.user,
            )));
          });
        } else {
          _btnController.error();
          Timer(const Duration(seconds: 1), (){
            _btnController.reset();
          });
        }
      }).catchError((onError) {
        print('error login : ${onError.toString()}');
        Timer(const Duration(seconds: 1), (){
          _btnController.reset();
        });
      });

    } else {
      _btnController.error();
      setState(() {
        _autoValidateMode = AutovalidateMode.always;
      });
      Timer(const Duration(seconds: 1), (){
        _btnController.reset();
      });
    }
    // Timer(Duration(seconds: 3), () {
    //   _btnController.success();
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(Sizes.height200),
          child: Stack(
            children: [
              AppBarContainer(
                height: Sizes.height200,
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height / 5,
                  bottom: 10,
                  left: Sizes.width40,
                  child: Text(
                    Strings.login,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: Sizes.sp36),
                  ))
            ],
          )),
      body: Container(
        color: ColorPalettes.bgGrey,
        padding: EdgeInsets.symmetric(horizontal: Sizes.width16),
        child: Form(
          key: _formKey,
          autovalidateMode: _autoValidateMode,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: Sizes.height42, bottom: Sizes.height16),
                child: TextFormField(
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
              ),
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
                      padding:
                          const EdgeInsets.only(top: 16, right: 16, bottom: 16),
                      child: Text(
                        suffixPasswordText,
                        style: TextStyle(
                            color: ColorPalettes.primary,
                            fontWeight: FontWeight.w500,
                            fontSize: Sizes.sp16),
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
              Padding(
                padding: EdgeInsets.only(top: Sizes.height42),
                child: RoundedLoadingButton(
                  child: Text(
                    Strings.login,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: Sizes.sp16,
                        fontWeight: FontWeight.w400),
                  ),
                  width: MediaQuery.of(context).size.width,
                  color: ColorPalettes.primary,
                  borderRadius: 8,
                  controller: _btnController,
                  onPressed: _doLogin,
                ),
              ),
              SizedBox(height: Sizes.height26),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    Strings.lupaPassword,
                    style: TextStyle(
                        color: ColorPalettes.darkText,
                        fontSize: Sizes.sp16,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    Strings.reset,
                    style: TextStyle(
                        color: ColorPalettes.primary,
                        fontSize: Sizes.sp16,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
