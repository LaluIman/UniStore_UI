import 'package:e_commerce/constant.dart';
import 'package:e_commerce/model/product_data.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class ImageDetail extends StatefulWidget {
  const ImageDetail({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<ImageDetail> createState() => _ImageDetailState();
}


class _ImageDetailState extends State<ImageDetail> {
  int currentIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getPropScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Hero(
              tag: "hero", 
              child: Image.asset(widget.product.images[currentIndex]),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: getPropScreenWidth(60)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              widget.product.images.length, 
              (index) => smallImage(index: index) 
            ),
          ),
        )
      ],
    );
  }

  Widget smallImage({required int index}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentIndex = index; 
        });
      },
      child: AnimatedContainer(
        duration: defaultDuration,
        margin: EdgeInsets.only(right: 16),
        padding: EdgeInsets.all(8),
        height: getPropScreenWidth(48),
        width: getPropScreenWidth(48),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: currentIndex == index ? kPrimaryColor : Colors.grey,
          ),
        ),
        child: Image.asset(widget.product.images[index]), 
      ),
    );
  }
}