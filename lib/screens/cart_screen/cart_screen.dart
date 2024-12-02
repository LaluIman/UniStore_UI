// import 'package:e_commerce/constant.dart';
import 'package:e_commerce/screens/cart_screen/components/body.dart';
import 'package:e_commerce/screens/cart_screen/components/checkout_container.dart';
import 'package:e_commerce/size_config.dart';
import 'package:e_commerce/state_managements/cart_provider.dart';
import 'package:e_commerce/state_managements/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static String routeName = "/cart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(context),
      body: Body(),
      bottomNavigationBar: BottomCheckOut(),
    );
  }

  AppBar Appbar(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return AppBar(
      centerTitle: true,
      title: Column(
        children: [
          Text("Cart",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color:
                      themeProvider.isDarkMode ? Colors.white : Colors.black)),
          Consumer<CartProvider>(
            builder: (context, cart, child) => Text(
              "${cart.cartItems.length} items",
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
      leading: Container(
        margin: EdgeInsets.only(left: getPropScreenWidth(10)),
        decoration: BoxDecoration(
            color: themeProvider.isDarkMode ? Colors.black : Colors.white,
            shape: BoxShape.circle),
        child: Center(
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 20,
              color: themeProvider.isDarkMode ? Colors.white : Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
