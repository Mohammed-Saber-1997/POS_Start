import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pos_start/presentation/src/src.dart';

class myItem extends StatelessWidget {
  //const DefaultButton({ Key? key }) : super(key: key);

  final dynamic function;
  final String? name;
  final SvgPicture? icon;
  final double? height;
  final double? width;
  final bool? isRectangle;
  final bool? isSearchBox;
  final Color? iconColor;
  final Color? borderColor;
  final Color? backgroundColor;
  final Color? fontColor;
  final double? fontSize;

  myItem({
    this.function,
    this.name,
    this.icon,
    this.height,
    this.width,
    this.isRectangle,
    this.isSearchBox,
    this.iconColor,
    this.borderColor,
    this.backgroundColor,
    this.fontColor,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function ?? () => print(name),
      child: Padding(
        padding: EdgeInsets.all(ResponsiveSize.w5),
        child: Container(
          height: isRectangle ?? false
              ? height ?? ResponsiveSize.w55
              : height ?? ResponsiveSize.w80,
          width: width ?? ResponsiveSize.w80,
          decoration: BoxDecoration(
            color: backgroundColor ?? ColorManager.defaultBackgroundColor,
            borderRadius: BorderRadius.circular((AppSize.s10)),
            border: Border.all(
              color: borderColor ?? const Color(0xFF9ea2a7),
              width: AppSize.s0_5,
            ),
          ),
          alignment: AlignmentDirectional.center,
          child: isRectangle ?? false
              ? Row(
                  mainAxisAlignment: isSearchBox ?? false
                      ? MainAxisAlignment.start
                      : MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: isSearchBox ?? false
                          ? EdgeInsets.symmetric(horizontal: ResponsiveSize.w15)
                          : null,
                      child: icon,
                    ),
                    SizedBox(
                      width: ResponsiveSize.w10,
                    ),
                    Container(
                      child: name != null
                          ? Text(
                              name!,
                              style: getBoldStyle(
                                color:
                                    fontColor ?? ColorManager.defaultTextColor,
                                fontSize: fontSize ?? ResponsiveSize.w12,
                              ),
                            )
                          : null,
                    ),
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: icon,
                    ),
                    SizedBox(
                      height: ResponsiveSize.w5,
                    ),
                    Container(
                      child: name != null
                          ? Text(
                              name!,
                              style: getBoldStyle(
                                color:
                                    fontColor ?? ColorManager.defaultTextColor,
                                fontSize: fontSize ?? ResponsiveSize.w12,
                              ),
                            )
                          : null,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
