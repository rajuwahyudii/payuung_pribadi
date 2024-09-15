import 'package:flutter/material.dart';
import 'package:payuung_pribadi/shared/screen_size.dart';

class MenuProfile extends StatelessWidget {
  final Function ontap;
  final IconData icon;
  final String label;

  const MenuProfile({
    required this.ontap,
    required this.icon,
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        width: getWidth(context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            16,
          ),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.all(
                10,
              ),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(
                  12,
                ),
              ),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            Text(
              label,
            ),
          ],
        ),
      ),
    );
  }
}
