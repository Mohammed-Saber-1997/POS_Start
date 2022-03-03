import 'package:flutter/material.dart';
import 'package:pos_start/presentation/src/src.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: ColorManager.lightBackground,
  fontFamily: FontConstants.fontFamily,
  // Text theme
  textTheme: TextTheme(
    headline1: getRegularStyle(
        color: ColorManager.black, fontSize: ResponsiveSize.w30),
    headline2: getSemiBoldStyle(
        color: ColorManager.black, fontSize: ResponsiveSize.w20),
    headline3:
        getBoldStyle(color: ColorManager.black, fontSize: ResponsiveSize.w20),
    headline4:
        getMediumStyle(color: ColorManager.black, fontSize: ResponsiveSize.w12),
    headline5:
        getLightStyle(color: ColorManager.black, fontSize: ResponsiveSize.w12),
  ),
);

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: ColorManager.darkBackground,
  fontFamily: FontConstants.fontFamily,
  // Text theme
  textTheme: TextTheme(
    headline1: getRegularStyle(
        color: ColorManager.white, fontSize: ResponsiveSize.w30),
    headline2: getSemiBoldStyle(
        color: ColorManager.white, fontSize: ResponsiveSize.w20),
    headline3:
        getBoldStyle(color: ColorManager.white, fontSize: ResponsiveSize.w20),
    headline4:
        getMediumStyle(color: ColorManager.white, fontSize: ResponsiveSize.w12),
    headline5:
        getLightStyle(color: ColorManager.white, fontSize: ResponsiveSize.w12),
  ),
);

// ThemeData getApplicationTheme() {
//   return ThemeData(
//     primarySwatch: Colors.blue,
//   );
//   // main colors of the app
//   //   primaryColor: ColorManager.primary,
//   //   primaryColorLight: ColorManager.primaryOpacity70,
//   //   primaryColorDark: ColorManager.darkPrimary,
//   //   disabledColor: ColorManager.grey1,
//   //   // ripple color
//   //   splashColor: ColorManager.primaryOpacity70,
//   //   // will be used in case of disabled button for example
//   //   accentColor: ColorManager.grey,
//   //   // card view theme
//   //   cardTheme: CardTheme(
//   //       color: ColorManager.white,
//   //       shadowColor: ColorManager.grey,
//   //       elevation: AppSize.s4),
//   //   // App bar theme
//   //   appBarTheme: AppBarTheme(
//   //       centerTitle: true,
//   //       color: ColorManager.primary,
//   //       elevation: AppSize.s4,
//   //       shadowColor: ColorManager.primaryOpacity70,
//   //       titleTextStyle: getRegularStyle(
//   //           color: ColorManager.white, fontSize: ResponsiveSize.w16)),
//   //   // Button theme
//   //   buttonTheme: ButtonThemeData(
//   //       shape: StadiumBorder(),
//   //       disabledColor: ColorManager.grey1,
//   //       buttonColor: ColorManager.primary,
//   //       splashColor: ColorManager.primaryOpacity70),
//   //
//   //   // elevated button theme
//   //   elevatedButtonTheme: ElevatedButtonThemeData(
//   //       style: ElevatedButton.styleFrom(
//   //           textStyle: getRegularStyle(color: ColorManager.white),
//   //           primary: ColorManager.primary,
//   //           shape: RoundedRectangleBorder(
//   //               borderRadius: BorderRadius.circular(AppSize.s12)))),
//   //
//   //   // Text theme
//   //   textTheme: TextTheme(
//   //       headline1: getSemiBoldStyle(
//   //           color: ColorManager.darkGrey, fontSize: ResponsiveSize.w16),
//   //       subtitle1: getMediumStyle(
//   //           color: ColorManager.lightGrey, fontSize: ResponsiveSize.w14),
//   //       subtitle2: getMediumStyle(
//   //           color: ColorManager.primary, fontSize: ResponsiveSize.w14),
//   //       caption: getRegularStyle(color: ColorManager.grey1),
//   //       bodyText1: getRegularStyle(color: ColorManager.grey)),
//   //   // input decoration theme (text form field)
//   //
//   //   inputDecorationTheme: InputDecorationTheme(
//   //     contentPadding: EdgeInsets.all(AppPadding.p8),
//   //     // hint style
//   //     hintStyle: getRegularStyle(color: ColorManager.grey1),
//   //
//   //     // label style
//   //     labelStyle: getMediumStyle(color: ColorManager.darkGrey),
//   //     // error style
//   //     errorStyle: getRegularStyle(color: ColorManager.error),
//   //
//   //     // enabled border
//   //     enabledBorder: OutlineInputBorder(
//   //         borderSide:
//   //         BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
//   //         borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
//   //
//   //     // focused border
//   //     focusedBorder: OutlineInputBorder(
//   //         borderSide:
//   //         BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
//   //         borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
//   //
//   //     // error border
//   //     errorBorder: OutlineInputBorder(
//   //         borderSide:
//   //         BorderSide(color: ColorManager.error, width: AppSize.s1_5),
//   //         borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
//   //     // focused error border
//   //     focusedErrorBorder: OutlineInputBorder(
//   //         borderSide:
//   //         BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
//   //         borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
//   //   ));
// }
