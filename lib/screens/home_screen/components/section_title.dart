import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class Sectiontitle extends StatelessWidget {
  const Sectiontitle({
    super.key,
    required this.title
  });


  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text(title, style: TextStyle(
        fontSize: getPropScreenWidth(18),
        fontWeight: FontWeight.w700,
      ),),
      Text("See more", style: TextStyle(
        fontSize: getPropScreenWidth(13),
        color: Colors.grey,
        fontWeight: FontWeight.w600,
        decoration: TextDecoration.underline
      ),)
    ],);
  }
}