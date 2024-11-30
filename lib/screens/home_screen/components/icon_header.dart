import 'package:e_commerce/constant.dart';
import 'package:e_commerce/size_config.dart';
import 'package:e_commerce/state_managements/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

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
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: getPropScreenWidth(46),
          width: getPropScreenWidth(46),
          padding: EdgeInsets.all(getPropScreenWidth(12)),
          decoration: BoxDecoration(
            color: themeProvider.isDarkMode ? Colors.grey.shade700 : kSecondaryColor.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(svgIcon, color: themeProvider.isDarkMode ? Colors.white : Colors.black,),
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
                border: Border.all(width: 1.5, color: themeProvider.isDarkMode ? Colors.black : Colors.white),
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