import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/constant.dart';
import 'package:e_commerce/screens/home_screen/home_screen.dart';
import 'package:e_commerce/screens/login_success/login_success_screen.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({
    super.key,
  });

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  final _formKey = GlobalKey<FormState>();

  final List<String?> otp = List.filled(4, null);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              otp.length,
              (index) => OtpField(index: index, otp: otp),
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.15,
          ),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              }
              if(otp.isNotEmpty) {
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }
}

class OtpField extends StatefulWidget {
  const OtpField({
    super.key,
    required this.index,
    required this.otp,
  });

  final int index;
  final List<String?> otp;

  @override
  State<OtpField> createState() => _OtpFieldState();
}

class _OtpFieldState extends State<OtpField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getPropScreenWidth(60),
      child: TextFormField(
        onSaved: (newValue) =>
            setState(() => widget.otp[widget.index] = newValue),
        onChanged: (value) {
          if (value.isEmpty && widget.index > 0) {
            FocusScope.of(context).previousFocus();
          } else if (value.isEmpty && widget.index == 0) {
            FocusScope.of(context).requestFocus();
          } else if (widget.index == widget.otp.length - 1) {
            FocusScope.of(context).unfocus();
          } else {
            FocusScope.of(context).nextFocus();
          }
        },
        validator: (value) {
          if (value!.isEmpty) {
            return "";
          }
          return null;
        },
        keyboardType: TextInputType.number,
        obscureText: true,
        maxLength: 1,
        maxLengthEnforcement: MaxLengthEnforcement.enforced,
        buildCounter: (context,
                {required currentLength,
                required isFocused,
                required maxLength}) =>
            null,
        style: const TextStyle(fontSize: 24),
        textAlign: TextAlign.center,
        decoration: OtpFormDecoration,
      ),
    );
  }
}