import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pos_start/cour/app_prefs.dart';
import 'package:pos_start/presentation/src/src.dart';

class ShowDeleteDialog {
  void showDeleteDialog(
    BuildContext context, {
    required String title,
    required String body,
  }) {
    Color defaultBackgroundColor =
        isDarkMode ? ColorManager.black : ColorManager.lightBackground;

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
          width: ResponsiveSize.w500,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/images/info_icon.svg',
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MaterialButton(
                            minWidth: ResponsiveSize.w110,
                            child: Text(
                              'Cancel',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(
                                    fontSize: ResponsiveSize.w14,
                                    color: ColorManager.defaultTextColor,
                                  ),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          SizedBox(
                            width: ResponsiveSize.w20,
                          ),
                          MaterialButton(
                            minWidth: ResponsiveSize.w110,
                            color: ColorManager.purple,
                            child: Text(
                              'OK',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3!
                                  .copyWith(
                                    fontSize: ResponsiveSize.w14,
                                    color: ColorManager.white,
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
}
