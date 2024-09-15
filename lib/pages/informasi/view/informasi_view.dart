import 'package:flutter/material.dart';
import 'package:payuung_pribadi/pages/informasi/state/informasi_state.dart';
import 'package:payuung_pribadi/shared/screen_size.dart';
import 'package:payuung_pribadi/shared/widgets/atoms/step_line.dart';
import 'package:payuung_pribadi/shared/widgets/atoms/step_point.dart';
import 'package:payuung_pribadi/shared/widgets/atoms/title_appbar.dart';
import 'package:payuung_pribadi/shared/widgets/mollecules/alamat_pribadi.dart';
import 'package:payuung_pribadi/shared/widgets/mollecules/biodata_form.dart';
import 'package:payuung_pribadi/shared/widgets/mollecules/informasi_perusahaan.dart';

class InformasiView extends StatelessWidget {
  InformasiView({super.key});
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
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
        // actions: [
        //   IconButton(
        //       onPressed: () {
        //         InformasiState.read(context).setId(_currentIndex + 1);
        //       },
        //       icon: Icon(Icons.abc))
        // ],
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
                  ? BiodataForm()
                  : _currentIndex == 1
                      ? AlamatPribadiForm()
                      : InformasiPerusahaanForm(),
            ),
          ],
        ),
      ),
    );
  }
}
