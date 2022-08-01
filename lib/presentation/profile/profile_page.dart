import 'package:flutter/material.dart';
import 'package:koperasi/core/widgets/blue_button.dart';
import 'package:koperasi/presentation/profile/widgets/label_form.dart';
import 'package:koperasi/repository/profile_repository.dart';

import '../../core/const/strings.dart';
import '../../core/style/color_palettes.dart';
import '../../core/style/sizes.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void initState() {
    ProfileRepository().getProfile().then((response) {
      if(response != null){
        setState(() {
          // _nameController.text = 'Setyabudi';
          _nameController.text = response.user!.name!;
          // _emailController.text = 'test@mail.com';
          _emailController.text = response.user!.email!;
          _passwordController.text = 'password';
          _confirmPasswordController.text = 'password';
        });
      } else {
        setState(() {
          _nameController.text = 'NaN';
          _emailController.text = 'NaN';
          _passwordController.text = 'password';
          _confirmPasswordController.text = 'password';
        });
      }
    }).catchError((onError){
      print('get profile error : ${onError.toString()}');
      setState(() {
        _nameController.text = 'NaN';
        _emailController.text = 'NaN';
        _passwordController.text = 'password';
        _confirmPasswordController.text = 'password';
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorPalettes.greyBackground,
      padding: EdgeInsets.symmetric(
          vertical: Sizes.width16, horizontal: Sizes.height20),
      child: ListView(
        children: [
          SizedBox(
            height: Sizes.height40,
          ),
          Stack(children: <Widget>[
            Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        AssetImage('assets/images/dummy_avatar.png'))),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: Sizes.width40,
                width: Sizes.height40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                margin: const EdgeInsets.only(left: 70, top: 70),
                child: InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.camera_alt_rounded,
                      size: 20,
                    )),
              ),
            ),
          ]),
          const LabelForm(label: Strings.nama),
          TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                labelStyle: const TextStyle(color: ColorPalettes.textNeutral),
                filled: true,
                fillColor: ColorPalettes.bgGreyForm,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: ColorPalettes.greyBorderColor,
                    width: 1,
                  ),
                ),
                contentPadding: EdgeInsets.only(
                    left: Sizes.width10,
                    right: Sizes.width10,
                    top: Sizes.height10,
                    bottom: Sizes.height10),
              )),
          const LabelForm(label: Strings.email),
          TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelStyle: const TextStyle(color: ColorPalettes.textNeutral),
                filled: true,
                fillColor: ColorPalettes.bgGreyForm,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: ColorPalettes.greyBorderColor,
                    width: 1,
                  ),
                ),
                contentPadding: EdgeInsets.only(
                    left: Sizes.width10,
                    right: Sizes.width10,
                    top: Sizes.height10,
                    bottom: Sizes.height10),
              )),
          const LabelForm(label: Strings.password),
          TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelStyle: const TextStyle(color: ColorPalettes.textNeutral),
                filled: true,
                fillColor: ColorPalettes.bgGreyForm,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: ColorPalettes.greyBorderColor,
                    width: 1,
                  ),
                ),
                contentPadding: EdgeInsets.only(
                    left: Sizes.width10,
                    right: Sizes.width10,
                    top: Sizes.height10,
                    bottom: Sizes.height10),
              )),
          const LabelForm(label: Strings.confirmPassword),
          TextFormField(
              controller: _confirmPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                labelStyle: const TextStyle(color: ColorPalettes.textNeutral),
                filled: true,
                fillColor: ColorPalettes.bgGreyForm,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: ColorPalettes.greyBorderColor,
                    width: 1,
                  ),
                ),
                contentPadding: EdgeInsets.only(
                    left: Sizes.width10,
                    right: Sizes.width10,
                    top: Sizes.height10,
                    bottom: Sizes.height10),
              )),
          BlueButton(
            btnLabel: Strings.update,
            paddingTop: Sizes.height20,
            onPressed: () {
              print('btn update clicked');
            },
          ),
          SizedBox(
            height: Sizes.height10,
          )
        ],
      ),
    );
  }
}
