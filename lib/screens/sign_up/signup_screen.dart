// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/screens/sign_up/components/body.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  static String routeName = "/sign_up";
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Body(),
    );
  }
}