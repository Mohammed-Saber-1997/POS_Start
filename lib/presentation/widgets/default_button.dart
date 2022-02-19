import 'package:flutter/material.dart';
import 'package:pos_start/presentation/src/src.dart';

class myItem extends StatelessWidget {
  //const DefaultButton({ Key? key }) : super(key: key);

  final dynamic function;
  final String? name;
  final IconData? icon;
  final double? height;
  final double? width;
  final bool? isRectangle;
  final bool? isSearchBox;
  final Color? iconColor;
  final Color? borderColor;
  final Color? backgroundColor;
  final Color? fontColor;

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
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function ?? () => print(name),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: height ?? 80,
          width: width ?? 80,
          decoration: BoxDecoration(
            color: borderColor ?? const Color(0xFF9ea2a7),
            borderRadius: BorderRadius.circular((10)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(0.5),
            child: Container(
              decoration: BoxDecoration(
                color: backgroundColor ?? const Color(0xFFfafafa),
                borderRadius: BorderRadius.circular((10)),
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
                              ? Text(name!,
                                  style: getBoldStyle(
                                    color: fontColor ?? Colors.black,
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
                              ? Text(name!,
                                  style: getBoldStyle(
                                    color: fontColor ?? Colors.black,
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
  }
}
