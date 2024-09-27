import 'package:e_commerce/constant.dart';
import 'package:e_commerce/screens/complete_profile_screen/complete_profile_screen.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/components/cutom_suffix_icon.dart';
import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/components/error_form.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  String? email;
  String? password;
  String? confirmPassword;

  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
        child: Column(
          children: [
        
            //Email form
            emailFormField(),
            SizedBox(height: getPropScreenHeight(30),),
            //Password form
            passwordFormField(),
            SizedBox(height: getPropScreenHeight(30),),
            //Confirm password form
            passwordConfirmationFormField(),
            SizedBox(height: getPropScreenHeight(30),),
            ErrorForm(errors: errors),
            SizedBox(height: getPropScreenHeight(30),),
            DefaultButton(text: "Register", press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              }

              if(errors.isEmpty){
                Navigator.pushNamed(context, CompleteProfileScreen.routeName);
              }
            })
          ],
        ),
      ),
    );
  }

  TextFormField passwordFormField() {
    return TextFormField(
    onSaved: (newValue) => password = newValue,
    onChanged: (value){
      setState(() {
        password = value;
      });
      if (value.isEmpty && errors.contains(kPassNullError)) {
        setState(() {
          errors.remove(kPassNullError);
        });
      } else if (value.length >= 8 && errors.contains(kShortPassError)){
        setState(() {
          errors.remove(kShortPassError);
        });
      }
      return;
    },
    validator: (value) {
      if (value!.isEmpty && !errors.contains(kPassNullError)) {
        setState(() {
          errors.add(kPassNullError);
        });
        return "";
      } else if (value.length < 8 &&(!errors.contains(kPassNullError)&&!errors.contains(kShortPassError))) {
        setState(() {
          errors.add(kShortPassError);
        });
        return "";
      }
      return null;
    },
    obscureText: true,
    decoration: const InputDecoration(
      labelText: "Password",
      hintText: "Enter Your Password",
                                  
      suffixIcon: CostumSuffixIcon(
        icon: "assets/icons/Lock.svg",
      )
    ),             
  );
  }

  TextFormField emailFormField() {
    return TextFormField(
          onSaved: (newValue) => email = newValue,
          onChanged: (value){
            if (value.isNotEmpty && errors.contains(kEmailNullError)) {
              setState(() {
                errors.remove(kEmailNullError);
              });
            } else if (emailValidatorRegExp.hasMatch(value) && errors.contains(kInvalidEmailError)) {
              setState(() {
                errors.remove(kInvalidEmailError);
              });
            }
            return;
          },
          validator: (value) {
            if (value!.isEmpty && !errors.contains(kEmailNullError)) {
              setState(() {
                errors.add(kEmailNullError);
              });
              return"";
            } else if (!emailValidatorRegExp.hasMatch(value) && (!errors.contains(kPassNullError) && !errors.contains(kInvalidEmailError))) {
              setState(() {
                errors.add(kInvalidEmailError);
              });
              return"";
            }
            return null;
          },
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            labelText: "Email",
            hintText: "Enter Your Email",
                                        
            // floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CostumSuffixIcon(
              icon: "assets/icons/Mail.svg",
            )
          ),             
        );

  }

  TextFormField passwordConfirmationFormField() {
    return TextFormField(
    onSaved: (newValue) => confirmPassword = newValue,
    onChanged: (value){
     if(password == value){
      setState(() {
        errors.remove(kMatchPassError);
      });
     }
    },
    validator: (value) {
      if (value!.isEmpty){
        return "";
      } else if (value != password){
        setState(() {
          errors.add(kMatchPassError);
        });
      }
      return null;
    },
    obscureText: true,
    decoration: const InputDecoration(
      labelText: "Repeat password",
      hintText: "Repeat password",
                                  
      suffixIcon: CostumSuffixIcon(
        icon: "assets/icons/Lock Circle.svg",
      )
    ),
  );
  }
}