import 'package:payuung_pribadi/pages/informasi/models/data_perusahaan_payload.dart';
import 'package:payuung_pribadi/pages/informasi/models/informasi_pribadi_payload.dart';
import 'package:payuung_pribadi/pages/informasi/services/informasi_services.dart';

class InfromasiViewModel extends InformasiServices {
  doUpdateInformasiPribadi(context, InformasiPribadiPayload payload) async {
    var response = await updateInformasiPribadi(context, payload);

    if (response == true) {
      // successAlert(context, 'Logout Sukses');
    } else {
      // failedAlert(context, 'Logout Gagal');
    }
  }

  doUpdateDataPerusahaan(context, DataPerusahaanPayload payload) async {
    var response = await updateDataUsaha(context, payload);

    if (response == true) {
      // successAlert(context, 'Logout Sukses');
    } else {
      // failedAlert(context, 'Logout Gagal');
    }
  }
}
