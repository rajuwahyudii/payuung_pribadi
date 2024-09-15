import 'package:payuung_pribadi/router/router.dart';
import 'package:payuung_pribadi/router/strings.dart';

class Routes {
  static goSplash() => router.pushReplacement(RouteString.splash);
  static goHome() => router.pushReplacementNamed(RouteString.home);
  static goProfile() => router.goNamed(RouteString.profile);
  static goInformasi() => router.pushNamed(RouteString.informasi);
}
