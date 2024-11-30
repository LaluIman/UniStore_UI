//import 'package:e_commerce/constant.dart';
import 'package:e_commerce/opening_screen_.dart';
import 'package:e_commerce/routes.dart';
import 'package:e_commerce/screens/home_screen/home_screen.dart';
import 'package:e_commerce/state_managements/auth_provider.dart';
import 'package:e_commerce/state_managements/theme_provider.dart';
import 'package:e_commerce/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isLoggedIn = prefs.getBool("isLoggedIn") ?? false;
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => ThemeProvider()),
    ChangeNotifierProvider(create: (context) => AuthProvider()),
  ], child: MainApp(isLoggedIn: isLoggedIn)));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key, required this.isLoggedIn});

  final bool isLoggedIn;

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, theme, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: themeData(theme.isDarkMode),
        initialRoute: isLoggedIn ? HomeScreen.routeName : OpeningScreen.routeName,
        routes: routes,
      ));
  }
}
