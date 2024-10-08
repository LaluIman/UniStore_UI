import 'package:e_commerce/model/product_data.dart';
import 'package:e_commerce/components/product_card.dart';
import 'package:e_commerce/screens/details_screen/detail_screen.dart';
import 'package:flutter/material.dart';
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
              child: Padding(
                padding: EdgeInsets.only(right: 20),
                child: Row(
                    children: List.generate(demoProducts.length, (index) {
                      final Product product = demoProducts[index];
                  return ProductCard(
                    product: demoProducts[index],
                    press: () =>
                        Navigator.pushNamed(context, DetailScreen.routeName, arguments: product),
                  );
                })),
              ),
            ),
            SizedBox(height: getPropScreenHeight(20)),
          ],
        ),
      ),
    );
  }
}
