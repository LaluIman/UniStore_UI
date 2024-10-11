import 'package:e_commerce/model/cart_data.dart';
import 'package:e_commerce/screens/cart_screen/components/cart_item.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return CartItem(cart: listCart[0],); //belum kelar
  }
}
