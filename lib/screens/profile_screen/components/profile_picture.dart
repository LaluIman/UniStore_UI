import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: getPropScreenWidth(115),
        height: getPropScreenHeight(115),
        child: Stack(
          clipBehavior: Clip.none,
          fit: StackFit.expand,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/CJ.png"),
            ),
            Positioned(
                bottom: 0,
                right: -10,
                child: Container(
                  width: getPropScreenWidth(40),
                  height: getPropScreenHeight(40),
                  decoration: BoxDecoration(
                      color: Color(0xFFF5F6FF),
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: Colors.white)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
