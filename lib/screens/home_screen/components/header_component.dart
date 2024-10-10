// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce/screens/cart_screen/cart_screen.dart';
import 'package:e_commerce/screens/home_screen/components/icon_header.dart';
import 'package:e_commerce/screens/home_screen/components/search.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';



class headerComponent extends StatelessWidget {
  const headerComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
      child: Column(
        children: [
          //logo_header(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SearchField(),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, CartScreen.routeName);
                },
                child: IconHeader(
                  svgIcon: "assets/icons/Cart Icon.svg", 
                  trigger: "3",
                ),
              ),
              IconHeader(
                svgIcon: "assets/icons/Bell.svg",
              )
            ],
          ),
        ],
      ),
    );
  }
}

class logo_header extends StatelessWidget {
  const logo_header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Uni", style: TextStyle(
          fontSize: getPropScreenWidth(30),
          fontWeight: FontWeight.bold,
        ),),
        Text("Store", style: TextStyle(
          fontSize: getPropScreenWidth(30),
          fontWeight: FontWeight.w400,
        ),),
      ],
    );
  }
}

