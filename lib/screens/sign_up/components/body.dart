// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:e_commerce/components/social_media_icon.dart';
import 'package:e_commerce/screens/sign_up/components/signup_form.dart';
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
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text("Register Account",
                style: TextStyle(
                    fontSize: getPropScreenWidth(28),
                    fontWeight: FontWeight.bold,
                    height: 1.5)),
            SizedBox(
              height: getPropScreenHeight(20),
            ),
            Text(
              "Register with your Email and Password \n or continue with Social Media",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: getPropScreenHeight(30),
            ),
            SignUpForm(),
            SizedBox(
              height: SizeConfig.screenHeight * 0.06,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialMediaIcon(
                    icon: "assets/icons/google-icon.svg", press: () {}),
                SocialMediaIcon(
                    icon: "assets/icons/facebook-2.svg", press: () {}),
                SocialMediaIcon(icon: "assets/icons/twitter.svg", press: () {})
              ],
            ),
            SizedBox(
              height: getPropScreenHeight(20),
            ),
            Text(
              "By continuing you agreed with our \n term & condition",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
