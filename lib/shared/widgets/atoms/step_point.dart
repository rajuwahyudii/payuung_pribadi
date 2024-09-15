import 'package:flutter/material.dart';
import 'package:payuung_pribadi/constant/style/color.dart';

class StepPoint extends StatelessWidget {
  final int index;
  final int currentIndex;
  final String label;

  const StepPoint({
    required this.index,
    required this.label,
    required this.currentIndex,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index <= currentIndex - 1
                ? MyColor.yellowColor
                : Colors.grey[300],
          ),
          child: index <= currentIndex - 1
              ? const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 20,
                )
              : Center(
                  child: Text(
                    '${index + 1}',
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                ),
        ),
        SizedBox(
          child: Text(
            'Step ${index + 1}',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: index <= currentIndex - 1
                  ? MyColor.yellowColor
                  : Colors.grey[300],
            ),
          ),
        ),
      ],
    );
  }
}
