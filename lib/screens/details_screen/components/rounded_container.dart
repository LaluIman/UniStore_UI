import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

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
      padding: EdgeInsets.only(top: getPropScreenHeight(20), bottom: getPropScreenHeight(20)),
      width: double.infinity,
      decoration: BoxDecoration(
        // color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(getPropScreenWidth(30)),
          topRight: Radius.circular(getPropScreenWidth(30)),
        ),
      ),
      child: child,
    );
  }
}
