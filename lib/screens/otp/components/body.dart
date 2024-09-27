// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce/constant.dart';
import 'package:e_commerce/screens/otp/components/otp_form.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.10
              ),
              Text("OTP verification", style: headingStyle,),
              Text("we send the code to +62 *** *** 90 ", textAlign: TextAlign.center),
              countDown(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.15
              ),
              OtpForm(),
          ],),
        ),
      ),
    );
  }

  Row countDown() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: const Text(
            "This code will expired in ",
            textAlign: TextAlign.center,
          ),
        ),
        TweenAnimationBuilder(
          tween: Tween(begin: 60.0, end: 0),
          duration: const Duration(seconds: 60),
          builder: (context, value, child) {
            return Text(
              "00:${value.toInt()}",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            );
          },
          onEnd: () {},
        )
      ],
    );
  }
}

