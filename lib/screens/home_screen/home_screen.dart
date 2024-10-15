// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/enum.dart';
import 'package:e_commerce/screens/home_screen/components/body.dart';
import 'package:e_commerce/components/bottom_navigationbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),

      bottomNavigationBar: CustomBottomNavigationBar(menu: MenuState.home)
    );
  }
}

