import 'package:flutter/material.dart';
import 'package:e_commerce/constant.dart';
import 'package:e_commerce/screens/home_screen/components/cashback_banner.dart';
import 'package:e_commerce/screens/home_screen/components/categories.dart';
import 'package:e_commerce/screens/home_screen/components/header_component.dart';
import 'package:e_commerce/screens/home_screen/components/section_title.dart';
import 'package:e_commerce/screens/home_screen/components/special_offer_card.dart';
import 'package:e_commerce/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getPropScreenHeight(20)),

            headerComponent(),

            SizedBox(height: getPropScreenHeight(20)),

            cashbackBanner(),
            Categories(),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
              child: Sectiontitle(title: "Special for you"),
            ),

            SizedBox(height: getPropScreenHeight(20)),

            SpecialOffer(),

            SizedBox(height: getPropScreenHeight(20)),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
              child: Sectiontitle(title: "Popular product"),
            ),

            SizedBox(height: getPropScreenHeight(20)),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: getPropScreenWidth(140),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          width: getPropScreenWidth(140),
                          height: getPropScreenHeight(140),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: kSecondaryColor.withOpacity(0.1),
                          ),
                          child: Image.asset("assets/images/ps4_console_white_1.png"),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Wireless controller",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: getPropScreenHeight(15),
                            color: Colors.black
                          ),
                          maxLines: 2,
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$64.99",
                              style: TextStyle(
                                fontSize: getPropScreenWidth(12),
                                color: kPrimaryColor,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: Colors.red.withOpacity(0.5),
                                shape: BoxShape.circle
                              ),
                              child: Icon(Icons.favorite, size: 20, color: Colors.white,),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ]
              ),
            ),
            SizedBox(height: getPropScreenHeight(20)),
          ],
        ),
      ),
    );
  }
}
