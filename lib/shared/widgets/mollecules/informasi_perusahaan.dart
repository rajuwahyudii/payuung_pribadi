import 'package:flutter/material.dart';
import 'package:payuung_pribadi/package/get_it.dart';
import 'package:payuung_pribadi/pages/informasi/models/data_perusahaan_payload.dart';
import 'package:payuung_pribadi/pages/informasi/state/informasi_state.dart';
import 'package:payuung_pribadi/pages/informasi/view_model/infromasi_view_model.dart';
import 'package:payuung_pribadi/shared/screen_size.dart';
import 'package:payuung_pribadi/shared/widgets/atoms/button_widget.dart';
import 'package:payuung_pribadi/shared/widgets/atoms/search.dart';

class InformasiPerusahaanForm extends StatelessWidget {
  InformasiPerusahaanForm({
    required this.namaUsahaController,
    required this.alamatUsahaController,
    super.key,
  });
  TextEditingController namaUsahaController;
  TextEditingController alamatUsahaController;
  List<String> jabatan = [];
  List<String> lamaBekerja = [];

  @override
  Widget build(BuildContext context) {
    jabatan = InformasiState.watch(context).jabatan;
    lamaBekerja = InformasiState.watch(context).lamaBekerja;

    String jabatanSelected = InformasiState.watch(context).jabatanSelected;
    String lamaBekerjaSelected =
        InformasiState.watch(context).lamaBekerjaSelected;

    return SingleChildScrollView(
      child: Column(
        children: [
          MyTextFormField(
            label: 'Nama Usaha/ Perusahaan',
            hint: 'Nama Usaha/ Perusahaan',
            controller: namaUsahaController,
          ),
          MyTextFormField(
            label: 'Alamat Usaha / Perusahaan',
            hint: 'Alamat Usaha / Perusahaan',
            controller: alamatUsahaController,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: const Text(
                  'Jabatan',
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(
                    6,
                  ),
                  color: Colors.white,
                ),
                width: getWidth(context),
                child: DropdownButton<String>(
                  value: jabatanSelected,
                  onChanged: (newValue) {
                    InformasiState.read(context).setJabatanSelected(newValue!);
                  },
                  items: jabatan.map((item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: const Text(
                  'Lama Bekerja',
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(
                    6,
                  ),
                  color: Colors.white,
                ),
                width: getWidth(context),
                child: DropdownButton<String>(
                  value: lamaBekerjaSelected,
                  onChanged: (newValue) {
                    InformasiState.read(context)
                        .setLamaBekerjaSelected(newValue!);
                  },
                  items: lamaBekerja.map((item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          ButtonWidget(
            onTap: () {
              getIt<InfromasiViewModel>().doUpdateDataPerusahaan(
                context,
                DataPerusahaanPayload(
                  namaUsaha: namaUsahaController.text,
                  alamatUsaha: alamatUsahaController.text,
                  jabatan: jabatanSelected,
                  lamaBekerja: lamaBekerjaSelected,
                ),
              );
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
