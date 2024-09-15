import 'package:flutter/material.dart';
import 'package:payuung_pribadi/pages/informasi/state/informasi_state.dart';
import 'package:payuung_pribadi/shared/screen_size.dart';
import 'package:payuung_pribadi/shared/widgets/atoms/button_widget.dart';
import 'package:payuung_pribadi/shared/widgets/atoms/search.dart';

class AlamatPribadiForm extends StatelessWidget {
  AlamatPribadiForm({
    required this.nikController,
    required this.alamatController,
    required this.provinsiController,
    required this.kotaController,
    required this.kecamatanController,
    required this.kelurahanController,
    required this.kodePosController,
    super.key,
  });
  TextEditingController alamatController;
  TextEditingController nikController;
  TextEditingController provinsiController;
  TextEditingController kotaController;

  TextEditingController kecamatanController;

  TextEditingController kelurahanController;

  TextEditingController kodePosController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MyTextFormField(
            label: 'NIK',
            hint: 'NIK',
            controller: nikController,
          ),
          MyTextFormField(
            label: 'Alamat Sesuai KTP',
            hint: 'Alamat Sesuai KTP',
            controller: alamatController,
          ),
          MyTextFormField(
            label: 'Provinsi',
            hint: 'Provinsi',
            controller: provinsiController,
          ),
          MyTextFormField(
            label: 'Kota/Kabupaten',
            hint: 'Kota/Kabupaten',
            controller: kotaController,
          ),
          MyTextFormField(
            label: 'Kecamatan',
            hint: 'Kecamatan',
            controller: kecamatanController,
          ),
          MyTextFormField(
            label: 'Kelurahan',
            hint: 'Kelurahan',
            controller: kelurahanController,
          ),
          MyTextFormField(
            label: 'Kode Pos',
            hint: 'Kode Pos',
            controller: kodePosController,
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
              InformasiState.read(context).setId(2);
            },
            label: 'Selanjutnya',
            width: getWidth(context),
            height: 60,
          ),
        ],
      ),
    );
  }
}
