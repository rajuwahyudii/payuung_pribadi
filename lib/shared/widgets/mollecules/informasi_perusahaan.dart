import 'package:flutter/material.dart';
import 'package:payuung_pribadi/pages/informasi/state/informasi_state.dart';
import 'package:payuung_pribadi/shared/screen_size.dart';
import 'package:payuung_pribadi/shared/widgets/atoms/button_widget.dart';
import 'package:payuung_pribadi/shared/widgets/atoms/search.dart';

class InformasiPerusahaanForm extends StatelessWidget {
  const InformasiPerusahaanForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MyTextFormField(
            label: 'Nama Usaha/ Perusahaan',
          ),
          MyTextFormField(
            label: 'Alamat Usaha / Perusahaan',
          ),
          MyTextFormField(
            label: 'Jabatan',
          ),
          MyTextFormField(
            label: 'Lama Bekerja',
          ),
          MyTextFormField(
            label: 'Sumber Pendapatan',
          ),
          MyTextFormField(
            label: 'Pendapatan Kotor Pertahun',
          ),
          MyTextFormField(
            label: 'Nama Bank',
          ),
          MyTextFormField(
            label: 'Cabang Bank',
          ),
          MyTextFormField(
            label: 'Nomor Rekening',
          ),
          MyTextFormField(
            label: 'Nama Pemilik Rekening',
          ),
          ButtonWidget(
            onTap: () {
              // getIt<InfromasiViewModel>().doUpdateInformasiPribadi(
              //   context,
              //   InformasiPribadiPayload(
              //     pendidikan: pendidikanSelected,
              //     statusPernikahan: statusSelected,
              //     jenisKelamin: jkSelected,
              //     nama: namaController.text,
              //     email: emailController.text,
              //     noHP: noHpController.text,
              //   ),
              // );
              Navigator.pop(context);
            },
            label: 'Simpan',
            width: getWidth(context),
            height: 60,
          ),
        ],
      ),
    );
  }
}
