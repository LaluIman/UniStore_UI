
// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Colors.black;
const kPrimaryLightColor = Color(0xffffecdf);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Colors.black,
    Color(0xffffecdf)
  ]
);
const kSecondaryColor = Color(0xff979797);
const kThirdColor = Color.fromRGBO(240, 240, 240, 1);
const kTextColor = Color(0xff757575);
const kAnimationDuration = Duration(milliseconds: 310);

final headingStyle = TextStyle(
  fontSize: getPropScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: kPrimaryColor,
  height: 1.5
);

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";

//complete profile
const String kNameNullError = "Please enter your name";
const String kPhoneNumberNullError = "Please enter your phone number";
const String kAddressNullError = "Please enter your address";

//otp style

final OtpFormDecoration = InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: getPropScreenWidth(15)),
    enabledBorder: otpOutlineInputBorder(),
    focusedBorder: otpOutlineInputBorder(),
    border: otpOutlineInputBorder(),
);

OutlineInputBorder otpOutlineInputBorder() {
  return OutlineInputBorder(
  borderRadius: BorderRadius.circular(15),
  borderSide: BorderSide(color: kTextColor),
  );
}

const defaultDuration = Duration(milliseconds: 250);

const moreLessColor = TextStyle(color: Colors.blue, fontWeight: FontWeight.w700);