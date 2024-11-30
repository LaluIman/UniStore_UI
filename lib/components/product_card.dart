import 'package:e_commerce/constant.dart';
import 'package:e_commerce/model/product_data.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    this.width = 140,
    this.aspectRatio = 1.02,
    required this.product, required this.press,
  });

  final double width, aspectRatio;
  final Product product;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      child: SizedBox(
        width: getPropScreenWidth(width),
        child: GestureDetector(
          onTap: press,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: aspectRatio,
                child: Container(
                  padding: EdgeInsets.all(getPropScreenWidth(20)),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(product.images[0]),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 50,
                child: Text(
                  product.title,
                  style: TextStyle(fontSize: 15),
                  maxLines: 2,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${product.price}",
                    style: TextStyle(
                      fontSize: getPropScreenWidth(18),
                      fontWeight: FontWeight.w600,
                      // color: kPrimaryColor,
                    ),
                  ),
                  InkWell(
                      borderRadius: BorderRadius.circular(50),
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(getPropScreenWidth(8)),
                        decoration: BoxDecoration(
                          color: product.isFavourite
                              ? kPrimaryColor.withOpacity(0.10)
                              : kSecondaryColor.withOpacity(0.1),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.favorite,
                          size: 20,
                          color: product.isFavourite
                              ? Colors.red
                              : Colors.white,
                        ),
                      ),
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
