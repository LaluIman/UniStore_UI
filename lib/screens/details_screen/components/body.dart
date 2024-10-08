import 'package:e_commerce/constant.dart';
import 'package:e_commerce/model/product_data.dart';
import 'package:e_commerce/screens/details_screen/components/image_detail.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          ImageDetail(product: product),
          roundedContainer(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
                child: Text(
                  product.title,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: getPropScreenWidth(20),
                    color: Colors.black,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: getPropScreenWidth(18),
                      vertical: getPropScreenHeight(10)),
                  decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(0.3),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(getPropScreenWidth(25)),
                        bottomLeft: Radius.circular(getPropScreenWidth(25)),
                      )),
                  child: Icon(Icons.favorite,
                      size: 18,
                      color: product.isFavourite == true
                          ? Colors.red
                          : Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getPropScreenWidth(20),
                    right: getPropScreenWidth(64)),
                child: Text(product.description),
              ),
            ],
          ))
        ],
      ),
    );
  }
}

class roundedContainer extends StatelessWidget {
  const roundedContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: getPropScreenHeight(20)),
      padding: EdgeInsets.only(top: getPropScreenHeight(20)),
      width: double.infinity,
      decoration: BoxDecoration(
        color: kThirdColor.withOpacity(0.3),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(getPropScreenWidth(25)),
          topRight: Radius.circular(getPropScreenWidth(25)),
        ),
        boxShadow: [
          BoxShadow(
            color: kThirdColor.withOpacity(0.3),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: child,
    );
  }
}
