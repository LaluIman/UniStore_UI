// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/screens/home_screen/home_screen.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Image.asset("assets/images/success1.png"),
          const SizedBox(
            height: 50,
          ),
          const Text("Success!", style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            // color: Colors.black
          ),
          ),

          SizedBox(
            height: 50,
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(10)),
            child: SizedBox(
              height: 60,
              child: DefaultButton(text: "Continue", press: () {
                Navigator.pushNamedAndRemoveUntil(context, HomeScreen.routeName, (Route<dynamic> routes) => false);
              }),
            ),
          ),
        ],
      ),
    );
  }
}