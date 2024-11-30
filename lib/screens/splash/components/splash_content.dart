// ignore_for_file: prefer_const_constructors

// import 'package:e_commerce/constant.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key, required this.text, required this.image,
  });

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Uni",
              style: TextStyle(
                fontSize: getPropScreenWidth(36),
                // color: kPrimaryColor,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              "Store",
              style: TextStyle(
                fontSize: getPropScreenWidth(36),
                // color: kPrimaryColor,
                fontWeight: FontWeight.w300
              ),
            ),
          ],
        ),

        Text(
         text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getPropScreenWidth(16),
            // color: kTextColor
          ),
        ),
         SizedBox(
          height: 45,
        ),
        Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}