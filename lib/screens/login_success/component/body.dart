// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/screens/home_screen/home_screen.dart';
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
            height: 20,
          ),
          const Text("Success!", style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
          ),

          SizedBox(
            height: 100,
          ),

          SizedBox(
            height: 50,
            width: 250,
            child: DefaultButton(text: "Continue", press: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            }),
          ),
        ],
      ),
    );
  }
}