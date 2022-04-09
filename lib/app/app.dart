import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_start/cubit/app_cubit.dart';
import 'package:pos_start/presentation/login/cubit/login_cubit.dart';
import 'package:pos_start/presentation/src/src.dart';
import 'package:pos_start/cour/di.dart' as di;
import 'package:pos_start/size_config.dart';

import '../cour/app_prefs.dart';

class MyApp extends StatefulWidget {
  /// private named constructor.
  const MyApp._internal();

  /// single instance -- singleton.
  static const MyApp instance = MyApp._internal();

  /// factory for the class instance
  factory MyApp() => instance;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppPreferences _appPreferences = di.instance<AppPreferences>();

  @override
  void didChangeDependencies() {
    // _appPreferences.getLocal().then((local) => {context.setLocale(local)});

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di.instance<AppCubit>()
            ..getInitUIMode()
            ..changeTime()
            ..getConnectionStatus(),
        ),
        BlocProvider(
          create: (context) => di.instance<LoginCubit>(),
        ),
      ],
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {
          // print("isDark: ${_appPreferences.getData(key: 'isDark')}");
        },
        builder: (context, state) {
          return LayoutBuilder(
            builder: (context, constraints) {
              return OrientationBuilder(
                builder: (context, orientation) {
                  SizeConfig().init(constraints, orientation);
                  return MaterialApp(
                    localizationsDelegates: context.localizationDelegates,
                    supportedLocales: context.supportedLocales,
                    locale: context.locale,
                    debugShowCheckedModeBanner: false,
                    onGenerateRoute: RouteGenerator.getRoute,
                    initialRoute: Routes.loginRoute,
                    theme: lightTheme,
                    darkTheme: darkTheme,
                    themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
