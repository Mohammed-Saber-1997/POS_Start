import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pos_start/cubit/app_cubit.dart';
import 'package:pos_start/presentation/src/src.dart';
import 'package:pos_start/presentation/widgets/shared_widgets.dart';

class leftPart extends StatelessWidget {
  const leftPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color defaultTextColor =
        AppCubit.get(context).isDark ? ColorManager.white : ColorManager.black;

    return Expanded(
      flex: 1,
      // if !landscape => flex: 2:5
      child: Container(
        color: AppCubit.get(context).isDark
            ? ColorManager.darkBackground
            : ColorManager.lightBackground,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '02:30',
                        style: getRegularStyle(
                          fontSize: 40,
                          color: defaultTextColor,
                        ),
                      ),
                      Text(
                        'PM',
                        style: getBoldStyle(
                            fontSize: 16, color: ColorManager.grey),
                      ),
                    ],
                  ),
                  Text(
                    '25/01/2022',
                    style: getBoldStyle(fontSize: 18, color: ColorManager.grey),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                        top: 10, bottom: 10, end: 30),
                    child: myHorizontalDivider(),
                  ),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.person,
                        size: 16,
                        color: ColorManager.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Administrator'.tr(),
                        style: getLightStyle(
                          fontSize: 12,
                          color: defaultTextColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: ColorManager.grey,
              height: 45,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(0.5),
                child: Container(
                  alignment: AlignmentDirectional.centerStart,
                  padding: EdgeInsetsDirectional.only(start: 25),
                  color: AppCubit.get(context).isDark
                      ? ColorManager.darkBackground2
                      : ColorManager.lightBackground,
                  child: Text(
                    'contributor'.tr(),
                    style: TextStyle(
                      color: defaultTextColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            Container(
              height: 45,
              alignment: AlignmentDirectional.centerStart,
              padding: EdgeInsetsDirectional.only(start: 25),
              color: AppCubit.get(context).isDark
                  ? ColorManager.darkBackground2
                  : ColorManager.lightBackground,
              child: Text(
                'Total Invoice'.tr(),
                style: TextStyle(
                  color: defaultTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Container(
                height: 60,
                width: double.infinity,
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
                      '100.212',
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
            myHorizontalDivider(),
            Container(
              height: 165,
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 23, horizontal: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Total'.tr() + ' :',
                                style: TextStyle(
                                  color: ColorManager.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Spacer(),
                              Text(
                                '120.000',
                                style: TextStyle(
                                  color: defaultTextColor,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Discount'.tr() + ' :',
                                style: TextStyle(
                                  color: ColorManager.orange,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Spacer(),
                              Text(
                                '10%',
                                style: TextStyle(
                                  color: ColorManager.orange,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 65,
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    color: ColorManager.cyan,
                    child: Row(
                      children: [
                        Text(
                          'Total'.tr(),
                          style: TextStyle(
                            color: ColorManager.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '10.000',
                          style: TextStyle(
                            color: ColorManager.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
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
    );
  }
}
