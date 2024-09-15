import 'package:flutter/material.dart';
import 'package:payuung_pribadi/pages/home/model/explore_wellness_model.dart';
import 'package:payuung_pribadi/pages/home/model/kategori_pilihan_model.dart';
import 'package:payuung_pribadi/pages/home/model/produk_keuangan_model.dart';
import 'package:payuung_pribadi/pages/home/model/user_model.dart';
import 'package:payuung_pribadi/pages/informasi/models/data_perusahaan_payload.dart';
import 'package:payuung_pribadi/pages/informasi/models/informasi_pribadi_payload.dart';
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

  setInfromasiPribadi(InformasiPribadiPayload user) {
    _user.nama = user.nama;
    _user.tanggalLahir = user.tanggalLahir;
    _user.jenisKelamin = user.jenisKelamin;
    _user.email = user.email;
    _user.noHP = user.noHP;
    _user.pendidikan = user.pendidikan;
    _user.statusPernikahan = user.statusPernikahan;

    notifyListeners();
  }

  setDataPerusahaan(DataPerusahaanPayload user) {
    _user.namaUsaha = user.namaUsaha;
    _user.alamatUsaha = user.alamatUsaha;
    _user.jabatan = user.jabatan;
    _user.lamaBekerja = user.lamaBekerja;

    notifyListeners();
  }

  final List<ModelProdukKeuangan> _produkKeuangan = [
    ModelProdukKeuangan(
      icon: Icons.family_restroom,
      label: 'Urun',
    ),
    ModelProdukKeuangan(
      icon: Icons.person_2,
      label: 'Pembiayaan Porsi Haji',
    ),
    ModelProdukKeuangan(
      icon: Icons.face,
      label: 'Finansial Check Up',
    ),
    ModelProdukKeuangan(
      icon: Icons.car_crash,
      label: 'Asuransi Mobil',
    ),
    ModelProdukKeuangan(
      icon: Icons.money,
      label: 'Asuransi Properti',
    ),
  ];
  List<ModelProdukKeuangan> get produkKeuangan => _produkKeuangan;

  final List<ModelKategoriKeuangan> _kategoriKeuangan = [
    ModelKategoriKeuangan(
      icon: Icons.holiday_village,
      label: 'Hobi',
    ),
    ModelKategoriKeuangan(
      icon: Icons.safety_check,
      label: 'Merchandise',
    ),
    ModelKategoriKeuangan(
      icon: Icons.heart_broken,
      label: 'Gaya Hidup Sehat',
    ),
    ModelKategoriKeuangan(
      icon: Icons.chat,
      label: 'Konseling & Rohani',
    ),
    ModelKategoriKeuangan(
      icon: Icons.branding_watermark,
      label: 'Self Development',
    ),
    ModelKategoriKeuangan(
      icon: Icons.card_giftcard,
      label: 'Perencanaan Keuangan',
    ),
    ModelKategoriKeuangan(
      icon: Icons.masks,
      label: 'Konsultasi Medis',
    ),
    ModelKategoriKeuangan(
      icon: Icons.other_houses,
      label: 'Lihat Semua',
    ),
  ];
  List<ModelKategoriKeuangan> get kategoriKeuangan => _kategoriKeuangan;

  final List<ModelExploreWellness> _exploreWillness = [
    ModelExploreWellness(
      label: 'H&M',
      icon: 'https://iconape.com/wp-content/png_logo_vector/hm-logo-2.png',
    ),
    ModelExploreWellness(
      label: 'Indomaret',
      icon:
          'https://upload.wikimedia.org/wikipedia/commons/9/9d/Logo_Indomaret.png',
    ),
    ModelExploreWellness(
      label: 'Alfamart',
      icon:
          'https://assets.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p1/10/2023/09/29/rsz_logo_alfamart-1513131536.jpg',
    ),
    ModelExploreWellness(
      label: 'Tencent',
      icon:
          'https://img.tek.id/img/content/2020/03/29/27359/tencent-dan-huawei-ingin-buat-platform-streaming-game-K5MLIyZg3X.jpg',
    ),
    ModelExploreWellness(
      label: 'Riot',
      icon: 'https://esports.id/img/article/965220230123084955.jpg',
    ),
    ModelExploreWellness(
      label: '6',
      icon:
          'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/570/capsule_616x353.jpg?t=1724428927',
    ),
    ModelExploreWellness(
      label: 'Dota',
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
