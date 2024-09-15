import 'package:flutter/material.dart';
import 'package:payuung_pribadi/shared/widgets/atoms/label_menu.dart';

class MenuWidget extends StatelessWidget {
  final String label;
  final Widget widget;
  const MenuWidget({
    required this.label,
    this.widget = const SizedBox(),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabelMenu(
            margin: 20,
            label: label,
          ),
          Container(
            height: 100,
            child: widget,
          ),
        ],
      ),
    );
  }
}
