import 'package:flutter/material.dart';
import 'package:pos_start/cubit/app_cubit.dart';
import 'package:pos_start/presentation/src/src.dart';

Widget myHorizontalDevider() => Container(
      width: double.infinity,
      height: 0.5,
      color: Colors.grey,
    );

Widget myVerticalDevider() => Container(
      width: 0.5,
      height: double.infinity,
      color: Colors.grey,
    );

Widget myItem({
  Function? function,
  String? name,
  IconData? icon,
  double height = 80,
  double width = 95,
  bool isRectangle = false,
  bool isSearchBox = false,
  Color? iconColor,
  Color borderColor = const Color(0xFF9ea2a7),
  Color backgroundColor = const Color(0xFFfafafa),
  Color fontColor = Colors.black,
}) =>
    InkWell(
      onTap: () {
        print('$name');
        function;
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: borderColor,
            borderRadius: BorderRadius.circular((10)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(0.5),
            child: Container(
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular((10)),
              ),
              alignment: AlignmentDirectional.center,
              child: isRectangle
                  ? Row(
                      mainAxisAlignment: isSearchBox
                          ? MainAxisAlignment.start
                          : MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: isSearchBox
                              ? const EdgeInsets.symmetric(horizontal: 15.0)
                              : null,
                          child: icon != null
                              ? Icon(
                                  icon,
                                  size: 28,
                                  color: iconColor,
                                )
                              : null,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          child: name != null
                              ? Text(name,
                                  style: getBoldStyle(
                                    color: fontColor,
                                    fontSize: 12,
                                  ))
                              : null,
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: icon != null
                              ? Icon(
                                  icon,
                                  size: 28,
                                  color: iconColor,
                                )
                              : null,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: name != null
                              ? Text(name,
                                  style: getBoldStyle(
                                    color: fontColor,
                                    fontSize: 12,
                                  ))
                              : null,
                        ),
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
