// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, body_might_complete_normally_nullable

import 'package:e_commerce/constant.dart';
import 'package:e_commerce/screens/complete_profile_screen/components/complete_profile_form.dart';
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
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: SizeConfig.screenHeight * 0.10
            ),
            Text("Complete profile", style: headingStyle,),
            Text("Complete your profile data", textAlign: TextAlign.center),
            SizedBox(
              height: SizeConfig.screenHeight * 0.06
            ),
            CompleteProfileForm(),
            SizedBox(
              height: getPropScreenHeight(20),
            ),
        
            Text("By continuing you agreed with our \n term & condition", 
            textAlign: TextAlign.center,)
          ],),
        ),
      ),
    );
  }
}