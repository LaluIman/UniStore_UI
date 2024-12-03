
import 'package:e_commerce/screens/profile_screen/components/body.dart';
import 'package:e_commerce/size_config.dart';
import 'package:e_commerce/state_managements/theme_provider.dart';
// import 'package:e_commerce/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  static String routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Profile",
          style: TextStyle(
              fontSize: getPropScreenWidth(20), fontWeight: FontWeight.w500, color: themeProvider.isDarkMode? Colors.white : Colors.black),
        ),
        backgroundColor: themeProvider.isDarkMode ? Color(0xFF100F13) : Colors.transparent,
        iconTheme: IconThemeData(
          color: themeProvider.isDarkMode ? Colors.white : Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {
              themeProvider.toggleTheme(!themeProvider.isDarkMode);
            },
            icon: Icon(
              themeProvider.isDarkMode ? Icons.wb_sunny : Icons.mode_night,
            ),
          )
        ],
      ),
      body: Body(),
    );
  }
}