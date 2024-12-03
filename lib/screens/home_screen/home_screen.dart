// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/screens/home_screen/components/body.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
     SizeConfig().init(context);
    return Scaffold(
      body: Body(),

    );
  }
}

