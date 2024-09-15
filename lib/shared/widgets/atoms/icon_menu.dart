import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconMenu extends StatelessWidget {
  final Color txtColor;
  final Color iconColor;
  final double margin;
  final String icon;
  final String label;

  final double iconSize;

  const IconMenu({
    this.txtColor = Colors.black,
    this.iconColor = Colors.green,
    this.margin = 10,
    required this.icon,
    required this.label,
    this.iconSize = 20,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
            width: iconSize,
            color: iconColor,
          ),
          Text(
            label,
            style: TextStyle(
              color: txtColor,
            ),
          )
        ],
      ),
    );
  }
}
