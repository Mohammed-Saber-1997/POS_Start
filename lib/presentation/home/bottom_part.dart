import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pos_start/presentation/home/show_delete_dialog.dart';
import 'package:pos_start/presentation/home/show_payment_dialog.dart';
import 'package:pos_start/presentation/home/show_print_dialog.dart';
import 'package:pos_start/presentation/widgets/default_button.dart';
import 'package:pos_start/presentation/widgets/shared_widgets.dart';
import 'package:pos_start/presentation/home/show_search_dialog.dart';

import '../src/src.dart';

class BottomPart extends StatelessWidget {
  const BottomPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ResponsiveSize.w165,
      color: ColorManager.defaultSidePartsColor,
      child: Padding(
        padding: EdgeInsets.all(ResponsiveSize.w5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    myItem(
                      name: 'Change Qty'.tr(),
                      backgroundColor: ColorManager.blue,
                      fontColor: ColorManager.white,
                    ),
                    myItem(
                      name: 'Discount'.tr(),
                      icon: SvgPicture.asset(
                        'assets/images/percentage-solid.svg',
                        color: ColorManager.defaultTextColor,
                        height: ResponsiveSize.w25,
                        width: ResponsiveSize.w25,
                      ),
                    ),
                    myItem(
                      name: 'Price Chick'.tr(),
                      icon: SvgPicture.asset(
                        'assets/images/barcode-solid.svg',
                        color: ColorManager.defaultTextColor,
                        height: ResponsiveSize.w25,
                        width: ResponsiveSize.w25,
                      ),
                    ),
                    myItem(
                      name: 'Repeat Last Item'.tr(),
                      width: ResponsiveSize.w100,
                      icon: SvgPicture.asset(
                        'assets/images/sync-alt-solid.svg',
                        color: ColorManager.defaultTextColor,
                        height: ResponsiveSize.w25,
                        width: ResponsiveSize.w25,
                      ),
                    ),
                    myItem(
                      name: 'Search'.tr(),
                      icon: SvgPicture.asset(
                        'assets/images/search-solid.svg',
                        color: ColorManager.defaultTextColor,
                        height: ResponsiveSize.w25,
                        width: ResponsiveSize.w25,
                      ),
                      function: () => ShowSearchDialog().showSearchDialog(
                        context,
                        title: 'Item Search',
                        body: 'Item Search',
                      ),
                    ),
                    myItem(
                      name: 'Open Drawer'.tr(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    myItem(
                      // SvgPicture.asset(
                      //   'assets/images/cancel.svg',
                      //   color: Colors.red,
                      // )

                      isRectangle: true,
                      borderColor: ColorManager.red,
                      name: 'Delete all Items'.tr(),
                      icon: SvgPicture.asset(
                        'assets/images/times-solid.svg',
                        color: ColorManager.red,
                        height: ResponsiveSize.w25,
                        width: ResponsiveSize.w25,
                      ),
                      width: ResponsiveSize.w150,
                      function: () => ShowDeleteDialog().showDeleteDialog(
                        context,
                        title: 'Delete All Items',
                        body:
                            'are you Sure you want to Delete All items from currant invoice ?',
                      ),
                    ),
                    myItem(
                      isRectangle: true,
                      borderColor: ColorManager.orange,
                      name: 'Delete Selected Item'.tr(),
                      icon: SvgPicture.asset(
                        'assets/images/times-solid.svg',
                        color: ColorManager.orange,
                        height: ResponsiveSize.w25,
                        width: ResponsiveSize.w25,
                      ),
                      width: ResponsiveSize.w170,
                      function: () => ShowDeleteDialog().showDeleteDialog(
                        context,
                        title: 'Delete Item',
                        body:
                            'are you Sure you want to Delete this item from currant invoice ?',
                      ),
                    ),
                    myItem(
                      isRectangle: true,
                      name: 'Clear Input'.tr(),
                      icon: SvgPicture.asset(
                        'assets/images/broom-solid.svg',
                        color: ColorManager.defaultTextColor,
                        height: ResponsiveSize.w28,
                        width: ResponsiveSize.w28,
                      ),
                      width: ResponsiveSize.w120,
                    ),
                    myItem(
                      isRectangle: true,
                      name: 'Lock'.tr(),
                      icon: SvgPicture.asset(
                        'assets/images/lock-solid.svg',
                        color: ColorManager.defaultTextColor,
                        height: ResponsiveSize.w25,
                        width: ResponsiveSize.w25,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: ResponsiveSize.w5),
              child: myVerticalDivider(),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        myItem(
                          backgroundColor: ColorManager.defaultTextColor,
                          fontColor: ColorManager.reversedTextColor,
                          iconColor: ColorManager.reversedTextColor,
                          name: 'CASH',
                          // icon: SvgPicture.asset(
                          //   'assets/images/CASH.svg',
                          //   color: ColorManager.reversedTextColor,
                          //   height: ResponsiveSize.w25,
                          //   width: ResponsiveSize.w25,
                          // ),
                          height: ResponsiveSize.w40,
                          width: ResponsiveSize.w60,
                          function: () => ShowPrintDialog().showPrintDialog(
                            context,
                            title: 'Print',
                            body: 'Print',
                          ),
                        ),
                        myItem(
                          backgroundColor: ColorManager.defaultTextColor,
                          fontColor: ColorManager.reversedTextColor,
                          iconColor: ColorManager.reversedTextColor,
                          name: 'K_NET',
                          height: ResponsiveSize.w40,
                          width: ResponsiveSize.w60,
                        ),
                      ],
                    ),
                    myItem(
                      backgroundColor: ColorManager.defaultTextColor,
                      fontColor: ColorManager.reversedTextColor,
                      name: 'Multiple Payment',
                      icon: SvgPicture.asset(
                        'assets/images/credit-card-regular.svg',
                        color: ColorManager.reversedTextColor,
                        height: ResponsiveSize.w25,
                        width: ResponsiveSize.w25,
                      ),
                      height: ResponsiveSize.w90,
                      width: ResponsiveSize.w120,
                      function: () => ShowPaymentDialog().showPaymentDialog(
                        context,
                        title: 'Payment',
                        body: 'Payment',
                      ),
                    ),
                  ],
                ),
                myItem(
                  isRectangle: true,
                  isSearchBox: true,
                  name: 'Refund',
                  icon: SvgPicture.asset(
                    'assets/images/retweet-solid.svg',
                    color: ColorManager.defaultTextColor,
                    height: ResponsiveSize.w25,
                    width: ResponsiveSize.w25,
                  ),
                  height: ResponsiveSize.w45,
                  width: ResponsiveSize.w190,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
