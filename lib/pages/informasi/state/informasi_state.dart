import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InformasiState extends ChangeNotifier {
  int _index = 0;
  int get index => _index;
  setId(int newIndex) {
    _index = newIndex;
    notifyListeners();
  }

  List<String> _jk = ['Laki-laki', 'Perempuan'];
  List<String> get jk => _jk;
  static InformasiState read(context) {
    InformasiState providers = Provider.of<InformasiState>(
      context,
      listen: false,
    );
    return providers;
  }

  static InformasiState watch(context) {
    InformasiState providers = Provider.of<InformasiState>(
      context,
      listen: true,
    );
    return providers;
  }
}
