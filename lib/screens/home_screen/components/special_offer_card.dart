import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class SpecialOffer extends StatelessWidget {
  const SpecialOffer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.only(right: 20),
        child: Row(children: [
          SpecialOfferCard(category: "Smartphones", image: "assets/images/Image Banner 2.png", numOfBrands: 18),
          SpecialOfferCard(category: "Fashion", image: "assets/images/Image Banner 3.png", numOfBrands: 28),
        ],),
      ),
    );
  }
}


class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    super.key,
    required this.category,
    required this.image,
    required this.numOfBrands,
  });
  final String category, image;
  final int numOfBrands;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getPropScreenWidth(20)),
      child: GestureDetector(
        child: SizedBox(
          width: getPropScreenWidth(242),
          height: getPropScreenWidth(120),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getPropScreenWidth(15.0),
                      vertical: getPropScreenWidth(10),
                    ),
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(color: Colors.white),
                        children: [
                          TextSpan(
                            text: "$category\n",
                            style: TextStyle(
                              fontSize: getPropScreenWidth(18),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(text: "$numOfBrands Brands")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ),
      ),
    );
  }
}


