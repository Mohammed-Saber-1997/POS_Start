import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pos_start/cour/extensions.dart';
import 'package:pos_start/presentation/src/src.dart';

class NumericKeyboard extends StatelessWidget {
  final Color buttonColor;
  final Color iconColor;
  final TextEditingController controller;
  final Function onDelete;
  final Function onSubmit;

  const NumericKeyboard({
    Key? key,
    this.buttonColor = Colors.black,
    this.iconColor = Colors.black,
    required this.onDelete,
    required this.onSubmit,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ResponsiveSize.w214,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NumberButton(
                number: 1,
                controller: controller,
              ),
              NumberButton(
                number: 2,
                controller: controller,
              ),
              NumberButton(
                number: 3,
                controller: controller,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NumberButton(
                number: 4,
                controller: controller,
              ),
              NumberButton(
                number: 5,
                controller: controller,
              ),
              NumberButton(
                number: 6,
                controller: controller,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NumberButton(
                number: 7,
                controller: controller,
              ),
              NumberButton(
                number: 8,
                controller: controller,
              ),
              NumberButton(
                number: 9,
                controller: controller,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // this button is used to delete the last number
              IconButton(
                onPressed: () => onDelete(),
                iconSize: ResponsiveSize.w52,
                icon: Icon(
                  Icons.backspace,
                  color: iconColor,
                ),
              ),
              NumberButton(
                number: 0,
                controller: controller,
              ),
              // this button is used to submit the entered value
              NumberButton(
                onClick: onSubmit,
                withIcon: true,
                contentColor: ColorManager.white,
                iconBackGroundColor: ColorManager.orange,
                withoutBorder: true,
              ),
              // IconButton(
              //   onPressed: () => onSubmit(),
              //   iconSize: size - 4,
              //   icon: Icon(
              //     Icons.done_rounded,
              //     color: iconColor,
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}

double size = ResponsiveSize.w60;

class NumberButton extends StatelessWidget {
  final int? number;
  final bool withIcon;
  final TextEditingController? controller;

  final Color iconBackGroundColor;
  final Color contentColor;
  final Function? onClick;

  final bool? withoutBorder;

  NumberButton({
    Key? key,
    this.number,
    this.controller,
    this.withIcon = false,
    this.iconBackGroundColor = Colors.transparent,
    this.contentColor = Colors.black54,
    this.onClick,
    this.withoutBorder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(ResponsiveSize.w5),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: iconBackGroundColor,
          border: withoutBorder ?? false
              ? null
              : Border.all(
                  color: ColorManager.loginNumbersColor, width: AppSize.s1_5),
          borderRadius: BorderRadius.circular(size / 2),
        ),
        child: Center(
          child: !withIcon
              ? Text(
                  number.toString(),
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        fontSize: ResponsiveSize.w30,
                        color: ColorManager.loginNumbersColor,
                      ),
                )
              : SvgPicture.asset(
                  'assets/images/sign-in-alt-solid.svg',
                  color: contentColor,
                  height: ResponsiveSize.w20,
                  width: ResponsiveSize.w20,
                ),
          // : Icon(
          //     CupertinoIcons.arrowShape_turn_up_right_fill,
          //     color: contentColor,
          //     size: size / 2,
          //   ),
        ).onTap(() {
          if (withIcon && onClick.isNotNullObject) {
            onClick!();
            return;
          }
          controller!.text += number.toString();
        }, borderRadius: BorderRadius.circular(size / 2)),
      ),
    );
    // return SizedBox(
    //   width: size,
    //   height: size,
    //   child: ElevatedButton(
    //     style: ElevatedButton.styleFrom(
    //       primary: color,
    //       shape: RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(size / 2),
    //       ),
    //     ),
    //     onPressed: () {
    //       controller.text += number.toString();
    //     },
    //     child: Center(
    //       child: Text(
    //         number.toString(),
    //         style: const TextStyle(fontWeight: FontWeightManager.bold, color: Colors.white, fontSize: ResponsiveSize.w30),
    //       ),
    //     ),
    //   ),
    // );
  }
}
