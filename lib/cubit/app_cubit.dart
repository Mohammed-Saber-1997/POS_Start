import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_start/cache_helper.dart';
import 'package:pos_start/cubit/app_states.dart';
import 'package:pos_start/presentation/src/color_manager.dart';
import 'package:pos_start/presentation/src/src.dart';
import 'package:pos_start/presentation/widgets/default_button.dart';
import 'package:pos_start/presentation/widgets/shared_widgets.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  bool isDark = true;

  void changeAppThemeMode({bool? fromShared}) {
    if (fromShared != null) {
      isDark = fromShared;
      emit(AppChangeThemeModeState());
    } else {
      isDark = !isDark;
      CacheHelper.saveData(key: 'isDark', value: isDark).then(
        (value) {
          emit(AppChangeThemeModeState());
        },
      );
    }
  }

  void showCustomDialog(
    BuildContext context, {
    required String title,
    required String body,
  }) {
    Color defaultTextColor = isDark ? ColorManager.white : ColorManager.black;
    Color defaultBackgroundColor =
        isDark ? ColorManager.black : ColorManager.white;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: 300,
          width: 500,
          child: Column(
            children: [
              Container(
                height: 50,
                color: ColorManager.darkBackground,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          title,
                          style: getBoldStyle(
                            color: ColorManager.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      icon: Icon(
                        CupertinoIcons.clear_thick,
                        color: ColorManager.red,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: defaultBackgroundColor,
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.info_circle,
                            size: 45,
                            color: ColorManager.orange,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  title,
                                  style: getBoldStyle(
                                    color: defaultTextColor,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  body,
                                  maxLines: 4,
                                  style: getRegularStyle(
                                    color: defaultTextColor,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MaterialButton(
                            minWidth: 110,
                            child: Text(
                              'Cancel',
                              style: getSemiBoldStyle(
                                color: defaultTextColor,
                                fontSize: 14,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          MaterialButton(
                            minWidth: 110,
                            color: ColorManager.purple,
                            child: Text(
                              'OK',
                              style: getBoldStyle(
                                color: ColorManager.white,
                                fontSize: 14,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      )
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

  void showSettingsDialog(
    BuildContext context, {
    required String title,
    required String body,
  }) {
    Color defaultTextColor = isDark ? ColorManager.white : ColorManager.black;
    Color reversedTextColor = isDark ? ColorManager.black : ColorManager.white;
    Color defaultBackgroundColor =
        isDark ? ColorManager.darkBackground2 : ColorManager.lightBackground;
    Color reversedBackgroundColor =
        isDark ? ColorManager.lightBackground : ColorManager.darkBackground2;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: 400,
          width: 500,
          child: Column(
            children: [
              Container(
                height: 50,
                color: ColorManager.darkBackground,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          title,
                          style: getBoldStyle(
                            color: ColorManager.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      icon: Icon(
                        CupertinoIcons.clear_thick,
                        color: ColorManager.red,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: defaultBackgroundColor,
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.settings,
                            size: 45,
                            color: ColorManager.orange,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  title,
                                  style: getBoldStyle(
                                    color: defaultTextColor,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  body,
                                  maxLines: 4,
                                  style: getRegularStyle(
                                    color: defaultTextColor,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MaterialButton(
                                minWidth: 140,
                                color: reversedBackgroundColor,
                                child: Text(
                                  'Z - Read',
                                  style: getBoldStyle(
                                    color: reversedTextColor,
                                    fontSize: 14,
                                  ),
                                ),
                                onPressed: () {},
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              MaterialButton(
                                minWidth: 140,
                                color: reversedBackgroundColor,
                                child: Text(
                                  '# Print Invoice',
                                  style: getBoldStyle(
                                    color: reversedTextColor,
                                    fontSize: 14,
                                  ),
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MaterialButton(
                                minWidth: 140,
                                color: reversedBackgroundColor,
                                child: Text(
                                  'X - Read',
                                  style: getBoldStyle(
                                    color: reversedTextColor,
                                    fontSize: 14,
                                  ),
                                ),
                                onPressed: () {},
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              MaterialButton(
                                minWidth: 140,
                                color: reversedBackgroundColor,
                                child: Text(
                                  '# Print Z - Readin',
                                  style: getBoldStyle(
                                    color: reversedTextColor,
                                    fontSize: 14,
                                  ),
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          MaterialButton(
                            minWidth: 140,
                            color: reversedBackgroundColor,
                            child: Text(
                              '# Print Refund',
                              style: getBoldStyle(
                                color: reversedTextColor,
                                fontSize: 14,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ],
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

  void showSearchDialog(
    BuildContext context, {
    required String title,
    required String body,
  }) {
    Color defaultTextColor = isDark ? ColorManager.white : ColorManager.black;
    Color defaultBackgroundColor =
        isDark ? ColorManager.darkBackground2 : ColorManager.lightBackground;

    int searchDialogSelectedValue = 0;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: 600,
          width: 800,
          color: defaultBackgroundColor,
          child: Column(
            children: [
              Container(
                height: 50,
                color: ColorManager.darkBackground,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          title,
                          style: getBoldStyle(
                            color: ColorManager.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      icon: Icon(
                        CupertinoIcons.clear_thick,
                        color: ColorManager.red,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            myItem(
                              backgroundColor: isDark
                                  ? ColorManager.grey
                                  : ColorManager.greyWithOpacity,
                              isRectangle: true,
                              isSearchBox: true,
                              borderColor: ColorManager.white,
                              fontColor: defaultTextColor,
                              name: 'Search...'.tr(),
                              icon: CupertinoIcons.search,
                              iconColor: defaultTextColor,
                              height: 50,
                              width: 400,
                            ),
                            SizedBox(
                              width: 80,
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
                                        emit(SearchDialogChangeSelectedValue());
                                      },
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Desc',
                                      style: getBoldStyle(
                                        color: ColorManager.grey,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      activeColor: defaultTextColor,
                                      value: 2,
                                      groupValue: searchDialogSelectedValue,
                                      onChanged: (int? value) {
                                        searchDialogSelectedValue = value!;
                                        emit(SearchDialogChangeSelectedValue());
                                      },
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Art.No',
                                      style: getBoldStyle(
                                        color: ColorManager.grey,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        myHorizontalDivider(),
                        DataTable(
                          columns: [
                            DataColumn(
                              label: Text(
                                'Barcode'.tr(),
                                style: getBoldStyle(
                                    fontSize: 15, color: defaultTextColor),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Item Code'.tr(),
                                style: getBoldStyle(
                                    fontSize: 15, color: defaultTextColor),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Art. No'.tr(),
                                style: getBoldStyle(
                                    fontSize: 15, color: defaultTextColor),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Item Description'.tr(),
                                style: getBoldStyle(
                                    fontSize: 15, color: defaultTextColor),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Price'.tr(),
                                style: getBoldStyle(
                                    fontSize: 15, color: defaultTextColor),
                              ),
                            ),
                          ],
                          rows: [
                            DataRow(
                              cells: [
                                DataCell(
                                  Text(
                                    'Barcode',
                                    style:
                                        getMediumStyle(color: defaultTextColor),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Item Code',
                                    style:
                                        getMediumStyle(color: defaultTextColor),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Art. No',
                                    style:
                                        getMediumStyle(color: defaultTextColor),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Item Description',
                                    style:
                                        getMediumStyle(color: defaultTextColor),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Price',
                                    style:
                                        getMediumStyle(color: defaultTextColor),
                                  ),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: [
                                DataCell(
                                  Text(
                                    'Barcode',
                                    style:
                                        getMediumStyle(color: defaultTextColor),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Item Code',
                                    style:
                                        getMediumStyle(color: defaultTextColor),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Art. No',
                                    style:
                                        getMediumStyle(color: defaultTextColor),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Item Description',
                                    style:
                                        getMediumStyle(color: defaultTextColor),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Price',
                                    style:
                                        getMediumStyle(color: defaultTextColor),
                                  ),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: [
                                DataCell(
                                  Text(
                                    'Barcode',
                                    style:
                                        getMediumStyle(color: defaultTextColor),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Item Code',
                                    style:
                                        getMediumStyle(color: defaultTextColor),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Art. No',
                                    style:
                                        getMediumStyle(color: defaultTextColor),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Item Description',
                                    style:
                                        getMediumStyle(color: defaultTextColor),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Price',
                                    style:
                                        getMediumStyle(color: defaultTextColor),
                                  ),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: [
                                DataCell(
                                  Text(
                                    'Barcode',
                                    style:
                                        getMediumStyle(color: defaultTextColor),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Item Code',
                                    style:
                                        getMediumStyle(color: defaultTextColor),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Art. No',
                                    style:
                                        getMediumStyle(color: defaultTextColor),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Item Description',
                                    style:
                                        getMediumStyle(color: defaultTextColor),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Price',
                                    style:
                                        getMediumStyle(color: defaultTextColor),
                                  ),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: [
                                DataCell(
                                  Text(
                                    'Barcode',
                                    style:
                                        getMediumStyle(color: defaultTextColor),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Item Code',
                                    style:
                                        getMediumStyle(color: defaultTextColor),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Art. No',
                                    style:
                                        getMediumStyle(color: defaultTextColor),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Item Description',
                                    style:
                                        getMediumStyle(color: defaultTextColor),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Price',
                                    style:
                                        getMediumStyle(color: defaultTextColor),
                                  ),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: [
                                DataCell(
                                  Text(
                                    'Barcode',
                                    style:
                                        getMediumStyle(color: defaultTextColor),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Item Code',
                                    style:
                                        getMediumStyle(color: defaultTextColor),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Art. No',
                                    style:
                                        getMediumStyle(color: defaultTextColor),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Item Description',
                                    style:
                                        getMediumStyle(color: defaultTextColor),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    'Price',
                                    style:
                                        getMediumStyle(color: defaultTextColor),
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

  void showPaymentDialog(
    BuildContext context, {
    required String title,
    required String body,
  }) {
    Color defaultTextColor = isDark ? ColorManager.white : ColorManager.black;
    Color defaultBackgroundColor =
        isDark ? ColorManager.darkBackground2 : ColorManager.lightBackground;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: 500,
          width: 800,
          color: defaultBackgroundColor,
          child: Column(
            children: [
              Container(
                height: 50,
                color: ColorManager.darkBackground,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          title,
                          style: getBoldStyle(
                            color: ColorManager.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      icon: Icon(
                        CupertinoIcons.clear_thick,
                        color: ColorManager.red,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    start: 8.0),
                                child: Text(
                                  'Amount',
                                  style: getRegularStyle(
                                    color: ColorManager.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              myItem(
                                backgroundColor: isDark
                                    ? ColorManager.grey
                                    : ColorManager.greyWithOpacity,
                                height: 30,
                                width: 150,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    start: 8.0),
                                child: Text(
                                  'Paid',
                                  style: getRegularStyle(
                                    color: ColorManager.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              myItem(
                                backgroundColor: isDark
                                    ? ColorManager.grey
                                    : ColorManager.greyWithOpacity,
                                height: 30,
                                width: 150,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    start: 8.0),
                                child: Text(
                                  'Balance',
                                  style: getRegularStyle(
                                    color: ColorManager.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              myItem(
                                backgroundColor: isDark
                                    ? ColorManager.grey
                                    : ColorManager.greyWithOpacity,
                                height: 30,
                                width: 150,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 50,
                              ),
                              Row(
                                children: [
                                  myItem(
                                    name: 'Visa',
                                    backgroundColor: isDark
                                        ? ColorManager.grey
                                        : ColorManager.greyWithOpacity,
                                    fontColor: defaultTextColor,
                                    height: 50,
                                    width: 150,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  myItem(
                                    name: 'Cash',
                                    backgroundColor: isDark
                                        ? ColorManager.grey
                                        : ColorManager.greyWithOpacity,
                                    fontColor: defaultTextColor,
                                    height: 50,
                                    width: 150,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  myItem(
                                    name: 'K - Net',
                                    backgroundColor: isDark
                                        ? ColorManager.grey
                                        : ColorManager.greyWithOpacity,
                                    fontColor: defaultTextColor,
                                    height: 50,
                                    width: 150,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  myItem(
                                    name: 'Master',
                                    backgroundColor: isDark
                                        ? ColorManager.grey
                                        : ColorManager.greyWithOpacity,
                                    fontColor: defaultTextColor,
                                    height: 50,
                                    width: 150,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  myItem(
                                    name: 'Return',
                                    backgroundColor: isDark
                                        ? ColorManager.grey
                                        : ColorManager.greyWithOpacity,
                                    fontColor: defaultTextColor,
                                    height: 50,
                                    width: 150,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  myItem(
                                    name: 'Coupon',
                                    backgroundColor: isDark
                                        ? ColorManager.grey
                                        : ColorManager.greyWithOpacity,
                                    fontColor: defaultTextColor,
                                    height: 50,
                                    width: 150,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  myItem(
                                    name: 'Delivery',
                                    backgroundColor: isDark
                                        ? ColorManager.grey
                                        : ColorManager.greyWithOpacity,
                                    fontColor: defaultTextColor,
                                    height: 50,
                                    width: 150,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  myItem(
                                    name: 'Marketing',
                                    backgroundColor: isDark
                                        ? ColorManager.grey
                                        : ColorManager.greyWithOpacity,
                                    fontColor: defaultTextColor,
                                    height: 50,
                                    width: 150,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 15),
                                child: Container(
                                  height: 50,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    color: ColorManager.grey,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.5),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: AppCubit.get(context).isDark
                                            ? ColorManager.darkBackground2
                                            : ColorManager.lightBackground,
                                      ),
                                      alignment: AlignmentDirectional.center,
                                      child: Text(
                                        '123.000',
                                        style: TextStyle(
                                          color: defaultTextColor,
                                          fontSize: 30,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              DataTable(
                                columns: [
                                  DataColumn(
                                    label: Text(
                                      'Ser'.tr(),
                                      style: getRegularStyle(
                                          fontSize: 12,
                                          color: defaultTextColor),
                                    ),
                                  ),
                                  DataColumn(
                                    label: Text(
                                      'Amount'.tr(),
                                      style: getRegularStyle(
                                          fontSize: 12,
                                          color: defaultTextColor),
                                    ),
                                  ),
                                  DataColumn(
                                    label: Text(
                                      'Name'.tr(),
                                      style: getRegularStyle(
                                          fontSize: 12,
                                          color: defaultTextColor),
                                    ),
                                  ),
                                ],
                                rows: [
                                  DataRow(
                                    cells: [
                                      DataCell(
                                        Text(
                                          '',
                                          style: getMediumStyle(
                                              color: defaultTextColor),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          '',
                                          style: getMediumStyle(
                                              color: defaultTextColor),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          '',
                                          style: getMediumStyle(
                                              color: defaultTextColor),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
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

  void showPrintDialog(
    BuildContext context, {
    required String title,
    required String body,
  }) {
    Color defaultTextColor = isDark ? ColorManager.white : ColorManager.black;
    Color defaultBackgroundColor =
        isDark ? ColorManager.darkBackground2 : ColorManager.lightBackground;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: 300,
          width: 750,
          color: defaultBackgroundColor,
          child: Column(
            children: [
              Container(
                height: 50,
                color: ColorManager.darkBackground,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          title,
                          style: getBoldStyle(
                            color: ColorManager.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      icon: Icon(
                        CupertinoIcons.clear_thick,
                        color: ColorManager.red,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    start: 8.0),
                                child: Text(
                                  'Amount',
                                  style: getRegularStyle(
                                    color: ColorManager.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              myItem(
                                name: '12.000',
                                fontColor: ColorManager.white,
                                backgroundColor: isDark
                                    ? ColorManager.grey
                                    : ColorManager.greyWithOpacity,
                                height: 40,
                                width: 120,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    start: 8.0),
                                child: Text(
                                  'Discount',
                                  style: getRegularStyle(
                                    color: ColorManager.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              myItem(
                                name: '12.000',
                                fontColor: ColorManager.white,
                                backgroundColor: ColorManager.dark_red,
                                borderColor: ColorManager.dark_red,
                                height: 40,
                                width: 120,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    start: 8.0),
                                child: Text(
                                  'Net',
                                  style: getRegularStyle(
                                    color: ColorManager.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              myItem(
                                name: '12.000',
                                fontColor: ColorManager.white,
                                backgroundColor: isDark
                                    ? ColorManager.grey
                                    : ColorManager.greyWithOpacity,
                                height: 40,
                                width: 120,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    start: 8.0),
                                child: Text(
                                  'Paid',
                                  style: getRegularStyle(
                                    color: ColorManager.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              myItem(
                                name: '12.000',
                                fontColor: ColorManager.white,
                                backgroundColor: isDark
                                    ? ColorManager.grey
                                    : ColorManager.greyWithOpacity,
                                height: 40,
                                width: 120,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    start: 8.0),
                                child: Text(
                                  'Change',
                                  style: getRegularStyle(
                                    color: ColorManager.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              myItem(
                                name: '12.000',
                                fontColor: ColorManager.white,
                                backgroundColor: ColorManager.green,
                                borderColor: ColorManager.green,
                                height: 40,
                                width: 120,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: myHorizontalDivider(),
                      ),
                      Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          color: ColorManager.grey,
                          borderRadius: BorderRadius.circular((10)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(0.5),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppCubit.get(context).isDark
                                  ? ColorManager.darkBackground2
                                  : ColorManager.lightBackground,
                              borderRadius: BorderRadius.circular((10)),
                            ),
                            alignment: AlignmentDirectional.center,
                            child: Text(
                              'Print',
                              style: TextStyle(
                                color: defaultTextColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
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
