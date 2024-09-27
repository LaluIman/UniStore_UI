// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchField(),
          IconHeader(
            svgIcon: "assets/icons/Cart Icon.svg", 
          ),
          IconHeader(
            svgIcon: "assets/icons/Bell.svg",
            trigger: "3",
          )
        ],
      ),
    );
  }
}

