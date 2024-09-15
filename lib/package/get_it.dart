import 'package:get_it/get_it.dart';
import 'package:payuung_pribadi/pages/home/view_model/home_view_model.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  getIt.registerSingleton<HomeViewModel>(HomeViewModel());
}
