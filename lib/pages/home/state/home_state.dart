import 'package:flutter/material.dart';
import 'package:payuung_pribadi/pages/home/model/explore_wellness_model.dart';
import 'package:payuung_pribadi/pages/home/model/kategori_pilihan_model.dart';
import 'package:payuung_pribadi/pages/home/model/produk_keuangan_model.dart';
import 'package:payuung_pribadi/pages/home/model/user_model.dart';
import 'package:provider/provider.dart';

class HomeState extends ChangeNotifier {
  int _index = 0;
  int get index => _index;
  setId(int newIndex) {
    _index = newIndex;
    notifyListeners();
  }

  ModelUser _user = ModelUser();
  ModelUser get user => _user;
  setUser(ModelUser user) {
    _user = user;
    notifyListeners();
  }

  final List<ModelProdukKeuangan> _produkKeuangan = [
    ModelProdukKeuangan(
      label: 'Urun',
    ),
    ModelProdukKeuangan(
      label: 'Pembiayaan Porsi Haji',
    ),
    ModelProdukKeuangan(
      label: 'Finansial Check Up',
    ),
    ModelProdukKeuangan(
      label: 'Asuransi Mobil',
    ),
    ModelProdukKeuangan(
      label: 'Asuransi Properti',
    ),
  ];
  List<ModelProdukKeuangan> get produkKeuangan => _produkKeuangan;

  final List<ModelKategoriKeuangan> _kategoriKeuangan = [
    ModelKategoriKeuangan(
      label: 'Hobi',
    ),
    ModelKategoriKeuangan(
      label: 'Merchandise',
    ),
    ModelKategoriKeuangan(
      label: 'Gaya Hidup Sehat',
    ),
    ModelKategoriKeuangan(
      label: 'Konseling & Rohani',
    ),
    ModelKategoriKeuangan(
      label: 'Self Development',
    ),
    ModelKategoriKeuangan(
      label: 'Perencanaan Keuangan',
    ),
    ModelKategoriKeuangan(
      label: 'Konsultasi Medis',
    ),
    ModelKategoriKeuangan(
      label: 'Lihat Semua',
    ),
  ];
  List<ModelKategoriKeuangan> get kategoriKeuangan => _kategoriKeuangan;

  final List<ModelExploreWellness> _exploreWillness = [
    ModelExploreWellness(
      label: '1',
      icon: 'https://iconape.com/wp-content/png_logo_vector/hm-logo-2.png',
    ),
    ModelExploreWellness(
      label: '2',
      icon: 'https://iconape.com/wp-content/png_logo_vector/hm-logo-2.png',
    ),
    ModelExploreWellness(
      label: '3',
      icon: 'https://iconape.com/wp-content/png_logo_vector/hm-logo-2.png',
    ),
    ModelExploreWellness(
      label: '4',
      icon: 'https://iconape.com/wp-content/png_logo_vector/hm-logo-2.png',
    ),
    ModelExploreWellness(
      label: '5',
      icon: 'https://iconape.com/wp-content/png_logo_vector/hm-logo-2.png',
    ),
    ModelExploreWellness(
      label: '6',
      icon: 'https://iconape.com/wp-content/png_logo_vector/hm-logo-2.png',
    ),
    ModelExploreWellness(
      label: '7',
      icon: 'https://iconape.com/wp-content/png_logo_vector/hm-logo-2.png',
    ),
    ModelExploreWellness(
      label: '8',
      icon: 'https://iconape.com/wp-content/png_logo_vector/hm-logo-2.png',
    ),
  ];
  List<ModelExploreWellness> get exploreWillness => _exploreWillness;

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
