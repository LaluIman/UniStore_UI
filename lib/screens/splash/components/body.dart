// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/state_managements/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/constant.dart';
import 'package:e_commerce/model/splash_data.dart';
import 'package:e_commerce/screens/sign_in/sign_in_screen.dart';
import 'package:e_commerce/screens/splash/components/splash_content.dart';
import 'package:provider/provider.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: PageView.builder(
                    controller: _pageController,
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: splashData.length,
                    itemBuilder: (context, index) => Center(
                        child: SplashContent(
                            text: splashData[index]["text"]!,
                            image: index == 0
                                ? (Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? splashData[index]["image_dark"]!
                                    : splashData[index]["image_light"]!)
                                : splashData[index][
                                    "image"]!
                            )))),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Spacer(),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(splashData.length,
                          (index) => dotBuilder(index: index))),
                  Spacer(
                    flex: 3,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: themeProvider.isDarkMode ? Colors.grey.shade600 : Colors.black,
                        foregroundColor: Colors.white,
                        shape: currentPage < splashData.length - 1
                            ? CircleBorder()
                            : RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                currentPage < splashData.length - 1 ? 10 : 15,
                            vertical:
                                currentPage < splashData.length - 1 ? 10 : 7)),
                    onPressed: () {
                      if (currentPage < splashData.length - 1) {
                        _pageController.nextPage(
                          duration: kAnimationDuration,
                          curve: Curves.fastOutSlowIn,
                        );
                      } else {
                        Navigator.pushNamedAndRemoveUntil(
                            context,
                            SignInScreen.routeName,
                            (Route<dynamic> routes) => false);
                      }
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          currentPage < splashData.length - 1 ? '' : 'Enter',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.chevron_right,
                          size: 25,
                        ),
                      ],
                    ),
                  ),
                  Spacer()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer dotBuilder({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 6),
      height: currentPage == index ? 25 : 10,
      width: 10,
      decoration: BoxDecoration(
          color: currentPage == index
              ? const Color.fromARGB(255, 129, 129, 129)
              : Color(0xffd8d8d8),
          borderRadius: BorderRadius.circular(5)),
    );
  }
}
