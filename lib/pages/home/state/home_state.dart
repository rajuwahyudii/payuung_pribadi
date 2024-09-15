import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeState extends ChangeNotifier {
  int _index = 0;
  int get index => _index;
  setId(int newIndex) {
    _index = newIndex;
    notifyListeners();
  }

  bool _isExtend = false;
  bool get isExtend => _isExtend;

  setExtend(bool isExtend) {
    _isExtend = isExtend;
    notifyListeners();
  }

  static HomeState read(context) {
    HomeState providers = Provider.of<HomeState>(
      context,
      listen: false,
    );
    return providers;
  }

  static HomeState watch(context) {
    HomeState providers = Provider.of<HomeState>(
      context,
      listen: true,
    );
    return providers;
  }
}
