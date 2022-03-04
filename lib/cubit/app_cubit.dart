import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_start/cour/app_prefs.dart';
import 'package:pos_start/cubit/app_states.dart';

class AppCubit extends Cubit<AppStates> {
  final AppPreferences appPreferences;

  AppCubit({required this.appPreferences}) : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  String changeTime() {
    var formattedTime =
        '${DateTime.now().hour < 10 ? '0${DateTime.now().hour}' : DateTime.now().hour} : ${DateTime.now().minute < 10 ? '0${DateTime.now().minute}' : DateTime.now().minute} : ${DateTime.now().second < 10 ? '0${DateTime.now().second}' : DateTime.now().second}';
    emit(AppChangeTime());
    return formattedTime;
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
