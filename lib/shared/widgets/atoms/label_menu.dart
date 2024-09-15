import 'package:flutter/material.dart';

class LabelMenu extends StatelessWidget {
  final String label;
  final double margin;
  const LabelMenu({
    required this.label,
    this.margin = 10,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(margin),
      child: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
