import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pos_start/cubit/app_cubit.dart';
import 'package:pos_start/cubit/app_states.dart';
import 'package:pos_start/presentation/src/src.dart';
import 'package:pos_start/presentation/widgets/shared_widgets.dart';

class LeftPart extends StatelessWidget {
  const LeftPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Expanded(
          flex: 1,
          // if !landscape => flex: 2:5
          child: Container(
            // color: di.instance<AppPreferences>().getData(key: 'isDark')
            //     ? ColorManager.darkBackground
            //     : ColorManager.lightBackground,
            color: ColorManager.defaultSidePartsColor,
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: ResponsiveSize.w25,
                          vertical: ResponsiveSize.w18,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppCubit.get(context).changeTime(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(
                                    fontSize: ResponsiveSize.w40,
                                    color: ColorManager.defaultTextColor,
                                    height: ResponsiveSize.w2,
                                  ),
                            ),
                            Text(
                              '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3!
                                  .copyWith(
                                    fontSize: ResponsiveSize.w18,
                                    color: ColorManager.grey,
                                    height: ResponsiveSize.w1,
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: ResponsiveSize.w10,
                                  bottom: ResponsiveSize.w10,
                                  end: ResponsiveSize.w30),
                              child: myHorizontalDivider(),
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/images/Mask Group 6.svg',
                                  color: ColorManager.grey,
                                  height: ResponsiveSize.w15,
                                  width: ResponsiveSize.w15,
                                ),
                                SizedBox(
                                  width: ResponsiveSize.w10,
                                ),
                                Text(
                                  'Administrator'.tr(),
                                  style: getLightStyle(
                                    fontSize: ResponsiveSize.w12,
                                    color: ColorManager.defaultTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: ResponsiveSize.w45,
                        width: double.infinity,
                        alignment: AlignmentDirectional.centerStart,
                        padding: EdgeInsetsDirectional.only(
                            start: ResponsiveSize.w25),
                        decoration: BoxDecoration(
                          color: ColorManager.defaultBackgroundColor,
                          border: Border.all(
                            color: ColorManager.grey,
                            width: AppSize.s0_5,
                          ),
                        ),
                        child: Text(
                          'contributor'.tr(),
                          style:
                              Theme.of(context).textTheme.headline2!.copyWith(
                                    fontSize: ResponsiveSize.w14,
                                    color: ColorManager.defaultTextColor,
                                  ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: ResponsiveSize.w45,
                        alignment: AlignmentDirectional.centerStart,
                        padding: EdgeInsetsDirectional.only(
                            start: ResponsiveSize.w25),
                        color: ColorManager.defaultBackgroundColor,
                        child: Text(
                          'Total Invoice'.tr(),
                          style:
                              Theme.of(context).textTheme.headline2!.copyWith(
                                    fontSize: ResponsiveSize.w14,
                                    color: ColorManager.defaultTextColor,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: ResponsiveSize.w25,
                            vertical: ResponsiveSize.w12),
                        child: Container(
                          height: ResponsiveSize.w55,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: ColorManager.defaultBackgroundColor,
                            borderRadius: BorderRadius.circular((AppSize.s10)),
                            border: Border.all(
                              color: ColorManager.grey,
                              width: AppSize.s0_5,
                            ),
                          ),
                          alignment: AlignmentDirectional.center,
                          child: Text(
                            '100.212',
                            style:
                                Theme.of(context).textTheme.headline3!.copyWith(
                                      fontSize: ResponsiveSize.w30,
                                      color: ColorManager.defaultTextColor,
                                    ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                myHorizontalDivider(),
                Container(
                  height: ResponsiveSize.w165,
                  child: Column(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: ResponsiveSize.w8,
                              horizontal: ResponsiveSize.w25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Total'.tr() + ' :',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .copyWith(
                                          fontSize: ResponsiveSize.w12,
                                          color: ColorManager.grey,
                                        ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '120.000',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline3!
                                        .copyWith(
                                          fontSize: ResponsiveSize.w24,
                                          color: ColorManager.defaultTextColor,
                                          height: ResponsiveSize.w2,
                                        ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Discount'.tr() + ' :',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .copyWith(
                                          fontSize: ResponsiveSize.w12,
                                          color: ColorManager.orange,
                                        ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '10%',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          fontSize: ResponsiveSize.w20,
                                          color: ColorManager.orange,
                                          height: ResponsiveSize.w1_5,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: ResponsiveSize.w65,
                        padding: EdgeInsets.symmetric(
                            horizontal: ResponsiveSize.w25),
                        color: ColorManager.cyan,
                        child: Row(
                          children: [
                            Text(
                              'Total'.tr(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(
                                    fontSize: ResponsiveSize.w20,
                                    color: ColorManager.white,
                                  ),
                            ),
                            const Spacer(),
                            Text(
                              '10.000',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(
                                    fontSize: ResponsiveSize.w20,
                                    color: ColorManager.white,
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
      },
    );
  }
}
