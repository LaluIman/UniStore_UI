import 'package:e_commerce/constant.dart';
import 'package:e_commerce/size_config.dart';
import 'package:e_commerce/state_managements/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class ProfileButtonSelection extends StatelessWidget {
  const ProfileButtonSelection({
    super.key,
    required this.svgIcon,
    required this.title,
    required this.press,
  });

  final String svgIcon, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: getPropScreenWidth(20),
            vertical: getPropScreenHeight(5)),
        padding: EdgeInsets.all(getPropScreenWidth(15)),
        decoration: BoxDecoration(
          color: kThirdColor.withOpacity(0.3),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            SvgPicture.asset(svgIcon, color: themeProvider.isDarkMode ? Colors.white : Colors.black,),
            SizedBox(
              width: getPropScreenWidth(15),
            ),
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: getPropScreenWidth(15)),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: kSecondaryColor,
              size: 15,
            ),
          ],
        ),
      ),
    );
  }
}
