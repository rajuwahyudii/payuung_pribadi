import 'package:date_picker_plus/date_picker_plus.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:payuung_pribadi/package/get_it.dart';
import 'package:payuung_pribadi/pages/home/model/user_model.dart';
import 'package:payuung_pribadi/pages/home/state/home_state.dart';
import 'package:payuung_pribadi/pages/informasi/models/informasi_pribadi_payload.dart';
import 'package:payuung_pribadi/pages/informasi/state/informasi_state.dart';
import 'package:payuung_pribadi/pages/informasi/view_model/infromasi_view_model.dart';
import 'package:payuung_pribadi/shared/screen_size.dart';
import 'package:payuung_pribadi/shared/widgets/atoms/button_widget.dart';
import 'package:payuung_pribadi/shared/widgets/atoms/search.dart';
import 'package:payuung_pribadi/shared/widgets/mollecules/alert.dart';

class BiodataForm extends StatelessWidget {
  BiodataForm({
    required this.emailController,
    required this.namaController,
    required this.noHpController,
    super.key,
  });
  TextEditingController namaController;
  TextEditingController emailController;
  TextEditingController noHpController;
  List<String> jk = [];
  List<String> pendidikan = [];
  List<String> status = [];

  @override
  Widget build(BuildContext context) {
    jk = InformasiState.watch(context).jk;
    pendidikan = InformasiState.watch(context).pendidikan;
    status = InformasiState.watch(context).status;
    String jkSelected = InformasiState.watch(context).jkSelected;
    String pendidikanSelected =
        InformasiState.watch(context).pendidikanSelected;
    String statusSelected = InformasiState.watch(context).statusSelected;
    DateTime tanggalLahirSelected =
        InformasiState.watch(context).selectedTanggalLahir;

    return SingleChildScrollView(
      child: Column(
        children: [
          MyTextFormField(
            label: 'Nama Lengkap',
            hint: 'Nama Lengkap',
            controller: namaController,
            keyboardType: TextInputType.name,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: const Text(
                  'Tanggal Lahir',
                ),
              ),
              GestureDetector(
                onTap: () async {
                  DateTime? pickedDate = await showDatePickerDialog(
                    context: context,
                    initialDate: tanggalLahirSelected,
                    minDate: DateTime(1970, 10, 10),
                    maxDate: DateTime.now(),
                    width: 300,
                    height: 300,
                    currentDate: DateTime.now(),
                    selectedDate: tanggalLahirSelected,
                    currentDateDecoration: const BoxDecoration(),
                    currentDateTextStyle: const TextStyle(),
                    daysOfTheWeekTextStyle: const TextStyle(),
                    disabledCellsTextStyle: const TextStyle(),
                    enabledCellsDecoration: const BoxDecoration(),
                    enabledCellsTextStyle: const TextStyle(),
                    initialPickerType: PickerType.days,
                    selectedCellDecoration: const BoxDecoration(),
                    selectedCellTextStyle: const TextStyle(),
                    leadingDateTextStyle: const TextStyle(),
                    slidersColor: Colors.lightBlue,
                    highlightColor: Colors.redAccent,
                    slidersSize: 20,
                    splashColor: Colors.lightBlueAccent,
                    splashRadius: 40,
                    centerLeadingDate: true,
                  );
                  if (pickedDate != null) {
                    print(pickedDate);
                    InformasiState.read(context)
                        .setSelectedTanggalLahir(pickedDate);
                  }
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        DateFormat('yyyy-MM-dd')
                            .parse(tanggalLahirSelected.toString())
                            .toString()
                            .substring(0, 10),
                      ),
                      const Icon(
                        Icons.date_range,
                      ),
                    ],
                  ),
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
                  'Jenis Kelamin',
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
                  value: jkSelected,
                  onChanged: (newValue) {
                    InformasiState.read(context).setJkSelected(newValue!);
                  },
                  items: jk.map((item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  underline: const SizedBox(),
                ),
              ),
            ],
          ),
          MyTextFormField(
            label: 'Alamat Email',
            hint: 'Alamat Email',
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
          ),
          MyTextFormField(
            label: 'No HP',
            hint: 'No HP',
            controller: noHpController,
            keyboardType: TextInputType.number,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: const Text(
                  'Pendidikan',
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
                  value: pendidikanSelected,
                  onChanged: (newValue) {
                    InformasiState.read(context)
                        .setPendidikanSelected(newValue!);
                  },
                  items: pendidikan.map((item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  underline: const SizedBox(),
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
                  'Status Pernikahan',
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
                  value: statusSelected,
                  onChanged: (newValue) {
                    InformasiState.read(context).setStatusSelected(newValue!);
                  },
                  items: status.map((item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  underline: const SizedBox(),
                ),
              ),
            ],
          ),
          ButtonWidget(
            onTap: () async {
              if (namaController.text != '' &&
                  emailController.text != '' &&
                  jkSelected != '' &&
                  pendidikanSelected != '' &&
                  noHpController.text != '') {
                getIt<InfromasiViewModel>().doUpdateInformasiPribadi(
                  context,
                  InformasiPribadiPayload(
                    pendidikan: pendidikanSelected,
                    statusPernikahan: statusSelected,
                    tanggalLahir:
                        tanggalLahirSelected.toString().substring(0, 10),
                    jenisKelamin: jkSelected,
                    nama: namaController.text,
                    email: emailController.text,
                    noHP: noHpController.text,
                  ),
                );
                InformasiState.read(context).setId(1);
                await successAlert(
                  context,
                  'Berhasil Update Biodata',
                );
              } else {
                await failedAlert(
                  context,
                  'Data Tidak Lengkap',
                );
              }
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
