// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/screens/sign_up/components/body.dart';
import 'package:e_commerce/state_managements/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignupScreen extends StatelessWidget {
  static String routeName = "/sign_up";
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeProvider.isDarkMode ? Color(0xFF100F13) : Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new_rounded, color: themeProvider.isDarkMode ? Colors.white : Colors.black,)),
      ),
      body: Body(),
    );
  }
}