import 'package:e_commerce/constant.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Flash Icon.svg", "name": "Flash Deal"},
      {"icon": "assets/icons/Bill Icon.svg", "name": "Bill"},
      {"icon": "assets/icons/Game Icon.svg", "name": "Game"},
      {"icon": "assets/icons/Gift Icon.svg", "name": "Daily Gift"},
      {"icon": "assets/icons/More.svg", "name": "More", "color": Colors.black},
    ];
    return Padding(
      padding: EdgeInsets.all(getPropScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => itemCategory(
            icon: categories[index]["icon"],
            name: categories[index]["name"],
            color: categories[index]["color"] ?? kThirdColor,
          ),
        ),
      ),
    );
  }
}

class itemCategory extends StatelessWidget {
  const itemCategory({
    super.key,
    required this.name,
    required this.icon,
    this.color = kThirdColor,
  });

  final String name, icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getPropScreenWidth(55),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(getPropScreenWidth(15)),
            height: getPropScreenHeight(55),
            width: getPropScreenWidth(55),
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle
            ),
            child: SvgPicture.asset(icon),
          ),
          SizedBox(
            height: 10,
          ),
          Text(name, style: TextStyle(
            fontSize: getPropScreenWidth(10),
            fontWeight: FontWeight.w600
          ), textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}