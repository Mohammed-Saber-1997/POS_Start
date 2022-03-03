import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_start/cour/app_prefs.dart';
import 'package:pos_start/cubit/app_states.dart';
import 'package:pos_start/cour/di.dart' as di;

class AppCubit extends Cubit<AppStates> {
  final AppPreferences appPreferences;

  AppCubit({required this.appPreferences}) : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  bool isDark = true;

  String changeTime() {
    // var formattedTime = DateFormat("HH : mm : ss").format(DateTime.now()now);
    // print(formattedTime);
    // emit(AppChangeTime());
    // return formattedTime;

    var formattedTime =
        '${DateTime.now().hour < 10 ? '0${DateTime.now().hour}' : DateTime.now().hour} : ${DateTime.now().minute < 10 ? '0${DateTime.now().minute}' : DateTime.now().minute} : ${DateTime.now().second < 10 ? '0${DateTime.now().second}' : DateTime.now().second}';
    print(formattedTime);
    // emit(AppChangeTime());
    return formattedTime;
  }

  // void firstTimeOpenApp() {
  //   if (di.instance<AppPreferences>().getData(key: 'isDark') == null) {
  //     di.instance<AppPreferences>().saveData(key: 'isDark', value: isDark);
  //   }
  // }

  void changeAppThemeMode() {
    if (di.instance<AppPreferences>().getData(key: 'isDark') != null) {
      isDark = di.instance<AppPreferences>().getData(key: 'isDark');
      isDark = !isDark;
    }

    di.instance<AppPreferences>().saveData(key: 'isDark', value: isDark).then(
      (value) {
        emit(AppChangeThemeModeState());
      },
    );
  }

// void changeAppLanguage() {
//   appPreferences.setLanguageChanged().then(
//     (value) {
//       emit(AppChangeLanguage());
//     },
//   );
// }
}
