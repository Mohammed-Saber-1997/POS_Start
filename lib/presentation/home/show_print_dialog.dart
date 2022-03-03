import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pos_start/cubit/app_cubit.dart';
import 'package:pos_start/presentation/src/src.dart';
import 'package:pos_start/presentation/widgets/default_button.dart';
import 'package:pos_start/presentation/widgets/shared_widgets.dart';

class ShowPrintDialog {
  void showPrintDialog(
    BuildContext context, {
    required String title,
    required String body,
  }) {
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
          height: ResponsiveSize.w300,
          width: ResponsiveSize.w750,
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
                                name: '12.000',
                                fontColor: ColorManager.white,
                                backgroundColor: ColorManager.greyWithOpacity,
                                borderColor: Colors.transparent,
                                fontSize: ResponsiveSize.w22,
                                height: ResponsiveSize.w50,
                                width: ResponsiveSize.w120,
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
                                  'Discount',
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
                                name: '12.000',
                                fontColor: ColorManager.white,
                                backgroundColor: ColorManager.darkRed,
                                borderColor: ColorManager.darkRed,
                                fontSize: ResponsiveSize.w22,
                                height: ResponsiveSize.w50,
                                width: ResponsiveSize.w120,
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
                                  'Net',
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
                                name: '12.000',
                                fontColor: ColorManager.white,
                                backgroundColor: ColorManager.greyWithOpacity,
                                borderColor: Colors.transparent,
                                fontSize: ResponsiveSize.w22,
                                height: ResponsiveSize.w50,
                                width: ResponsiveSize.w120,
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
                                name: '12.000',
                                fontColor: ColorManager.white,
                                backgroundColor: ColorManager.greyWithOpacity,
                                borderColor: Colors.transparent,
                                fontSize: ResponsiveSize.w22,
                                height: ResponsiveSize.w50,
                                width: ResponsiveSize.w120,
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
                                  'Change',
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
                                name: '12.000',
                                fontColor: ColorManager.white,
                                backgroundColor: ColorManager.green,
                                borderColor: ColorManager.green,
                                fontSize: ResponsiveSize.w22,
                                height: ResponsiveSize.w50,
                                width: ResponsiveSize.w120,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: ResponsiveSize.w23),
                        child: myHorizontalDivider(),
                      ),
                      Container(
                        height: ResponsiveSize.w60,
                        width: ResponsiveSize.w200,
                        decoration: BoxDecoration(
                          color: AppCubit.get(context).isDark
                              ? ColorManager.darkBackground2
                              : ColorManager.lightBackground,
                          borderRadius: BorderRadius.circular(AppSize.s10),
                          border: Border.all(
                            color: ColorManager.grey,
                          ),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/images/Group 2945.svg',
                              color: ColorManager.orange,
                            ),
                            Expanded(
                              child: Center(
                                child: Text(
                                  'Print',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline3!
                                      .copyWith(
                                        fontSize: ResponsiveSize.w22,
                                        color: ColorManager.defaultTextColor,
                                      ),
                                ),
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
