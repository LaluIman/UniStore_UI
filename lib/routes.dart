import 'package:e_commerce/components/bottom_navigationbar.dart';
import 'package:e_commerce/model/product_data.dart';
import 'package:e_commerce/opening_screen_.dart';
import 'package:e_commerce/screens/cart_screen/cart_screen.dart';
import 'package:e_commerce/screens/complete_profile_screen/complete_profile_screen.dart';
import 'package:e_commerce/screens/details_screen/detail_screen.dart';
import 'package:e_commerce/screens/favorite_screen/favorite_screen.dart';
import 'package:e_commerce/screens/forgot_password/forgot_password_screen.dart';
import 'package:e_commerce/screens/home_screen/home_screen.dart';
import 'package:e_commerce/screens/login_success/login_success_screen.dart';
import 'package:e_commerce/screens/otp/otp_screen.dart';
import 'package:e_commerce/screens/profile_screen/profile_screen.dart';
import 'package:e_commerce/screens/sign_in/sign_in_screen.dart';
import 'package:e_commerce/screens/sign_up/signup_screen.dart';
import 'package:e_commerce/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  OpeningScreen.routeName: (context) => const OpeningScreen(),
  CustomNavigationBar.routeName: (context) => const CustomNavigationBar(),
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignupScreen.routeName: (context) => const SignupScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailScreen.routeName: (context) {
    final product = ModalRoute.of(context)!.settings.arguments as Product;
    return DetailScreen(product: product);
  },
  CartScreen.routeName: (context) => const CartScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  FavoriteScreen.routeName: (context) => const FavoriteScreen(),
};
