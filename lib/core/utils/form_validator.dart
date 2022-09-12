import 'package:flutter/material.dart';

class FormValidator {
  FormValidator._();

  static String? validateEmail(BuildContext context, String value) {
    String pattern = r"(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)";
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return "Email can't be empty";
    } else if (!regExp.hasMatch(value)) {
      return "Email not valid";
    } else if (value.length > 100) {
      return "Email too long";
    } else {
      return null;
    }
  }

  static String? validatePassword(BuildContext context, String value, {String? textError}) {
    if (value.isEmpty) {
      return textError ?? "Password can't be empty";
    } else {
      return null;
    }
  }
}
