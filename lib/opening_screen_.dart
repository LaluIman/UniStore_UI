// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:e_commerce/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

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
    return Image.asset("assets/opening.png");
  }
}