import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pos_start/cubit/app_cubit.dart';
import 'package:pos_start/presentation/src/src.dart';
import 'package:pos_start/presentation/widgets/shared_widgets.dart';

class topPart extends StatelessWidget {
  const topPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color defaultTextColor =
        AppCubit.get(context).isDark ? ColorManager.white : ColorManager.black;
    Color defaultBackgroundColor =
        AppCubit.get(context).isDark ? ColorManager.black : ColorManager.white;

    return Container(
      color: ColorManager.grey,
      child: Padding(
        padding: const EdgeInsets.all(0.5),
        child: Container(
          height: 70,
          color: AppCubit.get(context).isDark
              ? ColorManager.darkBackground
              : ColorManager.lightBackground,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: Row(
              children: [
                myItem(
                  backgroundColor: defaultBackgroundColor,
                  isRectangle: true,
                  isSearchBox: true,
                  borderColor: ColorManager.white,
                  fontColor: ColorManager.grey,
                  name: 'Search...'.tr(),
                  icon: CupertinoIcons.search,
                  iconColor: ColorManager.grey,
                  height: 50,
                  width: 400,
                ),
                Spacer(),
                myItem(
                  backgroundColor: defaultBackgroundColor,
                  borderColor: ColorManager.white,
                  icon: CupertinoIcons.wifi,
                  iconColor: ColorManager.orange,
                  height: 50,
                  width: 50,
                ),
                myItem(
                  backgroundColor: defaultBackgroundColor,
                  borderColor: ColorManager.white,
                  icon: CupertinoIcons.settings,
                  iconColor: ColorManager.grey,
                  height: 50,
                  width: 50,
                ),
                myItem(
                  fontColor: defaultTextColor,
                  backgroundColor: defaultBackgroundColor,
                  isRectangle: true,
                  borderColor: ColorManager.white,
                  name: 'Lock'.tr(),
                  icon: CupertinoIcons.lock_fill,
                  iconColor: ColorManager.grey,
                  height: 50,
                  // width: 90,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(end: 8.0),
                  child: TextButton(
                    onPressed: () {
                      AppCubit.get(context).changeAppThemeMode();
                    },
                    child: Text(
                      AppCubit.get(context).isDark ? 'Light' : 'Dark',
                      style:
                          getBoldStyle(fontSize: 18, color: defaultTextColor),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(end: 8.0),
                  child: TextButton(
                    onPressed: () async {
                      if (context.locale.languageCode == "en") {
                        await context.setLocale(context.supportedLocales[1]);
                      } else {
                        await context.setLocale(context.supportedLocales[0]);
                      }
                    },
                    child: Text(
                      context.locale.languageCode == "ar" ? 'English' : 'عربي',
                      style:
                          getBoldStyle(fontSize: 18, color: defaultTextColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
