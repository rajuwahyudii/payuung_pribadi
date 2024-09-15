import 'package:flutter/material.dart';
import 'package:payuung_pribadi/package/get_it.dart';
import 'package:payuung_pribadi/pages/home/state/home_state.dart';
import 'package:payuung_pribadi/pages/informasi/state/informasi_state.dart';
import 'package:payuung_pribadi/router/router.dart';
import 'package:provider/provider.dart';

void main() async {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeState>(
          create: (_) => HomeState(),
        ),
        ChangeNotifierProvider<InformasiState>(
          create: (_) => InformasiState(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Payuung Pribadi',
        theme: ThemeData(primarySwatch: Colors.blue),
        routerConfig: router,
      ),
    );
  }
}
