import 'package:go_router/go_router.dart';
import 'package:payuung_pribadi/pages/home/view/home_view.dart';
import 'package:payuung_pribadi/pages/informasi/view/informasi_view.dart';
import 'package:payuung_pribadi/pages/profile/view/profile_view.dart';
import 'package:payuung_pribadi/pages/splash/view/splash_view.dart';
import 'package:payuung_pribadi/router/strings.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: RouteString.splash,
      builder: (_, __) => const SplashView(),
    ),
    GoRoute(
        path: '/home',
        name: RouteString.home,
        builder: (_, __) => HomeView(),
        routes: [
          GoRoute(
            path: RouteString.profile,
            name: RouteString.profile,
            builder: (_, __) => const ProfileView(),
          ),
          GoRoute(
            path: RouteString.informasi,
            name: RouteString.informasi,
            builder: (_, __) => const InformasiView(),
          ),
        ]),
  ],
);
