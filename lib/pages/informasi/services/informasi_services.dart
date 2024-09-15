import 'package:payuung_pribadi/pages/home/state/home_state.dart';
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
}
