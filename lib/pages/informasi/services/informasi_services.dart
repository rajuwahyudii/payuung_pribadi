import 'package:payuung_pribadi/pages/home/state/home_state.dart';
import 'package:payuung_pribadi/pages/informasi/models/data_perusahaan_payload.dart';
import 'package:payuung_pribadi/pages/informasi/models/informasi_pribadi_payload.dart';

class InformasiServices {
  Future<bool> updateInformasiPribadi(
      context, InformasiPribadiPayload payload) async {
    try {
      HomeState.read(context).setInfromasiPribadi(payload);
      print(HomeState.watch(context).user.nama);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> updateDataUsaha(context, DataPerusahaanPayload payload) async {
    try {
      HomeState.read(context).setDataPerusahaan(payload);
      print(HomeState.watch(context).user.namaUsaha);
      return true;
    } catch (e) {
      return false;
    }
  }
}
