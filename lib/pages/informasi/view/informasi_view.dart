import 'package:flutter/material.dart';
import 'package:payuung_pribadi/pages/home/model/user_model.dart';
import 'package:payuung_pribadi/pages/home/state/home_state.dart';
import 'package:payuung_pribadi/pages/informasi/state/informasi_state.dart';
import 'package:payuung_pribadi/shared/screen_size.dart';
import 'package:payuung_pribadi/shared/widgets/atoms/step_line.dart';
import 'package:payuung_pribadi/shared/widgets/atoms/step_point.dart';
import 'package:payuung_pribadi/shared/widgets/atoms/title_appbar.dart';
import 'package:payuung_pribadi/shared/widgets/mollecules/alamat_pribadi.dart';
import 'package:payuung_pribadi/shared/widgets/mollecules/biodata_form.dart';
import 'package:payuung_pribadi/shared/widgets/mollecules/informasi_perusahaan.dart';

class InformasiView extends StatelessWidget {
  TextEditingController _namaController = TextEditingController(text: '');
  TextEditingController _emailController = TextEditingController(text: '');
  TextEditingController _noHpController = TextEditingController(text: '');
  TextEditingController _nikController = TextEditingController(text: '');
  TextEditingController _alamatController = TextEditingController(text: '');
  TextEditingController _provinsiController = TextEditingController(text: '');
  TextEditingController _kotaController = TextEditingController(text: '');
  TextEditingController _kecamatanController = TextEditingController(text: '');
  TextEditingController _kelurahanController = TextEditingController(text: '');
  TextEditingController _kodePosController = TextEditingController(text: '');

  InformasiView({super.key});
  int _currentIndex = 0;
  ModelUser _user = ModelUser();

  @override
  Widget build(BuildContext context) {
    _user = HomeState.watch(context).user;

    List<String> step = [
      'Biodata Diri',
      'Alamat Pribadi',
      'Infromasi Perusahaan'
    ];
    _currentIndex = InformasiState.watch(context).index;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const TitleAppbar(
          title: 'Informasi Pribadi',
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        width: getWidth(context),
        child: Column(
          children: [
            Container(
              height: 60,
              width: getWidth(context),
              margin: const EdgeInsets.only(
                left: 50,
                top: 10,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(step.length, (index) {
                  return Expanded(
                    child: Row(
                      children: [
                        StepPoint(
                          index: index,
                          currentIndex: _currentIndex,
                          label: step[index],
                        ),
                        if (index < _currentIndex)
                          StepLine(
                            index: index,
                            currentIndex: _currentIndex,
                          ),
                      ],
                    ),
                  );
                }),
              ),
            ),
            Expanded(
              child: _currentIndex == 0
                  ? BiodataForm(
                      namaController: _namaController,
                      emailController: _emailController,
                      noHpController: _noHpController,
                    )
                  : _currentIndex == 1
                      ? AlamatPribadiForm(
                          alamatController: _alamatController,
                          kecamatanController: _kecamatanController,
                          kelurahanController: _kelurahanController,
                          kodePosController: _kodePosController,
                          kotaController: _kotaController,
                          nikController: _nikController,
                          provinsiController: _provinsiController,
                        )
                      : InformasiPerusahaanForm(),
            ),
          ],
        ),
      ),
    );
  }
}
