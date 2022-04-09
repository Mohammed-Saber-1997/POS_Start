// import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pos_start/cubit/app_cubit.dart';
import 'package:pos_start/presentation/home/show_search_dialog.dart';
import 'package:pos_start/presentation/home/show_settings_dialog.dart';
import 'package:pos_start/presentation/src/src.dart';
import 'package:pos_start/presentation/widgets/default_button.dart';

class TopPart extends StatelessWidget {
  const TopPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.grey,
      child: Padding(
        padding: EdgeInsets.all(ResponsiveSize.w0_5),
        child: Container(
          height: ResponsiveSize.w70,
          color: ColorManager.defaultSidePartsColor,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: ResponsiveSize.w6),
            child: Row(
              children: [
                MyItem(
                  backgroundColor: ColorManager.greyWithOpacity,
                  borderColor: Colors.transparent,
                  isRectangle: true,
                  isSearchBox: true,
                  // borderColor: ColorManager.white,
                  fontColor: ColorManager.grey,
                  name: 'Search'.tr() + ' ...',
                  fontSize: ResponsiveSize.w16,
                  icon: SvgPicture.asset(
                    'assets/images/search-solid 2.svg',
                    color: ColorManager.grey,
                    height: ResponsiveSize.w25,
                    width: ResponsiveSize.w25,
                  ),
                  height: ResponsiveSize.w50,
                  width: ResponsiveSize.w400,
                  function: () => ShowSearchDialog().showSearchDialog(
                    context,
                    title: 'Item Search',
                    body: 'Item Search',
                  ),
                ),
                const Spacer(),
                WifiWidget(),
                MyItem(
                  backgroundColor: ColorManager.greyWithOpacity,
                  borderColor: Colors.transparent,
                  icon: SvgPicture.asset(
                    'assets/images/cogs-solid.svg',
                    color: ColorManager.grey,
                    height: ResponsiveSize.w25,
                    width: ResponsiveSize.w25,
                  ),
                  height: ResponsiveSize.w50,
                  width: ResponsiveSize.w50,
                  function: () => ShowSettingsDialog().showSettingsDialog(
                    context,
                    title: 'Settings',
                    body: 'Settings',
                  ),
                ),
                MyItem(
                  backgroundColor: ColorManager.greyWithOpacity,
                  isRectangle: true,
                  borderColor: Colors.transparent,
                  name: 'Lock'.tr(),
                  icon: SvgPicture.asset(
                    'assets/images/lock-solid.svg',
                    color: ColorManager.grey,
                    height: ResponsiveSize.w25,
                    width: ResponsiveSize.w25,
                  ),
                  height: ResponsiveSize.w50,
                ),
                MyItem(
                  backgroundColor: ColorManager.greyWithOpacity,
                  borderColor: ColorManager.white,
                  icon: SvgPicture.asset(
                    'assets/images/lock-solid.svg',
                    color: ColorManager.defaultTextColor,
                    height: ResponsiveSize.w25,
                    width: ResponsiveSize.w25,
                  ),
                  height: ResponsiveSize.w50,
                  width: ResponsiveSize.w50,
                  function: () {
                    AppCubit.get(context).changeAppThemeMode();
                  },
                ),
                // Padding(
                //   padding: const EdgeInsetsDirectional.only(end: ResponsiveSize.w8),
                //   child: TextButton(
                //     onPressed: () {
                //       AppCubit.get(context).changeAppThemeMode();
                //     },
                //     child: Text(
                //       di.instance<AppPreferences>().getData(key: 'isDark')
                //           ? 'Light'
                //           : 'Dark',
                //       style: Theme.of(context).textTheme.headline3!.copyWith(
                //             fontSize: ResponsiveSize.w18,
                //             color: ColorManager.defaultTextColor,
                //           ),
                //     ),
                //   ),
                // ),
                Padding(
                  padding: EdgeInsetsDirectional.only(end: ResponsiveSize.w8),
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
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                            fontSize: ResponsiveSize.w18,
                            color: ColorManager.defaultTextColor,
                          ),
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

class WifiWidget extends StatefulWidget {
  const WifiWidget({Key? key}) : super(key: key);

  @override
  State<WifiWidget> createState() => _WifiWidgetState();
}

class _WifiWidgetState extends State<WifiWidget> {
  @override
  void dispose() {
    AppCubit.get(context).subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AppCubit appCubit = AppCubit.get(context);
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return MyItem(
          backgroundColor: ColorManager.greyWithOpacity,
          borderColor: Colors.transparent,
          icon: SvgPicture.asset(
            'assets/images/wifi-solid.svg',
            color:
                appCubit.isConnected ? ColorManager.orange : ColorManager.white,
            height: ResponsiveSize.w25,
            width: ResponsiveSize.w25,
          ),
          // iconColor: ColorManager.orange,
          height: ResponsiveSize.w50,
          width: ResponsiveSize.w50,
        );
      },
    );
  }
}