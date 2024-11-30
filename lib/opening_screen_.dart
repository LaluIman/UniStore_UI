// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:e_commerce/screens/splash/splash_screen.dart';
import 'package:e_commerce/state_managements/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OpeningScreen extends StatefulWidget {
  const OpeningScreen({super.key});
  static String routeName = "/opening";

  @override
  State<OpeningScreen> createState() => _OpeningScreenState();
}

class _OpeningScreenState extends State<OpeningScreen> {
  @override
  
  void initState() {
    super.initState();
    Future.delayed( Duration(seconds: 5), () {
      Navigator.pushNamed(context, SplashScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Image.asset(themeProvider.isDarkMode ? "assets/opening.png" : "assets/splashDark.png");
  }
}