import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:pos_start/presentation/src/src.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool isDarkMode = false;
bool isWeb = kIsWeb;

const String prefsKeyLang = "PREFS_KEY_LANG";
const String prefsKeyUiMode = "ui_mode";

class AppPreferences {
  final SharedPreferences _sharedPreferences;

  AppPreferences(this._sharedPreferences);

  Future<String> getAppLanguage() async {
    String? language = _sharedPreferences.getString(prefsKeyLang);

    if (language != null && language.isNotEmpty) {
      return language;
    } else {
      return LanguageType.english.getValue();
    }
  }

  Future<void> setLanguageChanged() async {
    String currentLanguage = await getAppLanguage();
    if (currentLanguage == LanguageType.arabic.getValue()) {
      // save prefs with english lang
      _sharedPreferences.setString(
          prefsKeyLang, LanguageType.english.getValue());
    } else {
      // save prefs with arabic lang
      _sharedPreferences.setString(
          prefsKeyLang, LanguageType.arabic.getValue());
    }
  }

  Future<Locale> getLocal() async {
    String currentLanguage = await getAppLanguage();
    if (currentLanguage == LanguageType.arabic.getValue()) {
      // return arabic local
      return arabicLocal;
    } else {
      // return english local
      return englishLocale;
    }
  }

  Future<bool> setUIMode() async {
    bool uiMode = await getUIMode();
    isDarkMode = !uiMode;
    return await _sharedPreferences.setBool(prefsKeyUiMode, !uiMode);
  }

  Future<bool> getUIMode() async {
    isDarkMode = _sharedPreferences.getBool(prefsKeyUiMode) ?? false;
    return isDarkMode;
  }
}
