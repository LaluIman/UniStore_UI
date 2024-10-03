// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce/components/social_media_icon.dart';
import 'package:e_commerce/constant.dart';
import 'package:e_commerce/screens/sign_in/components/sign_in_form.dart';
import 'package:e_commerce/screens/sign_up/signup_screen.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  bool remember = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/topbro.png", 
          fit: BoxFit.cover, 
          height: 120, 
          width: double.infinity,
        ),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.0,
                  ),
                  Column(
                    children: [
                      Text(
                        "Sign in to",
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: getPropScreenWidth(15),
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Uni",
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: getPropScreenWidth(35),
                              fontWeight: FontWeight.bold
                            ),
                          ),
                           Text(
                            "Store",
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: getPropScreenWidth(35),
                              fontWeight: FontWeight.w400
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.02,
                  ),
                  const Text(
                    "Sign in with your Email and Password \n or continue with Social Media",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.06,
                  ),
                  // sign if formnya
                  SignInForm(),
        
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.06,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialMediaIcon(
                        icon: "assets/icons/google-icon.svg", 
                        press: (){}
                      ),
                      SocialMediaIcon(
                        icon: "assets/icons/facebook-2.svg", 
                        press: (){}
                      ),
                      SocialMediaIcon(
                        icon: "assets/icons/twitter.svg", 
                        press: (){}
                      )
                    ],
                  ),
                  SizedBox(height: getPropScreenHeight(20),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an Account? "),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, SignupScreen.routeName);
                        },
                        child: Text(
                          "Register!",
                          style: TextStyle(
                            color: kPrimaryColor
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}