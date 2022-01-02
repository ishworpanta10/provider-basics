import 'package:get_it/get_it.dart';
import 'package:provider_demo/core/network/network_barrel.dart';
import 'package:provider_demo/data/providers/z_providers_barrel.dart';

import 'z_services_barrel.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocators() async {
  // * Theme Provider
  locator.registerLazySingleton<ThemeProvider>(() => ThemeProvider());

  // * API Manager
  locator.registerLazySingleton<ApiManager>(() => ApiManager());

  // * Shared Prefs
  locator.registerLazySingleton<SharedPrefsManager>(() => SharedPrefsManager());

  // * Navigation Service
  locator.registerLazySingleton<NavigationService>(() => NavigationService());

  // * Other
}
