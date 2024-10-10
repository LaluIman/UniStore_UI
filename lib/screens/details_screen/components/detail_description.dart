import 'package:e_commerce/constant.dart';
import 'package:e_commerce/model/product_data.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class detailDescription extends StatelessWidget {
  const detailDescription({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20), vertical: getPropScreenHeight(5)),
          child: Text(
            product.title,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: getPropScreenWidth(20),
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getPropScreenWidth(10),
              vertical: getPropScreenHeight(10)),
          child: belowTitleGroup(product: product),
        ),
        PriceContainer(product: product),
        Padding(
          padding: EdgeInsets.only(
              left: getPropScreenWidth(20), right: getPropScreenWidth(64)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Product Description",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: getPropScreenHeight(10),
              ),
              ReadMoreText(
                product.description,
                trimMode: TrimMode.Line,
                trimLines: 3,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Show less',
                moreStyle: moreLessColor,
                lessStyle: moreLessColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PriceContainer extends StatelessWidget {
  const PriceContainer({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getPropScreenWidth(20),
            vertical: getPropScreenHeight(10)),
        child: Container(
          width: double.infinity,
          height: 60,
          padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
          decoration: BoxDecoration(
            color: kSecondaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Text(
                "\$${product.price}",
                style: TextStyle(
                    fontSize: getPropScreenWidth(18),
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                width: 5,
              ),
              Text("from \$4 dollar per month"),
              Spacer(),
              Icon(Icons.info_outline_rounded)
            ],
          ),
        ));
  }
}

class belowTitleGroup extends StatelessWidget {
  const belowTitleGroup({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: getPropScreenWidth(80),
          height: getPropScreenHeight(40),
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: kSecondaryColor),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "${product.rating}",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        Container(
          width: getPropScreenWidth(80),
          height: getPropScreenHeight(40),
          margin: EdgeInsets.only(left: 5),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: kSecondaryColor),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.thumb_up,
                size: 20,
                color: Colors.blue,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "94%",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        Container(
          width: getPropScreenWidth(80),
          height: getPropScreenHeight(40),
          margin: EdgeInsets.only(left: 5),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: kSecondaryColor),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.chat_bubble,
                size: 20,
                color: kSecondaryColor,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "10",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
