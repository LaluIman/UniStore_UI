import 'package:e_commerce/components/bottom_navigationbar.dart';
import 'package:e_commerce/enum.dart';
import 'package:e_commerce/screens/profile_screen/components/body.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  static String routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Profile", style: TextStyle(
          fontSize: getPropScreenWidth(20),
          fontWeight: FontWeight.w500
        ),),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavigationBar(menu: MenuState.profile)
    );
  }
}