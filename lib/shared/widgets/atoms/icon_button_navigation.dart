import 'package:flutter/material.dart';
import 'package:payuung_pribadi/constant/style/color.dart';

class IconButtonNavigation extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  const IconButtonNavigation({
    required this.icon,
    required this.label,
    this.color = MyColor.yellowColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: color,
        ),
        Text(
          label,
          style: TextStyle(
            color: color,
          ),
        ),
      ],
    );
  }
}
