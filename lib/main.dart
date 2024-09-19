//import 'package:e_commerce/constant.dart';
import 'package:e_commerce/opening_screen_.dart';
import 'package:e_commerce/routes.dart';
import 'package:e_commerce/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData(),
      initialRoute: OpeningScreen.routeName,
      routes: routes,
    );
  }
}