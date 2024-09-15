import 'package:flutter/material.dart';
import 'package:payuung_pribadi/constant/style/color.dart';
import 'package:payuung_pribadi/router/routes.dart';
import 'package:payuung_pribadi/shared/screen_size.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  goToHomeView() async {
    await Future.delayed(const Duration(seconds: 2)).then((_) {
      Routes.goHome();
    });
  }

  @override
  void initState() {
    goToHomeView();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.yellowColor,
      body: Container(
        width: getWidth(context),
        height: getHeight(context),
        child: Center(
          child: Image.asset(
            'assets/images/payuung.png',
            width: 200,
          ),
        ),
      ),
    );
  }
}
