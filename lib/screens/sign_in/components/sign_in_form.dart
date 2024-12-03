import 'package:e_commerce/components/cutom_suffix_icon.dart';
import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/components/error_form.dart';
import 'package:e_commerce/constant.dart';
import 'package:e_commerce/screens/forgot_password/forgot_password_screen.dart';
import 'package:e_commerce/screens/login_success/login_success_screen.dart';
import 'package:e_commerce/size_config.dart';
import 'package:e_commerce/state_managements/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  final List<String> errors = [];

  bool remember = false;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(children: [
          //email Firld
          emailForm(),
          SizedBox(
            height: getPropScreenHeight(30),
          ),
          //password field
          passwordForm(),
          SizedBox(
            height: getPropScreenHeight(30),
          ),
          rememberAndForgot(),
          SizedBox(
            height: getPropScreenHeight(20),
          ),
          //error message
          ErrorForm(
            errors: errors,
          ),
          SizedBox(
            height: getPropScreenHeight(20),
          ),
          DefaultButton(
              text: "Sign in",
              press: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                }
                if (errors.isEmpty) {
                  Provider.of<AuthProvider>(context, listen: false)
                      .setAuth(true);
                  Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                }
              })
        ]));
  }

  Row rememberAndForgot() {
    return Row(
      children: [
        Checkbox(
          value: remember,
          onChanged: (value) {
            setState(() {
              remember = value!;
            });
          },
          activeColor: Colors.black,
        ),
        const Text("Remember Me!"),
        const Spacer(),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, ForgotPasswordScreen.routeName);
          },
          child: const Text(
            "Forgot Password?",
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        )
      ],
    );
  }

  TextFormField passwordForm() {
    return TextFormField(
      onChanged: (value) {
        if (value.isEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
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
        } else if (value.length < 8 &&
            (!errors.contains(kPassNullError) &&
                !errors.contains(kShortPassError))) {
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
          )),
    );
  }

  TextFormField emailForm() {
    return TextFormField(
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
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
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            (!errors.contains(kPassNullError) &&
                !errors.contains(kInvalidEmailError))) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return "";
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
          labelText: "Email",
          hintText: "Enter Your Email",
          suffixIcon: CostumSuffixIcon(
            icon: "assets/icons/Mail.svg",
          )),
    );
  }
}
