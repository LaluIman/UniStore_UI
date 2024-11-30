// ignore_for_file: prefer_const_constructors
import 'package:e_commerce/constant.dart';
import 'package:flutter/material.dart';

themeData(bool isDarkMode) {
    return ThemeData(
      fontFamily: "PlusJakartaSans",
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
          color: kTextColor,
          fontSize: 18,
        )),
      //textTheme: GoogleFonts.plusJakartaSansTextTheme(),
      scaffoldBackgroundColor: isDarkMode ? Color(0xFF100F13) : Colors.white,
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
        // labelStyle: TextStyle(
        //   color: kPrimaryColor
        // ),
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        border: outlineInputBorder
      );
  }