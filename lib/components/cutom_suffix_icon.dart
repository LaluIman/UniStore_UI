import 'package:e_commerce/size_config.dart';
import 'package:e_commerce/state_managements/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class CostumSuffixIcon extends StatelessWidget {
  const CostumSuffixIcon({
    super.key, required this.icon,
  });

  final String icon;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0, 
        getPropScreenWidth(20), 
        getPropScreenWidth(20), 
        getPropScreenWidth(20)
      ),
      child: SvgPicture.asset(
        icon,
        width: getPropScreenWidth(20),
        color: themeProvider.isDarkMode ? Colors.white : Colors.black,
      ),
    );
  }
}