import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InformasiState extends ChangeNotifier {
  int _index = 0;
  int get index => _index;
  setId(int newIndex) {
    _index = newIndex;
    notifyListeners();
  }

  String _jkSelected = 'Laki-laki';
  String get jkSelected => _jkSelected;
  setJkSelected(String jkSelected) {
    _jkSelected = jkSelected;
    notifyListeners();
  }

  final List<String> _jk = ['Laki-laki', 'Perempuan'];
  List<String> get jk => _jk;

  final List<String> _pendidikan = [
    'SD',
    'SMP',
    'SMA',
    'D1',
    'D2',
    'D3',
    'S1',
    'S2',
    'S3'
  ];
  List<String> get pendidikan => _pendidikan;
  String _pendidikanSelected = 'SD';
  String get pendidikanSelected => _pendidikanSelected;
  setPendidikanSelected(String pendidikanSelected) {
    _pendidikanSelected = pendidikanSelected;
    notifyListeners();
  }

  final List<String> _status = [
    'Belum Kawin',
    'Kawin',
    'Janda',
    'Duda',
  ];
  List<String> get status => _status;

  String _statusSelected = 'Belum Kawin';
  String get statusSelected => _statusSelected;
  setStatusSelected(String statusSelected) {
    _statusSelected = statusSelected;
    notifyListeners();
  }

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
