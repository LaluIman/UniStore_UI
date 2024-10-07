// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themeData() {
    return ThemeData(
      textTheme: GoogleFonts.plusJakartaSansTextTheme().copyWith(
        titleLarge: GoogleFonts.plusJakartaSansTextTheme().titleLarge?.copyWith(
          color: kTextColor,
          fontWeight: FontWeight.bold, 
        ),
        titleMedium: GoogleFonts.plusJakartaSansTextTheme().titleMedium?.copyWith(
          color: kTextColor,
          fontWeight: FontWeight.bold, 
        ),
        bodyMedium: GoogleFonts.plusJakartaSansTextTheme().bodyMedium?.copyWith(
          color: kTextColor,
          fontWeight: FontWeight.normal,
        ),
      ),
      scaffoldBackgroundColor: Colors.white,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      inputDecorationTheme: inputDecorationTheme()
    );
  }

  TextTheme textTheme() {
    return const TextTheme(
      titleLarge: TextStyle(
        color: kTextColor
      ),
      titleMedium: TextStyle(
        color: kTextColor
      ),
      bodyMedium: TextStyle(
        color: kTextColor
      ),
    );
  }

  InputDecorationTheme inputDecorationTheme() {
    var outlineInputBorder = const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(color: kPrimaryColor),
          gapPadding: 5
        );
    return InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 42,
          vertical: 20
        ),
        labelStyle: TextStyle(
          color: kPrimaryColor
        ),
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        border: outlineInputBorder
      );
  }