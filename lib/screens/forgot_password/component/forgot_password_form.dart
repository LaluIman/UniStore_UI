import 'package:e_commerce/components/cutom_suffix_icon.dart';
import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/components/error_form.dart';
import 'package:e_commerce/constant.dart';
import 'package:flutter/material.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {

  final  _formKey = GlobalKey<FormState>();
  String? email;
  final  List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
      children: [
        emailFormField(),
        const SizedBox(height: 15),
        ErrorForm(errors: errors),
        const SizedBox(height: 15),
        DefaultButton(text: "Reset Password", press: (){
          if(_formKey.currentState!.validate()) {
            _formKey.currentState!.save();
          }
        }),
      ],
    ));
  }
  TextFormField emailFormField() {
    return TextFormField(
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if(emailValidatorRegExp.hasMatch(value) && errors.contains(kInvalidEmailError)) {
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
        } else if(!emailValidatorRegExp.hasMatch(value) && (!errors.contains(kPassNullError) && !errors.contains(kInvalidEmailError))){
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
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CostumSuffixIcon(
          icon: "assets/icons/Mail.svg",
        ),
      ),
    );
  }
}