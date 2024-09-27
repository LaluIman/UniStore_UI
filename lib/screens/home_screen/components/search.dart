import 'package:e_commerce/constant.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.6,
      decoration: BoxDecoration(
          color: kSecondaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10)),
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: getPropScreenWidth(10),
                vertical: getPropScreenWidth(9)),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: "Search Product",
            hintStyle: const TextStyle(
              fontSize: 15
            ),
            prefixIcon: const Icon(Icons.search)),
      ),
    );
  }
}