import 'package:flutter/material.dart';
import 'package:payuung_pribadi/router/routes.dart';
import 'package:payuung_pribadi/shared/screen_size.dart';
import 'package:payuung_pribadi/shared/widgets/atoms/menu_profile.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    String name = 'uhuy';
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
      ),
      body: Container(
        width: getWidth(context),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.abc,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    const Text(
                      'Masuk dengan Google',
                      style: TextStyle(
                        fontSize: 11,
                      ),
                    ),
                  ],
                )
              ],
            ),
            MenuProfile(
              icon: Icons.person,
              ontap: () {
                Routes.goInformasi();
              },
              label: 'Informasi Pribadi',
            ),
            MenuProfile(
              icon: Icons.edit_document,
              ontap: () {},
              label: 'Syarat & Ketentuan',
            ),
            MenuProfile(
              icon: Icons.chat,
              ontap: () {},
              label: 'Bantuan',
            ),
            MenuProfile(
              icon: Icons.shield_rounded,
              ontap: () {},
              label: 'Kebijakan Privasi',
            ),
            MenuProfile(
              icon: Icons.power_settings_new,
              ontap: () {},
              label: 'Log Out',
            ),
            MenuProfile(
              icon: Icons.delete,
              ontap: () {},
              label: 'Hapus akun',
            ),
          ],
        ),
      ),
    );
  }
}
