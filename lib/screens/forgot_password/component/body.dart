import 'package:e_commerce/constant.dart';
import 'package:e_commerce/screens/forgot_password/component/forgot_password_form.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text("Forgot Password", style: TextStyle(fontSize: 28, color: Colors.black, fontWeight: FontWeight.bold),
              ),
              const Text("Please enter your email and we will send \nyou a link to return to your account", textAlign: TextAlign.center),
              const SizedBox(height: 25),
              const ForgotPasswordForm(),
              const SizedBox(height: 25),
              dontHaveAccountText(),
            ],
          ),
        ),
      ),
    );
  }

  Row dontHaveAccountText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account? "),
        GestureDetector(
          onTap: () {},
          child: const Text("Sign Up", style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}