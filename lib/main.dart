//import 'package:e_commerce/constant.dart';
import 'package:device_preview/device_preview.dart';
import 'package:e_commerce/components/bottom_navigationbar.dart';
import 'package:e_commerce/opening_screen_.dart';
import 'package:e_commerce/routes.dart';
import 'package:e_commerce/state_managements/auth_provider.dart';
import 'package:e_commerce/state_managements/cart_provider.dart';
import 'package:e_commerce/state_managements/favorite_provider.dart';
import 'package:e_commerce/state_managements/theme_provider.dart';
import 'package:e_commerce/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isLoggedIn = prefs.getBool("isLoggedIn") ?? false;
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => AuthProvider()),
        ChangeNotifierProvider(create: (context) => CartProvider()),
        ChangeNotifierProvider(create: (context) => FavoriteProvider()),
      ],
      child: DevicePreview(
          isToolbarVisible: false,
          enabled: true,
          builder: (context) => MainApp(isLoggedIn: isLoggedIn))));
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
              useInheritedMediaQuery: true,
              locale: DevicePreview.locale(context),
              builder: DevicePreview.appBuilder,
              initialRoute: isLoggedIn
                  ? CustomNavigationBar.routeName
                  : OpeningScreen.routeName,
              routes: routes,
            ));
  }
}
