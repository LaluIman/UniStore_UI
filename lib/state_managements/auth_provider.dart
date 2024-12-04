import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider extends ChangeNotifier {
  bool _isLoggedIn = false;
  bool get isLoggedIn => _isLoggedIn;

  String _savedEmail = '';
  String get savedEmail => _savedEmail;

  AuthProvider() {
    loadAuth();
  }

  void loadAuth() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _isLoggedIn = prefs.getBool("isLoggedIn") ?? false;
    _savedEmail = prefs.getString("savedEmail")  ?? '';
    print("loadAuth: $_isLoggedIn");
    notifyListeners();
  }

  void setAuth(bool status) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _isLoggedIn = status;
    await prefs.setBool("isLoggedIn", status);
    notifyListeners();
  }

  void saveEmailUser(String emailBro) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _savedEmail = emailBro;
    await prefs.setString("savedEmail", emailBro);
    notifyListeners();
  }

  void logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _isLoggedIn = false;
    await prefs.setBool("isLoggedIn", false);
    notifyListeners();
  }
}
