import 'package:e_commerce/components/rounded_icon_button.dart';
import 'package:e_commerce/constant.dart';
import 'package:e_commerce/model/product_data.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class ColorPickerContainer extends StatefulWidget {
  const ColorPickerContainer({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<ColorPickerContainer> createState() => _ColorPickerContainerState();
}

class _ColorPickerContainerState extends State<ColorPickerContainer> {
  int currentSelectedColor = 3;
  int totalSelected = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
        child: Row(children: [
          ...List.generate(widget.product.colors.length, (index) {
            final Color color = widget.product.colors[index];
            return GestureDetector(
                onTap: () {
                  setState(() {
                    currentSelectedColor = index;
                  });
                },
                child: ColorSelection(
                  color: color,
                  isSelected: index == currentSelectedColor,
                ));
          }),
          Spacer(),
          Row(
            children: [
              RoundedIconBtn(
                icon: Icons.remove,
                press: totalSelected > 1 ? () {
                  setState(() {
                    totalSelected--;
                  });
                }: null
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "${totalSelected}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 10,
              ),
              RoundedIconBtn(
                icon: Icons.add,
                press: () {
                  setState(() {
                    totalSelected++;
                  });
                },
              ),
            ],
          )
        ]),
      );
  }
}

class ColorSelection extends StatelessWidget {
  const ColorSelection(
      {super.key, required this.color, this.isSelected = false});

  final Color color;
  final bool? isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: defaultDuration,
        padding: EdgeInsets.all(getPropScreenWidth(8)),
        margin: EdgeInsets.only(right: getPropScreenWidth(6)),
        height: getPropScreenHeight(isSelected! ? 45 : 45),
        width: getPropScreenWidth(30),
        decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
            border: Border.all(
                width: 2,
                color: isSelected!
                    ? kPrimaryColor
                    : kSecondaryColor.withOpacity(0.5))));
  }
}
