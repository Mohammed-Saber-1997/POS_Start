import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pos_start/cubit/app_cubit.dart';
import 'package:pos_start/presentation/src/src.dart';

class ShowCustomDialogg extends StatelessWidget {
  final BuildContext context;
  final String title;
  final String body;

  ShowCustomDialogg({
    required this.context,
    required this.title,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    Color defaultTextColor =
        AppCubit.get(context).isDark ? ColorManager.white : ColorManager.black;
    Color defaultBackgroundColor =
        AppCubit.get(context).isDark ? ColorManager.black : ColorManager.white;

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 300,
        width: 500,
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
    );
  }
}

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:pos_start/cubit/app_cubit.dart';
// import 'package:pos_start/presentation/src/src.dart';
//
// class ShowCustomDialog extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       onPressed: () => showCustomDialog(
//         context,
//         title: 'Delete Item',
//         body:
//             'are you Sure you want to Delete this item from currant invoice ?',
//       ),
//       child: Text(
//         'Custom Dialog',
//       ),
//     );
//   }
//
//   void showCustomDialog(
//     BuildContext context, {
//     required String title,
//     required String body,
//   }) {
//     Color defaultTextColor =
//         AppCubit.get(context).isDark ? ColorManager.white : ColorManager.black;
//     Color defaultBackgroundColor =
//         AppCubit.get(context).isDark ? ColorManager.black : ColorManager.white;
//
//     showDialog(
//       context: context,
//       barrierDismissible: false,
//       builder: (BuildContext context) => Dialog(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//         clipBehavior: Clip.antiAlias,
//         child: Container(
//           height: 300,
//           width: 500,
//           color: defaultBackgroundColor,
//           child: Column(
//             children: [
//               Container(
//                 height: 50,
//                 color: ColorManager.darkBackground,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Expanded(
//                       child: Center(
//                         child: Text(
//                           title,
//                           style: getBoldStyle(
//                             color: ColorManager.white,
//                             fontSize: 18,
//                           ),
//                         ),
//                       ),
//                     ),
//                     IconButton(
//                       onPressed: () {
//                         Navigator.of(context).pop();
//                       },
//                       padding: EdgeInsets.symmetric(horizontal: 15),
//                       icon: Icon(
//                         CupertinoIcons.clear_thick,
//                         color: ColorManager.red,
//                         size: 20,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.all(25.0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         children: [
//                           Icon(
//                             CupertinoIcons.info_circle,
//                             size: 45,
//                             color: ColorManager.orange,
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Expanded(
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   title,
//                                   style: getBoldStyle(
//                                     color: defaultTextColor,
//                                     fontSize: 18,
//                                   ),
//                                 ),
//                                 Text(
//                                   body,
//                                   maxLines: 4,
//                                   style: getRegularStyle(
//                                     color: defaultTextColor,
//                                     fontSize: 14,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           MaterialButton(
//                             minWidth: 110,
//                             child: Text(
//                               'Cancel',
//                               style: getSemiBoldStyle(
//                                 color: defaultTextColor,
//                                 fontSize: 14,
//                               ),
//                             ),
//                             onPressed: () {
//                               Navigator.of(context).pop();
//                             },
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           MaterialButton(
//                             minWidth: 110,
//                             color: ColorManager.purple,
//                             child: Text(
//                               'OK',
//                               style: getBoldStyle(
//                                 color: ColorManager.white,
//                                 fontSize: 14,
//                               ),
//                             ),
//                             onPressed: () {},
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
