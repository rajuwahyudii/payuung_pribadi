import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payuung_pribadi/constant/style/color.dart';
import 'package:payuung_pribadi/package/get_it.dart';
import 'package:payuung_pribadi/pages/home/model/explore_wellness_model.dart';
import 'package:payuung_pribadi/pages/home/model/kategori_pilihan_model.dart';
import 'package:payuung_pribadi/pages/home/model/produk_keuangan_model.dart';
import 'package:payuung_pribadi/pages/home/model/user_model.dart';
import 'package:payuung_pribadi/pages/home/state/home_state.dart';
import 'package:payuung_pribadi/pages/home/view_model/home_view_model.dart';
import 'package:payuung_pribadi/router/routes.dart';
import 'package:payuung_pribadi/shared/screen_size.dart';
import 'package:payuung_pribadi/shared/widgets/atoms/icon_images.dart';
import 'package:payuung_pribadi/shared/widgets/atoms/icon_menu.dart';
import 'package:payuung_pribadi/shared/widgets/mollecules/menu_widget.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  int _selectedIndex = 0;
  bool _isExpanded = false;
  ModelUser _user = ModelUser();
  List<ModelProdukKeuangan> _produkKeuangan = [];
  List<ModelKategoriKeuangan> _kategoriKeuangan = [];
  List<ModelExploreWellness> _exploreWillness = [];

  @override
  Widget build(BuildContext context) {
    _selectedIndex = HomeState.watch(context).index;
    _produkKeuangan = HomeState.watch(context).produkKeuangan;
    _kategoriKeuangan = HomeState.watch(context).kategoriKeuangan;
    _exploreWillness = HomeState.watch(context).exploreWillness;
    _user = HomeState.watch(context).user;

    return Scaffold(
      backgroundColor: MyColor.yellowColor,
      appBar: AppBar(
        backgroundColor: MyColor.yellowColor,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Selamat Malam',
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
            Text(
              _user.nama ?? '',
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              // getIt<HomeViewModel>().doGetData(context, 'user');
            },
            icon: const Icon(
              Icons.notifications_outlined,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              // getIt<HomeViewModel>().doInsertData(context);
              Routes.goProfile();
            },
            icon: const Icon(
              Icons.person_2_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              width: getWidth(context),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    20,
                  ),
                  topRight: Radius.circular(
                    20,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MenuWidget(
                    label: 'Produk Keuangan',
                    widget: GridView.count(
                      physics: const ClampingScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 4,
                      childAspectRatio: 1.0,
                      padding: EdgeInsets.all(16.0),
                      mainAxisSpacing: 16.0,
                      crossAxisSpacing: 16.0,
                      children: List.generate(_produkKeuangan.length, (index) {
                        return IconMenu(
                          icon: 'assets/icons/family.svg',
                          label: _produkKeuangan[index].label!,
                        );
                      }),
                    ),
                  ),
                  MenuWidget(
                    label: 'Kategori Pilihan',
                    widget: GridView.count(
                      physics: const ClampingScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 4,
                      childAspectRatio: 1.0,
                      padding: EdgeInsets.all(16.0),
                      mainAxisSpacing: 16.0,
                      crossAxisSpacing: 16.0,
                      children:
                          List.generate(_kategoriKeuangan.length, (index) {
                        return IconMenu(
                          icon: 'assets/icons/family.svg',
                          label: _kategoriKeuangan[index].label!,
                        );
                      }),
                    ),
                  ),
                  MenuWidget(
                    label: 'Explore Wellness',
                    widget: GridView.count(
                      physics: const ClampingScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      childAspectRatio: 1.0,
                      padding: EdgeInsets.all(16.0),
                      mainAxisSpacing: 16.0,
                      crossAxisSpacing: 16.0,
                      children: List.generate(_exploreWillness.length, (index) {
                        return IconImage(
                          image: _exploreWillness[index].icon!,
                          label: _exploreWillness[index].label!,
                        );
                      }),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (_isExpanded)
                  Container(
                    height: 200,
                    color: Colors.white,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.list),
                            title: Text('Daftar Transaksi'),
                            onTap: () {},
                          ),
                          ListTile(
                            leading: Icon(Icons.card_giftcard),
                            title: Text('Voucher Saya'),
                            onTap: () {},
                          ),
                          ListTile(
                            leading: Icon(Icons.location_on),
                            title: Text('Alamat Pengiriman'),
                            onTap: () {},
                          ),
                          ListTile(
                            leading: Icon(Icons.people),
                            title: Text('Daftar Teman'),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ),

                // Bottom navigation bar
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildNavItem(context, 0, Icons.home, 'Beranda'),
                      _buildNavItem(context, 1, Icons.search, 'Cari'),
                      _buildNavItem(
                          context, 2, Icons.shopping_cart, 'Keranjang'),
                      GestureDetector(
                        onTap: () {
                          HomeState.read(context).setId(3);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              _isExpanded
                                  ? Icons.keyboard_arrow_down
                                  : Icons.keyboard_arrow_up,
                              color: _selectedIndex == 3
                                  ? MyColor.yellowColor
                                  : Colors.grey,
                            ),
                            Text(
                              'Lainnya',
                              style: TextStyle(
                                color: _selectedIndex == 3
                                    ? MyColor.yellowColor
                                    : Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(context, int index, IconData icon, String label) {
    return GestureDetector(
      onTap: () {
        HomeState.read(context).setId(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: _selectedIndex == index ? MyColor.yellowColor : Colors.grey,
          ),
          Text(
            label,
            style: TextStyle(
              color:
                  _selectedIndex == index ? MyColor.yellowColor : Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
