import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pos_start/cour/app_prefs.dart';
import 'package:pos_start/presentation/src/src.dart';

class ShowSettingsDialog {
  void showSettingsDialog(
    BuildContext context, {
    required String title,
    required String body,
  }) {
    Color defaultBackgroundColor = isDarkMode
        ? ColorManager.darkBackground2
        : ColorManager.lightBackground;
    Color buttonColor =
        isDarkMode ? ColorManager.lightBlue : ColorManager.darkBackground2;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s10),
        ),
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: ResponsiveSize.w400,
          width: ResponsiveSize.w550,
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
                child: Container(
                  color: defaultBackgroundColor,
                  padding: EdgeInsets.all(ResponsiveSize.w25),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/images/Group 2945.svg',
                            color: ColorManager.orange,
                          ),
                          SizedBox(
                            width: ResponsiveSize.w20,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline3!
                                      .copyWith(
                                        fontSize: ResponsiveSize.w18,
                                        color: ColorManager.defaultTextColor,
                                      ),
                                ),
                                Text(
                                  body,
                                  maxLines: 4,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .copyWith(
                                        fontSize: ResponsiveSize.w14,
                                        color: ColorManager.defaultTextColor,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: ResponsiveSize.w30,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MaterialButton(
                                minWidth: ResponsiveSize.w150,
                                color: buttonColor,
                                child: Text(
                                  'Z - Read',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline3!
                                      .copyWith(
                                        fontSize: ResponsiveSize.w14,
                                        color: ColorManager.reversedTextColor,
                                      ),
                                ),
                                onPressed: () {},
                              ),
                              SizedBox(
                                width: ResponsiveSize.w50,
                              ),
                              MaterialButton(
                                minWidth: ResponsiveSize.w150,
                                color: buttonColor,
                                child: Text(
                                  '# Print Invoice',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline3!
                                      .copyWith(
                                        fontSize: ResponsiveSize.w14,
                                        color: ColorManager.reversedTextColor,
                                      ),
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          SizedBox(
                            height: ResponsiveSize.w10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MaterialButton(
                                minWidth: ResponsiveSize.w150,
                                color: buttonColor,
                                child: Text(
                                  'X - Read',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline3!
                                      .copyWith(
                                        fontSize: ResponsiveSize.w14,
                                        color: ColorManager.reversedTextColor,
                                      ),
                                ),
                                onPressed: () {},
                              ),
                              SizedBox(
                                width: ResponsiveSize.w50,
                              ),
                              MaterialButton(
                                minWidth: ResponsiveSize.w150,
                                color: buttonColor,
                                child: Text(
                                  '# Print Z - Readin',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline3!
                                      .copyWith(
                                        fontSize: ResponsiveSize.w14,
                                        color: ColorManager.reversedTextColor,
                                      ),
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          SizedBox(
                            height: ResponsiveSize.w10,
                          ),
                          MaterialButton(
                            minWidth: ResponsiveSize.w140,
                            color: buttonColor,
                            child: Text(
                              '# Print Refund',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3!
                                  .copyWith(
                                    fontSize: ResponsiveSize.w14,
                                    color: ColorManager.reversedTextColor,
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
}
