import 'package:e_commerce/state_managements/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:e_commerce/screens/home_screen/home_screen.dart';
import 'package:e_commerce/screens/profile_screen/profile_screen.dart';
import 'package:e_commerce/enum.dart';
import 'package:provider/provider.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.menu,
  });

  final MenuState menu;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final bool isDarkMode = themeProvider.isDarkMode;

    final Color selectedIconColor = isDarkMode ? Colors.white : Colors.black;
    final Color unselectedIconColor =
        isDarkMode ? Colors.grey[600]! : Colors.grey[600]!;

    return BottomNavigationBar(
      backgroundColor: isDarkMode ? Color(0xFF100F13): Colors.white,
      type: BottomNavigationBarType.fixed,
      currentIndex: MenuState.values.indexOf(menu),
      selectedItemColor: selectedIconColor,
      unselectedItemColor: unselectedIconColor,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      onTap: (index) {
        switch (MenuState.values[index]) {
          case MenuState.home:
            _navigateWithFadeTransition(context, HomeScreen());
            break;
          case MenuState.profile:
            _navigateWithFadeTransition(context, ProfileScreen());
            break;
          default:
            break;
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/Shop Icon.svg',
            color: menu == MenuState.home
                ? selectedIconColor
                : unselectedIconColor,
          ),
          activeIcon: SvgPicture.asset(
            'assets/icons/Shop Icon.svg',
            color: selectedIconColor,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/Bag.svg',
              color: unselectedIconColor),
          activeIcon: SvgPicture.asset(
            'assets/icons/Bag.svg',
            color: selectedIconColor,
          ),
          label: 'Bag',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/Chat bubble Icon.svg',
            color: unselectedIconColor,
          ),
          activeIcon: SvgPicture.asset(
            'assets/icons/Chat bubble Icon.svg',
            color: selectedIconColor,
          ),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/Account.svg',
            color: menu == MenuState.profile
                ? selectedIconColor
                : unselectedIconColor,
          ),
          activeIcon: SvgPicture.asset(
            'assets/icons/Account.svg',
            color: selectedIconColor,
          ),
          label: 'Profile',
        ),
      ],
    );
  }

  void _navigateWithFadeTransition(BuildContext context, Widget page) {
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
        transitionDuration: const Duration(milliseconds: 150),
      ),
    );
  }
}
