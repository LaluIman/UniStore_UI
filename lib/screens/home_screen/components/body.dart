// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce/screens/home_screen/components/header_component.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(image: AssetImage("assets/images/photo1.png"), fit: BoxFit.cover)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("a summer suprise", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),),
                Text("Cashback 20%", style: GoogleFonts.bebasNeue(
                  fontSize: getPropScreenWidth(35),
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow
                ),),
              ],
            ))
        ],
      ),
    ));
  }
}



