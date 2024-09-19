// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce/components/cutom_suffix_icon.dart';
import 'package:e_commerce/constant.dart';
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
          ],),
        ),
      ),
    );
  }
}

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({super.key});

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? address;

  final _formKey = GlobalKey<FormState>;
  List<String> errors = [];  
  @override
  Widget build(BuildContext context) {
    return Form(child: 
      Column(children: [
        TextFormField(
          onSaved: (newValue) => firstName = newValue,
          onChanged: (value){
            
          },
          validator: (value) {
            
          },
          decoration: const InputDecoration(
            labelText: "First name",
            hintText: "First name",
                                        
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CostumSuffixIcon(
              icon: "assets/icons/User.svg",
            )
          ),             
        )
      ],)
    );
  }
}