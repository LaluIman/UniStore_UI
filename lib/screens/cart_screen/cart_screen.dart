import 'package:e_commerce/constant.dart';
import 'package:e_commerce/model/cart_data.dart';
import 'package:e_commerce/screens/cart_screen/components/body.dart';
import 'package:e_commerce/screens/cart_screen/components/checkout_container.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

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
    return AppBar(
      centerTitle: true,
      title: Column(
        children: [
          Text("Cart",
              style:
                  TextStyle(fontWeight: FontWeight.w700, color: kPrimaryColor)),
          Text(
            "${listCart.length} items",
            style: TextStyle(
                fontSize: getPropScreenWidth(12), fontWeight: FontWeight.w600),
          )
        ],
      ),
      backgroundColor: Colors.white,
      leading: Container(
        margin: EdgeInsets.only(left: getPropScreenWidth(10)),
        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        child: Center(
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 20,
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

