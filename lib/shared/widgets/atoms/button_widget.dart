import 'package:flutter/material.dart';
import 'package:payuung_pribadi/constant/style/color.dart';

class ButtonWidget extends StatelessWidget {
  final String label;
  final double width;
  final double height;
  final double margin;
  final Color backgroundColor;
  final Color textColor;
  final Function onTap;

  const ButtonWidget({
    required this.label,
    required this.onTap,
    this.width = 100,
    this.margin = 10,
    this.height = 100,
    this.backgroundColor = MyColor.yellowColor,
    this.textColor = Colors.white,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            14,
          ),
          color: backgroundColor,
        ),
        margin: EdgeInsets.all(margin),
        width: width,
        height: height,
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
