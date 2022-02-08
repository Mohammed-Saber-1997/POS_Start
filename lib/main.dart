import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_start/cache_helper.dart';
import 'package:pos_start/cubit/app_cubit.dart';
import 'package:pos_start/cubit/app_states.dart';
import 'package:pos_start/presentation/home/home_screen.dart';

import 'app/app.dart';
import 'cour/dependency_injection.dart' as di;
import 'presentation/src/language_manager.dart';
import 'presentation/src/src.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  CacheHelper.init();
  await di.init();

  // bool isDark = CacheHelper.getData(key: 'isDark');

  runApp(EasyLocalization(
    supportedLocales: const [Locale("en", "US"), Locale("ar", "SA")],
    path: assetsPathLocalisations,
    fallbackLocale: const Locale("en", "US"),
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

class MyApp extends StatelessWidget {
  // final bool isDark;
  const MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            darkTheme: ThemeData(
              scaffoldBackgroundColor: ColorManager.darkBackground2,
              textTheme: TextTheme(),
            ),
            themeMode:
                AppCubit.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
            home: HomeScreen(),
          );
        },
      ),
    );
  }
}
