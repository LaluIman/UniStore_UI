import 'package:e_commerce/screens/login_success/component/body.dart';
import 'package:e_commerce/state_managements/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName  = "/login-success";
  const LoginSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeProvider.isDarkMode ? Colors.transparent : Colors.white,
        leading: const SizedBox(),
      ),
      body: const Body(),
    );
  }
}