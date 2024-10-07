import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class cashbackBanner extends StatelessWidget {
  const cashbackBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage("assets/images/cashback.png"),
                fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "a summer suprise",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Text(
              "Cashback 20%",
              style: GoogleFonts.bebasNeue(
                  fontSize: getPropScreenWidth(30),
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow),
            ),
          ],
        ));
  }
}
