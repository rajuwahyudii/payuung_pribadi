import 'package:flutter/material.dart';

class StepLine extends StatelessWidget {
  final int index;
  final int currentIndex;
  const StepLine({
    required this.index,
    required this.currentIndex,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(bottom: 30),
        height: 2,
        color: index < currentIndex ? Colors.yellow : Colors.grey[300],
      ),
    );
  }
}
