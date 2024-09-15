import 'package:flutter/material.dart';
import 'package:payuung_pribadi/pages/home/model/user_model.dart';
import 'package:payuung_pribadi/pages/home/state/home_state.dart';
import 'package:payuung_pribadi/pages/informasi/state/informasi_state.dart';
import 'package:payuung_pribadi/shared/screen_size.dart';
import 'package:payuung_pribadi/shared/widgets/atoms/button_widget.dart';
import 'package:payuung_pribadi/shared/widgets/atoms/search.dart';

class BiodataForm extends StatelessWidget {
  BiodataForm({super.key});
  ModelUser _user = ModelUser();
  final TextEditingController _namaController = TextEditingController(text: '');
  final TextEditingController _emailController =
      TextEditingController(text: '');
  final TextEditingController _noHpController = TextEditingController(text: '');
  List<String> jk = [];

  @override
  Widget build(BuildContext context) {
    _user = HomeState.watch(context).user;
    _namaController.text = _user.nama ?? '';
    jk = InformasiState.watch(context).jk;

    return SingleChildScrollView(
      child: Column(
        children: [
          MyTextFormField(
            label: 'Nama Lengkap',
            hint: 'Nama Lengkap',
            controller: _namaController,
            keyboardType: TextInputType.name,
          ),
          MyTextFormField(
            label: 'Tanggal Lahir',
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
                  value: 'Laki-laki',
                  onChanged: (newValue) {
                    // setState(() {
                    //   selectedValue = newValue!;
                    // });
                  },
                  items: jk.map((item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          MyTextFormField(
            label: 'Alamat Email',
            hint: 'Alamat Email',
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
          ),
          MyTextFormField(
            label: 'No HP',
            hint: 'No HP',
            controller: _noHpController,
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
                  value: 'Laki-laki',
                  onChanged: (newValue) {
                    // setState(() {
                    //   selectedValue = newValue!;
                    // });
                  },
                  items: jk.map((item) {
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
                  value: 'Laki-laki',
                  onChanged: (newValue) {
                    // setState(() {
                    //   selectedValue = newValue!;
                    // });
                  },
                  items: jk.map((item) {
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
              InformasiState.read(context).setId(1);
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
