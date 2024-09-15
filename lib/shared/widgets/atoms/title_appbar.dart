import 'package:flutter/material.dart';

class TitleAppbar extends StatelessWidget {
  final String title;
  final Color txtColor;

  const TitleAppbar({
    required this.title,
    this.txtColor = Colors.black,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: txtColor,
        fontWeight: FontWeight.w700,
        fontSize: 14,
      ),
    );
  }
}
