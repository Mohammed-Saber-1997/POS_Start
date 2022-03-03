import 'package:flutter/material.dart';
import 'package:pos_start/presentation/src/src.dart';
import 'package:shared_preferences/shared_preferences.dart';

// bool isDarkMode = false;

const String prefsKeyLang = "PREFS_KEY_LANG";

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

  dynamic getData({
    required String key,
  }) {
    return _sharedPreferences.get(key);
  }

  Future<bool?> saveData({
    required String key,
    required dynamic value,
  }) async {
    if (value is int) return await _sharedPreferences.setInt(key, value);
    if (value is double) return await _sharedPreferences.setDouble(key, value);
    if (value is bool) return await _sharedPreferences.setBool(key, value);

    return await _sharedPreferences.setString(key, value);
  }
}
