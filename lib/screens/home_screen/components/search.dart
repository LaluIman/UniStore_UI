import 'package:e_commerce/constant.dart';
import 'package:e_commerce/screens/search_screen/search_screen.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, SearchScreen.routeName);
      },
      child: Container(
          width: SizeConfig.screenWidth * 0.6,
          decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getPropScreenWidth(12),
                vertical: getPropScreenWidth(10)),
            child: Row(
              children: [
                Icon(Icons.search),
                SizedBox(
                  width: 10,
                ),
                Text("Search product")
              ],
            ),
          )),
    );
  }
}

