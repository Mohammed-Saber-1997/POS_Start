import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pos_start/cubit/app_cubit.dart';
import 'package:pos_start/presentation/src/src.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:pos_start/presentation/widgets/default_button.dart';

class ShowPaymentDialog {
  void showPaymentDialog(
    BuildContext context, {
    required String title,
    required String body,
  }) {
    Color defaultTextColor =
        AppCubit.get(context).isDark ? ColorManager.white : ColorManager.black;
    Color defaultBackgroundColor = AppCubit.get(context).isDark
        ? ColorManager.darkBackground2
        : ColorManager.lightBackground;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s10),
        ),
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: ResponsiveSize.w500,
          width: ResponsiveSize.w700,
          color: defaultBackgroundColor,
          child: Column(
            children: [
              Container(
                height: ResponsiveSize.w50,
                color: ColorManager.darkBackground,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          title,
                          style:
                              Theme.of(context).textTheme.headline3!.copyWith(
                                    fontSize: ResponsiveSize.w18,
                                    color: ColorManager.white,
                                  ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      padding:
                          EdgeInsets.symmetric(horizontal: ResponsiveSize.w15),
                      icon: Icon(
                        CupertinoIcons.clear_thick,
                        color: ColorManager.red,
                        size: ResponsiveSize.w20,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(ResponsiveSize.w25),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                    start: ResponsiveSize.w8),
                                child: Text(
                                  'Amount',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .copyWith(
                                        fontSize: ResponsiveSize.w14,
                                        color: ColorManager.grey,
                                      ),
                                ),
                              ),
                              myItem(
                                backgroundColor: ColorManager.greyWithOpacity,
                                borderColor: Colors.transparent,
                                height: ResponsiveSize.w40,
                                width: ResponsiveSize.w150,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: ResponsiveSize.w10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                    start: ResponsiveSize.w8),
                                child: Text(
                                  'Paid',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .copyWith(
                                        fontSize: ResponsiveSize.w14,
                                        color: ColorManager.grey,
                                      ),
                                ),
                              ),
                              myItem(
                                backgroundColor: ColorManager.greyWithOpacity,
                                borderColor: Colors.transparent,
                                height: ResponsiveSize.w40,
                                width: ResponsiveSize.w150,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: ResponsiveSize.w10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                    start: ResponsiveSize.w8),
                                child: Text(
                                  'Balance',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .copyWith(
                                        fontSize: ResponsiveSize.w14,
                                        color: ColorManager.grey,
                                      ),
                                ),
                              ),
                              myItem(
                                backgroundColor: ColorManager.greyWithOpacity,
                                borderColor: Colors.transparent,
                                height: ResponsiveSize.w40,
                                width: ResponsiveSize.w150,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: ResponsiveSize.w12),
                            child: Container(
                              height: ResponsiveSize.w55,
                              width: ResponsiveSize.w300,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: ColorManager.grey,
                                  width: ResponsiveSize.w0_5,
                                ),
                                color: AppCubit.get(context).isDark
                                    ? ColorManager.darkBackground2
                                    : ColorManager.lightBackground,
                              ),
                              alignment: AlignmentDirectional.center,
                              child: Text(
                                '123.000',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3!
                                    .copyWith(
                                      fontSize: ResponsiveSize.w30,
                                      color: ColorManager.defaultTextColor,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    myItem(
                                      name: 'Visa',
                                      backgroundColor:
                                          ColorManager.greyWithOpacity,
                                      borderColor: Colors.transparent,
                                      fontSize: ResponsiveSize.w18,
                                      fontColor: defaultTextColor,
                                      height: ResponsiveSize.w50,
                                      width: ResponsiveSize.w150,
                                    ),
                                    SizedBox(
                                      width: ResponsiveSize.w5,
                                    ),
                                    myItem(
                                      name: 'Cash',
                                      backgroundColor:
                                          ColorManager.greyWithOpacity,
                                      borderColor: Colors.transparent,
                                      fontSize: ResponsiveSize.w18,
                                      fontColor: defaultTextColor,
                                      height: ResponsiveSize.w50,
                                      width: ResponsiveSize.w150,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: ResponsiveSize.w5,
                                ),
                                Row(
                                  children: [
                                    myItem(
                                      name: 'K - Net',
                                      backgroundColor:
                                          ColorManager.greyWithOpacity,
                                      borderColor: Colors.transparent,
                                      fontSize: ResponsiveSize.w18,
                                      fontColor: defaultTextColor,
                                      height: ResponsiveSize.w50,
                                      width: ResponsiveSize.w150,
                                    ),
                                    SizedBox(
                                      width: ResponsiveSize.w5,
                                    ),
                                    myItem(
                                      name: 'Master',
                                      backgroundColor:
                                          ColorManager.greyWithOpacity,
                                      borderColor: Colors.transparent,
                                      fontSize: ResponsiveSize.w18,
                                      fontColor: defaultTextColor,
                                      height: ResponsiveSize.w50,
                                      width: ResponsiveSize.w150,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: ResponsiveSize.w5,
                                ),
                                Row(
                                  children: [
                                    myItem(
                                      name: 'Return',
                                      backgroundColor:
                                          ColorManager.greyWithOpacity,
                                      borderColor: Colors.transparent,
                                      fontSize: ResponsiveSize.w18,
                                      fontColor: defaultTextColor,
                                      height: ResponsiveSize.w50,
                                      width: ResponsiveSize.w150,
                                    ),
                                    SizedBox(
                                      width: ResponsiveSize.w5,
                                    ),
                                    myItem(
                                      name: 'Coupon',
                                      backgroundColor:
                                          ColorManager.greyWithOpacity,
                                      borderColor: Colors.transparent,
                                      fontSize: ResponsiveSize.w18,
                                      fontColor: defaultTextColor,
                                      height: ResponsiveSize.w50,
                                      width: ResponsiveSize.w150,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: ResponsiveSize.w5,
                                ),
                                Row(
                                  children: [
                                    myItem(
                                      name: 'Delivery',
                                      backgroundColor:
                                          ColorManager.greyWithOpacity,
                                      borderColor: Colors.transparent,
                                      fontSize: ResponsiveSize.w18,
                                      fontColor: defaultTextColor,
                                      height: ResponsiveSize.w50,
                                      width: ResponsiveSize.w150,
                                    ),
                                    SizedBox(
                                      width: ResponsiveSize.w5,
                                    ),
                                    myItem(
                                      name: 'Marketing',
                                      backgroundColor:
                                          ColorManager.greyWithOpacity,
                                      borderColor: Colors.transparent,
                                      fontSize: ResponsiveSize.w18,
                                      fontColor: defaultTextColor,
                                      height: ResponsiveSize.w50,
                                      width: ResponsiveSize.w150,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Expanded(
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: ResponsiveSize.w14),
                                    child: DataTable(
                                      columns: [
                                        DataColumn(
                                          label: Text(
                                            'Ser'.tr(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline1!
                                                .copyWith(
                                                  fontSize: ResponsiveSize.w14,
                                                  color: ColorManager
                                                      .defaultTextColor,
                                                ),
                                          ),
                                        ),
                                        DataColumn(
                                          label: Text(
                                            'Amount'.tr(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline1!
                                                .copyWith(
                                                  fontSize: ResponsiveSize.w14,
                                                  color: ColorManager
                                                      .defaultTextColor,
                                                ),
                                          ),
                                        ),
                                        DataColumn(
                                          label: Text(
                                            'Name'.tr(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline1!
                                                .copyWith(
                                                  fontSize: ResponsiveSize.w14,
                                                  color: ColorManager
                                                      .defaultTextColor,
                                                ),
                                          ),
                                        ),
                                      ],
                                      rows: [
                                        DataRow(
                                          cells: [
                                            DataCell(
                                              Text(
                                                '',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline4!
                                                    .copyWith(
                                                      color: ColorManager
                                                          .defaultTextColor,
                                                    ),
                                              ),
                                            ),
                                            DataCell(
                                              Text(
                                                '',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline4!
                                                    .copyWith(
                                                      color: ColorManager
                                                          .defaultTextColor,
                                                    ),
                                              ),
                                            ),
                                            DataCell(
                                              Text(
                                                '',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline4!
                                                    .copyWith(
                                                      color: ColorManager
                                                          .defaultTextColor,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
