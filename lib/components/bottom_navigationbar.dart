import 'package:e_commerce/screens/favorite_screen/favorite_screen.dart';
import 'package:e_commerce/screens/home_screen/home_screen.dart';
import 'package:e_commerce/screens/profile_screen/profile_screen.dart';
import 'package:e_commerce/size_config.dart';
import 'package:e_commerce/state_managements/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class CustomNavigationBar extends StatefulWidget {
  static String routeName = "/custom_navigation_bar";
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    const HomeScreen(),
    const FavoriteScreen(),
    const Center(
      child: Text("Chat"),
    ),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final bool isDarkMode = themeProvider.isDarkMode;

    final Color selectedIconColor = isDarkMode ? Colors.white : Colors.black;
    final Color unselectedIconColor =
        isDarkMode ? Colors.grey[600]! : Colors.grey[500]!;

    SizeConfig().init(context);
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: themeProvider.isDarkMode ? Colors.black : Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: selectedIconColor,
        unselectedItemColor: unselectedIconColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/Shop Icon.svg',
              color:
                  _selectedIndex == 0 ? selectedIconColor : unselectedIconColor,
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/Shop Icon.svg',
              color: selectedIconColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/heart_icon.svg',
                color: unselectedIconColor),
            activeIcon: SvgPicture.asset(
              'assets/icons/heart_icon.svg',
              color: selectedIconColor,
            ),
            label: 'Favorite',
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
              color:
                  _selectedIndex == 3 ? selectedIconColor : unselectedIconColor,
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/Account.svg',
              color: selectedIconColor,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
