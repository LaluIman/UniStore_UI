import 'package:e_commerce/constant.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key, required this.text, required this.press,
  });

  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimaryColor,
        minimumSize: Size(double.infinity, getPropScreenHeight(56)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
      ),
      child :Text(
        text,
        style: TextStyle(
          fontSize: getPropScreenWidth(18),
          color: Colors.white,
          fontWeight: FontWeight.w600
        ),
      )
    );
  }
}

