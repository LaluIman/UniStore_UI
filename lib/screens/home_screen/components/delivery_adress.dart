import 'package:e_commerce/constant.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class Delivery_address extends StatelessWidget {
  const Delivery_address({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
      Text("Delivery Address", style: TextStyle(
        fontSize: getPropScreenWidth(12),
        color: kSecondaryColor
      ),),
      Row(
        children: [
          Transform.rotate(
            angle: -1.6,
            child: Icon(Icons.chevron_left)),
          Text("Pamijahan, Bogor", style: TextStyle(
            fontWeight: FontWeight.w600
          ),),
        ],
      ),
    ],);
  }
}

