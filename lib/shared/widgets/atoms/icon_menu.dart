import 'package:flutter/material.dart';

class IconMenu extends StatelessWidget {
  final Color txtColor;
  final Color iconColor;
  final double margin;
  final IconData icon;
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
          Icon(
            icon,
            size: 20,
            color: Colors.green,
          ),
          Text(
            label,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: txtColor,
              fontSize: 10,
            ),
          )
        ],
      ),
    );
  }
}
