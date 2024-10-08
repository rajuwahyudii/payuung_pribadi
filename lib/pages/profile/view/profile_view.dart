import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:payuung_pribadi/pages/home/model/user_model.dart';
import 'package:payuung_pribadi/pages/home/state/home_state.dart';
import 'package:payuung_pribadi/pages/informasi/state/informasi_state.dart';
import 'package:payuung_pribadi/router/routes.dart';
import 'package:payuung_pribadi/shared/screen_size.dart';
import 'package:payuung_pribadi/shared/widgets/atoms/menu_profile.dart';
import 'package:payuung_pribadi/shared/widgets/atoms/title_appbar.dart';
import 'package:payuung_pribadi/shared/widgets/mollecules/alert.dart';

class ProfileView extends StatelessWidget {
  ProfileView({super.key});
  ModelUser _user = ModelUser();

  @override
  Widget build(BuildContext context) {
    final imagePicker = ImagePicker();
    Future getImage(ImageSource source) async {
      Navigator.pop(context);
      final pickedFile = await imagePicker.pickImage(source: source);
      if (pickedFile != null) {
        final bytes = (await pickedFile.readAsBytes()).lengthInBytes;
        final kb = bytes / 1024;
        final mb = kb / 1024;

        if (mb > 1) {
          if (context.mounted) {
            return failedAlert(context, 'Upload File Maksimal 1 MB');
          }
        }

        HomeState.read(context).setImageAvatar(
          pickedFile.path,
        );
      }
    }

    _user = _user = HomeState.watch(context).user;
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const TitleAppbar(
            title: 'Profile',
          )),
      body: Container(
        width: getWidth(context),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        await doubleAlert(
                          context,
                          onPressedLeft: () {
                            getImage(ImageSource.camera);
                          },
                          onPressedRight: () {
                            getImage(ImageSource.gallery);
                          },
                          title: 'Ganti Gambar?',
                          titleButtonLeft: 'Camera',
                          titleButtonRight: 'Gambar',
                        );
                      },
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: _user.avatar != null
                            ? Colors.transparent
                            : Colors.grey[300],
                        child: _user.avatar != null
                            ? Image.file(
                                File(
                                  _user.avatar!,
                                ),
                                fit: BoxFit.fill,
                              )
                            : const Text(
                                'IMG',
                                style: const TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                              ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _user.nama ?? 'No Name',
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
              ),
              MenuProfile(
                icon: Icons.person,
                ontap: () {
                  InformasiState.read(context).setId(0);
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
      ),
    );
  }
}
