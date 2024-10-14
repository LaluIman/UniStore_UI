import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomCheckOut extends StatelessWidget {
  const BottomCheckOut({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
        color: const Color.fromARGB(255, 247, 247, 247),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: getPropScreenHeight(30), 
          horizontal: getPropScreenWidth(30)
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          Row(
            children: [
             Container(
              padding: EdgeInsets.all(getPropScreenWidth(10)),
              height: getPropScreenHeight(40),
              width: getPropScreenWidth(40),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: SvgPicture.asset("assets/icons/receipt.svg"),
             ),
             Spacer(),
             Text("Add voucher code", style: TextStyle(
              fontWeight: FontWeight.w500
             ),),
             Icon(Icons.arrow_forward_ios_rounded, size: 15,)
            ],
          ),
          SizedBox(height: getPropScreenHeight(20),),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Total price"),
                  Text("\$ 1.700", style: TextStyle(
                    fontSize: getPropScreenWidth(20),
                    fontWeight: FontWeight.w600,
                  ),),
                ],
              ),
              Spacer(),
              SizedBox(
                height: getPropScreenHeight(50),
                width: getPropScreenWidth(150),
                child: DefaultButton(
                  text: "Checkout", 
                  press: (){})
                )
            ],
          )
        ],),
    ),
    );
  }
}
