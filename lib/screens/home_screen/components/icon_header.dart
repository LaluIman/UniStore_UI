import 'package:e_commerce/constant.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconHeader extends StatelessWidget {
  const IconHeader({
    super.key,
    required this.svgIcon,
    this.trigger
  });

  final String svgIcon;
  final String? trigger;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: getPropScreenWidth(46),
          width: getPropScreenWidth(46),
          padding: EdgeInsets.all(getPropScreenWidth(12)),
          decoration: BoxDecoration(
            color: kSecondaryColor.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(svgIcon),
        ),
        if (trigger != null && trigger != "0")
        Positioned(
            right: 0,
            top: -3,
            child: Container(
              width: getPropScreenWidth(18),
              height: getPropScreenWidth(18),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
                border: Border.all(width: 1.5, color: Colors.white),
              ),
              child: Center(
                child: Text(
                  trigger!,
                  style: TextStyle(
                      fontSize: getPropScreenWidth(12),
                      color: Colors.white,
                      height: 1,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ))
      ],
    );
  }
}