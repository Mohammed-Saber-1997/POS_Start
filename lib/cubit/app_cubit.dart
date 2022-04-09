import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:pos_start/cour/app_prefs.dart';
import 'package:pos_start/cour/network/network_info.dart';
import 'package:pos_start/cour/extensions.dart';

part 'app_states.dart';

class AppCubit extends Cubit<AppStates> {
  final AppPreferences appPreferences;
  final NetworkInfo? networkInfo;

  AppCubit({required this.appPreferences, this.networkInfo})
      : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  String changeTime() {
    var formattedTime =
        '${DateTime.now().hour < 10 ? '0${DateTime.now().hour}' : DateTime.now().hour} : ${DateTime.now().minute < 10 ? '0${DateTime.now().minute}' : DateTime.now().minute} : ${DateTime.now().second < 10 ? '0${DateTime.now().second}' : DateTime.now().second}';
    emit(AppChangeTime());
    return formattedTime;
  }

  bool isConnected = false;
  late StreamSubscription subscription;

  getConnectionStatus() {
    if (networkInfo.isNotNullObject) {
      networkInfo!.isConnected.then((connection) {
        isConnected = connection;

        subscription =
            InternetConnectionChecker().onStatusChange.listen((status) {
          final connection = status == InternetConnectionStatus.connected;
          isConnected = connection;
        });
      });
    } else {
      isConnected = true;
    }
    emit(AppChangeConnection());
  }

  void getInitUIMode() {
    appPreferences.getUIMode();
  }

  void changeAppThemeMode() {
    appPreferences.setUIMode().then((value) {
      emit(AppChangeThemeModeState());
    });
  }

// void changeAppLanguage() {
//   appPreferences.setLanguageChanged().then(
//     (value) {
//       emit(AppChangeLanguage());
//     },
//   );
// }
}
