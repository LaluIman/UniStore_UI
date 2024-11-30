import 'package:e_commerce/constant.dart';
import 'package:e_commerce/size_config.dart';
import 'package:e_commerce/state_managements/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key, required this.text, required this.press,
  });

  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return ElevatedButton(
      onPressed: press,
      style: ElevatedButton.styleFrom(
        backgroundColor: themeProvider.isDarkMode ? Colors.grey.shade900 : kPrimaryColor,
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

