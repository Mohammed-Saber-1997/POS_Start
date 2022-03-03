import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pos_start/cubit/app_cubit.dart';
import 'package:pos_start/presentation/src/src.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:pos_start/presentation/widgets/default_button.dart';
import 'package:pos_start/presentation/widgets/shared_widgets.dart';

class ShowSearchDialog {
  void showSearchDialog(
    BuildContext context, {
    required String title,
    required String body,
  }) {
    Color defaultTextColor =
        AppCubit.get(context).isDark ? ColorManager.white : ColorManager.black;
    Color defaultBackgroundColor = AppCubit.get(context).isDark
        ? ColorManager.darkBackground2
        : ColorManager.lightBackground;

    int searchDialogSelectedValue = 0;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(ResponsiveSize.w10),
        ),
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: ResponsiveSize.w600,
          width: ResponsiveSize.w800,
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
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            myItem(
                              backgroundColor: ColorManager.greyWithOpacity,
                              borderColor: Colors.transparent,
                              isRectangle: true,
                              isSearchBox: true,
                              // borderColor: ColorManager.white,
                              fontColor: ColorManager.grey,
                              name: 'Search ...'.tr(),
                              fontSize: ResponsiveSize.w16,
                              icon: SvgPicture.asset(
                                'assets/images/search-solid 2.svg',
                                color: ColorManager.grey,
                                height: ResponsiveSize.w25,
                                width: ResponsiveSize.w25,
                              ),
                              height: ResponsiveSize.w50,
                              width: ResponsiveSize.w400,
                            ),
                            SizedBox(
                              width: ResponsiveSize.w80,
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Radio(
                                      activeColor: defaultTextColor,
                                      value: 1,
                                      groupValue: searchDialogSelectedValue,
                                      onChanged: (int? value) {
                                        searchDialogSelectedValue = value!;
                                      },
                                    ),
                                    SizedBox(
                                      width: ResponsiveSize.w5,
                                    ),
                                    Text(
                                      'Desc',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline3!
                                          .copyWith(
                                            fontSize: ResponsiveSize.w14,
                                            color: ColorManager.grey,
                                          ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: ResponsiveSize.w30,
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      activeColor: defaultTextColor,
                                      value: 2,
                                      groupValue: searchDialogSelectedValue,
                                      onChanged: (int? value) {
                                        searchDialogSelectedValue = value!;
                                      },
                                    ),
                                    SizedBox(
                                      width: ResponsiveSize.w5,
                                    ),
                                    Text(
                                      'Art.No',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline3!
                                          .copyWith(
                                            fontSize: ResponsiveSize.w14,
                                            color: ColorManager.grey,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: ResponsiveSize.w10,
                        ),
                        myHorizontalDivider(),
                        DataTable(
                          columns: [
                            DataColumn(
                              label: Text(
                                'Barcode'.tr(),
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3!
                                    .copyWith(
                                      fontSize: ResponsiveSize.w14,
                                      color: ColorManager.defaultTextColor,
                                    ),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Item Code'.tr(),
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3!
                                    .copyWith(
                                      fontSize: ResponsiveSize.w14,
                                      color: ColorManager.defaultTextColor,
                                    ),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Art. No'.tr(),
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3!
                                    .copyWith(
                                      fontSize: ResponsiveSize.w14,
                                      color: ColorManager.defaultTextColor,
                                    ),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Item Description'.tr(),
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3!
                                    .copyWith(
                                      fontSize: ResponsiveSize.w14,
                                      color: ColorManager.defaultTextColor,
                                    ),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Price'.tr(),
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3!
                                    .copyWith(
                                      fontSize: ResponsiveSize.w14,
                                      color: ColorManager.defaultTextColor,
                                    ),
                              ),
                            ),
                          ],
                          rows: [
                            DataRow(
                              cells: [
                                DataCell(
                                  Text(
                                    'Barcode',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: ColorManager.defaultTextColor,
                                        ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Item Code',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: ColorManager.defaultTextColor,
                                        ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Art. No',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: ColorManager.defaultTextColor,
                                        ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Item Description',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: ColorManager.defaultTextColor,
                                        ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Price',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: ColorManager.defaultTextColor,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: [
                                DataCell(
                                  Text(
                                    'Barcode',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: ColorManager.defaultTextColor,
                                        ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Item Code',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: ColorManager.defaultTextColor,
                                        ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Art. No',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: ColorManager.defaultTextColor,
                                        ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Item Description',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: ColorManager.defaultTextColor,
                                        ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Price',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: ColorManager.defaultTextColor,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: [
                                DataCell(
                                  Text(
                                    'Barcode',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: ColorManager.defaultTextColor,
                                        ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Item Code',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: ColorManager.defaultTextColor,
                                        ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Art. No',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: ColorManager.defaultTextColor,
                                        ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Item Description',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: ColorManager.defaultTextColor,
                                        ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Price',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: ColorManager.defaultTextColor,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: [
                                DataCell(
                                  Text(
                                    'Barcode',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: ColorManager.defaultTextColor,
                                        ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Item Code',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: ColorManager.defaultTextColor,
                                        ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Art. No',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: ColorManager.defaultTextColor,
                                        ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Item Description',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: ColorManager.defaultTextColor,
                                        ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Price',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: ColorManager.defaultTextColor,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: [
                                DataCell(
                                  Text(
                                    'Barcode',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: ColorManager.defaultTextColor,
                                        ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Item Code',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: ColorManager.defaultTextColor,
                                        ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Art. No',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: ColorManager.defaultTextColor,
                                        ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Item Description',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: ColorManager.defaultTextColor,
                                        ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Price',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: ColorManager.defaultTextColor,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: [
                                DataCell(
                                  Text(
                                    'Barcode',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: ColorManager.defaultTextColor,
                                        ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Item Code',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: ColorManager.defaultTextColor,
                                        ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Art. No',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: ColorManager.defaultTextColor,
                                        ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Item Description',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: ColorManager.defaultTextColor,
                                        ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Price',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: ColorManager.defaultTextColor,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
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
