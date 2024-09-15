import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconImage extends StatelessWidget {
  final Color txtColor;
  final Color iconColor;
  final double margin;
  final String image;
  final String label;

  final double iconSize;

  const IconImage({
    this.txtColor = Colors.black,
    this.iconColor = Colors.green,
    this.margin = 10,
    required this.image,
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
          Image.network(
            image,
            width: 100,
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
