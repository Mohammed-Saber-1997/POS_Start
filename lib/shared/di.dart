import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_prefs.dart';

final instance = GetIt.instance;
GetIt di = GetIt.I..allowReassignment = true;

Future<void> initAppModule() async {
  final sharedPrefs = await SharedPreferences.getInstance();

  // shared prefs instance
  di.registerLazySingleton<SharedPreferences>(() => sharedPrefs);

  // app prefs instance
  di.registerLazySingleton<AppPreferences>(() => AppPreferences(instance()));

  // // network info
  // instance.registerLazySingleton<NetworkInfo>(
  //     () => NetworkInfoImpl(DataConnectionChecker()));
}
