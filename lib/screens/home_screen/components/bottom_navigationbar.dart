import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.black,
      selectedFontSize: 15,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/icons/Shop Icon.svg"),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg"),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/icons/Bag.svg"),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/icons/Account.svg"),
          label: 'Account',
        ),
      ],
    );
  }
}