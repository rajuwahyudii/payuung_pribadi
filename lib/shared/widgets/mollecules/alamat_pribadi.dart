import 'package:flutter/material.dart';
import 'package:payuung_pribadi/shared/widgets/atoms/search.dart';

class AlamatPribadiForm extends StatelessWidget {
  const AlamatPribadiForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MyTextFormField(
            label: 'NIK',
          ),
          MyTextFormField(
            label: 'Alamat Sesuai KTP',
          ),
          MyTextFormField(
            label: 'Provinsi',
          ),
          MyTextFormField(
            label: 'Kota/Kabupaten',
          ),
          MyTextFormField(
            label: 'Kecamatan',
          ),
          MyTextFormField(
            label: 'Kelurahan',
          ),
          MyTextFormField(
            label: 'Kode Pos',
          ),
        ],
      ),
    );
  }
}
