import 'package:e_commerce/screens/home_screen/components/search.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/screens/home_screen/components/icon_header.dart';
import 'package:e_commerce/size_config.dart';
import 'package:e_commerce/state_managements/cart_provider.dart';
import 'package:provider/provider.dart';

class HeaderComponent extends StatelessWidget {
  final Function(String) onSearchChanged;

  const HeaderComponent({
    super.key,
    required this.onSearchChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SearchField(onChanged: onSearchChanged),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/cart');
                },
                child: Consumer<CartProvider>(
                  builder: (context, cart, child) => IconHeader(
                    svgIcon: "assets/icons/Cart Icon.svg",
                    trigger: cart.cartItems.length.toString(),
                  ),
                ),
              ),
              IconHeader(
                svgIcon: "assets/icons/Bell.svg",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
