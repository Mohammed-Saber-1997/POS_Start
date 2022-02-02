import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'app/app.dart';
import 'cour/dependency_injection.dart' as di;
import 'presentation/src/language_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await di.init();
  runApp(EasyLocalization(
    supportedLocales: const [englishLocale, arabicLocal],
    path: assetsPathLocalisations,
    child: MyApp(),
  ));
}

///
/// Status Bar color
///
// getCurrentStatusNavigationBarColor() {
//   if (isLightTheme) {
//     SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//       statusBarColor: Colors.transparent,
//       statusBarBrightness: Brightness.light,
//       statusBarIconBrightness: Brightness.dark,
//       systemNavigationBarColor: Color(0xFFFFFFFF),
//       systemNavigationBarIconBrightness: Brightness.dark,
//     ));
//   } else {
//     SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//       statusBarColor: Colors.transparent,
//       statusBarBrightness: Brightness.dark,
//       statusBarIconBrightness: Brightness.light,
//       systemNavigationBarColor: Color(0xFF26242e),
//       systemNavigationBarIconBrightness: Brightness.light,
//     ));
//   }
// }
