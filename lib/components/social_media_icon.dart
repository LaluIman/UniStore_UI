import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({
    super.key, required this.icon, required this.press,
  });

  final String icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(getPropScreenWidth(12)),
        width: getPropScreenWidth(40),
        height: getPropScreenHeight(40),
        margin: EdgeInsets.symmetric(horizontal: getPropScreenWidth(10)),
        decoration: const BoxDecoration(
          color: Color(0xfff5f6f9),
          shape: BoxShape.circle
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}