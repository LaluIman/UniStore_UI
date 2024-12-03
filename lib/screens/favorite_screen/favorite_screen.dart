// import 'package:e_commerce/constant.dart';
import 'package:e_commerce/screens/favorite_screen/components/body.dart';
import 'package:e_commerce/size_config.dart';
import 'package:e_commerce/state_managements/favorite_provider.dart';
import 'package:e_commerce/state_managements/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});
  static String routeName = "/favorite";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(context),
      body: Body(),
    );
  }

  AppBar Appbar(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: Column(
        children: [
          Text("Favorite items",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color:
                      themeProvider.isDarkMode ? Colors.white : Colors.black)),
          Consumer<FavoriteProvider>(
            builder: (context, favorites, child) => Text(
              "${favorites.getFavoriteProducts.length} items",
              style: TextStyle(
                  fontSize: getPropScreenWidth(12),
                  fontWeight: FontWeight.w600,
                  color:
                      themeProvider.isDarkMode ? Colors.white : Colors.black),
            ),
          )
        ],
      ),
      backgroundColor: themeProvider.isDarkMode ? Color(0xFF100F13) : Colors.white,
    );
  }
}
