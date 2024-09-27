// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/screens/home_screen/components/header_component.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: getPropScreenHeight(20),
          ),
          headerComponent(),
          SizedBox(
            height: getPropScreenHeight(10),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(getPropScreenWidth(20)),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(15)
            ),
            child: Text.rich(
               TextSpan(
                style: TextStyle(
                  color: Colors.white
                ),
                children: [
                TextSpan(text: "a summer suprise! \n"),
                TextSpan(text: "Cashback 20%", style: TextStyle(
                  fontSize: getPropScreenWidth(25),
                  fontWeight: FontWeight.bold,
                ))
              ])
            ),)
        ],
      ),
    ));
  }
}



