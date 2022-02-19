import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pos_start/cubit/app_cubit.dart';
import 'package:pos_start/presentation/src/color_manager.dart';
import 'package:pos_start/presentation/widgets/default_button.dart';
import 'package:pos_start/presentation/widgets/shared_widgets.dart';

class bottomPart extends StatelessWidget {
  const bottomPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color defaultTextColor =
        AppCubit.get(context).isDark ? ColorManager.white : ColorManager.black;
    Color defaultBackgroundColor =
        AppCubit.get(context).isDark ? ColorManager.black : ColorManager.white;

    return Container(
      height: 165,
      color: AppCubit.get(context).isDark
          ? ColorManager.darkBackground
          : ColorManager.lightBackground,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    myItem(
                      fontColor: defaultTextColor,
                      iconColor: defaultTextColor,
                      backgroundColor: defaultBackgroundColor,
                      name: 'Change Qty'.tr(),
                    ),
                    myItem(
                      fontColor: defaultTextColor,
                      iconColor: defaultTextColor,
                      backgroundColor: defaultBackgroundColor,
                      name: 'Discount'.tr(),
                      icon: CupertinoIcons.percent,
                      // icon: MyFlutterApp.percentage_solid,
                    ),
                    myItem(
                      fontColor: defaultTextColor,
                      iconColor: defaultTextColor,
                      backgroundColor: defaultBackgroundColor,
                      name: 'Price Chick'.tr(),
                      icon: CupertinoIcons.barcode,
                    ),
                    myItem(
                      fontColor: defaultTextColor,
                      iconColor: defaultTextColor,
                      backgroundColor: defaultBackgroundColor,
                      name: 'Repeat Last Item'.tr(),
                      icon: CupertinoIcons.arrow_2_circlepath,
                      width: 120,
                    ),
                    myItem(
                      fontColor: defaultTextColor,
                      iconColor: defaultTextColor,
                      backgroundColor: defaultBackgroundColor,
                      name: 'Search'.tr(),
                      icon: CupertinoIcons.search,
                      function: () => AppCubit.get(context).showSearchDialog(
                        context,
                        title: 'Item Search',
                        body: 'Item Search',
                      ),
                    ),
                    myItem(
                      fontColor: defaultTextColor,
                      iconColor: defaultTextColor,
                      backgroundColor: defaultBackgroundColor,
                      name: 'Open Drawer'.tr(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    myItem(
                      fontColor: defaultTextColor,
                      backgroundColor: defaultBackgroundColor,
                      isRectangle: true,
                      borderColor: ColorManager.red,
                      name: 'Delete all Items'.tr(),
                      icon: CupertinoIcons.clear_thick,
                      iconColor: ColorManager.red,
                      height: 55,
                      width: 150,
                      function: () => AppCubit.get(context).showCustomDialog(
                        context,
                        title: 'Delete All Items',
                        body:
                            'are you Sure you want to Delete All items from currant invoice ?',
                      ),
                    ),
                    myItem(
                      fontColor: defaultTextColor,
                      backgroundColor: defaultBackgroundColor,
                      isRectangle: true,
                      borderColor: ColorManager.orange,
                      name: 'Delete Selected Item'.tr(),
                      icon: CupertinoIcons.clear_thick,
                      iconColor: ColorManager.orange,
                      height: 55,
                      width: 170,
                      function: () => AppCubit.get(context).showCustomDialog(
                        context,
                        title: 'Delete Item',
                        body:
                            'are you Sure you want to Delete this item from currant invoice ?',
                      ),
                    ),
                    myItem(
                      fontColor: defaultTextColor,
                      iconColor: defaultTextColor,
                      backgroundColor: defaultBackgroundColor,
                      isRectangle: true,
                      name: 'Clear Input'.tr(),
                      icon: CupertinoIcons.delete,
                      height: 55,
                      width: 120,
                    ),
                    myItem(
                      fontColor: defaultTextColor,
                      iconColor: defaultTextColor,
                      backgroundColor: defaultBackgroundColor,
                      isRectangle: true,
                      name: 'Lock'.tr(),
                      icon: CupertinoIcons.lock_fill,
                      height: 55,
                      // width: 90,
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: myVerticalDivider(),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        myItem(
                          backgroundColor: defaultTextColor,
                          fontColor: defaultBackgroundColor,
                          iconColor: defaultBackgroundColor,
                          name: 'CASH',
                          height: 40,
                          width: 60,
                          function: () => AppCubit.get(context).showPrintDialog(
                            context,
                            title: 'Print',
                            body: 'Print',
                          ),
                        ),
                        myItem(
                          backgroundColor: defaultTextColor,
                          fontColor: defaultBackgroundColor,
                          iconColor: defaultBackgroundColor,
                          name: 'K_NET',
                          height: 40,
                          width: 60,
                        ),
                      ],
                    ),
                    myItem(
                      backgroundColor: defaultTextColor,
                      fontColor: defaultBackgroundColor,
                      iconColor: defaultBackgroundColor,
                      name: 'Multiple Payment',
                      icon: CupertinoIcons.money_dollar_circle,
                      height: 90,
                      width: 120,
                      function: () => AppCubit.get(context).showPaymentDialog(
                        context,
                        title: 'Payment',
                        body: 'Payment',
                      ),
                    ),
                  ],
                ),
                myItem(
                  fontColor: defaultTextColor,
                  iconColor: defaultTextColor,
                  backgroundColor: defaultBackgroundColor,
                  isRectangle: true,
                  isSearchBox: true,
                  name: 'Refund',
                  icon: CupertinoIcons.arrow_2_squarepath,
                  height: 45,
                  width: 190,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
