import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pos_start/cubit/app_cubit.dart';
import 'package:pos_start/presentation/home/custom_dialog_widget.dart';
import 'package:pos_start/presentation/src/src.dart';

class mainPart extends StatelessWidget {
  const mainPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color defaultTextColor =
        AppCubit.get(context).isDark ? ColorManager.white : ColorManager.black;

    return Expanded(
      child: Column(
        children: [
          DataTable(
            columns: [
              DataColumn(
                label: Text(
                  'Ser'.tr(),
                  style: getBoldStyle(fontSize: 15, color: defaultTextColor),
                ),
              ),
              DataColumn(
                label: Text(
                  'Barcode'.tr(),
                  style: getBoldStyle(fontSize: 15, color: defaultTextColor),
                ),
              ),
              DataColumn(
                label: Text(
                  'Art.No'.tr(),
                  style: getBoldStyle(fontSize: 15, color: defaultTextColor),
                ),
              ),
              DataColumn(
                label: Text(
                  'Description'.tr(),
                  style: getBoldStyle(fontSize: 15, color: defaultTextColor),
                ),
              ),
              DataColumn(
                label: Text(
                  'Qty'.tr(),
                  style: getBoldStyle(fontSize: 15, color: defaultTextColor),
                ),
              ),
              DataColumn(
                label: Text(
                  'Price'.tr(),
                  style: getBoldStyle(fontSize: 15, color: defaultTextColor),
                ),
              ),
              DataColumn(
                label: Text(
                  'Disc.'.tr(),
                  style: getBoldStyle(fontSize: 15, color: defaultTextColor),
                ),
              ),
              DataColumn(
                label: Text(
                  'Total'.tr(),
                  style: getBoldStyle(fontSize: 15, color: defaultTextColor),
                ),
              ),
            ],
            rows: [
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      '1',
                      style: getMediumStyle(color: defaultTextColor),
                    ),
                  ),
                  DataCell(
                    Text(
                      '10000001000136',
                      style: getMediumStyle(color: defaultTextColor),
                    ),
                  ),
                  DataCell(
                    Text(
                      '000',
                      style: getMediumStyle(color: defaultTextColor),
                    ),
                  ),
                  DataCell(
                    Text(
                      'شوكلاتة تويست',
                      style: getMediumStyle(color: defaultTextColor),
                    ),
                  ),
                  DataCell(
                    Text(
                      '222',
                      style: getMediumStyle(color: defaultTextColor),
                    ),
                  ),
                  DataCell(
                    Text(
                      '100.000',
                      style: getMediumStyle(color: defaultTextColor),
                    ),
                  ),
                  DataCell(
                    Text(
                      '0.00',
                      style: getMediumStyle(color: defaultTextColor),
                    ),
                  ),
                  DataCell(
                    Text(
                      '100.000',
                      style: getMediumStyle(color: defaultTextColor),
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      '2',
                      style: getMediumStyle(color: defaultTextColor),
                    ),
                  ),
                  DataCell(
                    Text(
                      '10000001000136',
                      style: getMediumStyle(color: defaultTextColor),
                    ),
                  ),
                  DataCell(
                    Text(
                      '000',
                      style: getMediumStyle(color: defaultTextColor),
                    ),
                  ),
                  DataCell(
                    Text(
                      'شوكلاتة تويست',
                      style: getMediumStyle(color: defaultTextColor),
                    ),
                  ),
                  DataCell(
                    Text(
                      '222',
                      style: getMediumStyle(color: defaultTextColor),
                    ),
                  ),
                  DataCell(
                    Text(
                      '100.000',
                      style: getMediumStyle(color: defaultTextColor),
                    ),
                  ),
                  DataCell(
                    Text(
                      '0.00',
                      style: getMediumStyle(color: defaultTextColor),
                    ),
                  ),
                  DataCell(
                    Text(
                      '100.000',
                      style: getMediumStyle(color: defaultTextColor),
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      '3',
                      style: getMediumStyle(color: defaultTextColor),
                    ),
                  ),
                  DataCell(
                    Text(
                      '10000001000136',
                      style: getMediumStyle(color: defaultTextColor),
                    ),
                  ),
                  DataCell(
                    Text(
                      '000',
                      style: getMediumStyle(color: defaultTextColor),
                    ),
                  ),
                  DataCell(
                    Text(
                      'شوكلاتة تويست',
                      style: getMediumStyle(color: defaultTextColor),
                    ),
                  ),
                  DataCell(
                    Text(
                      '222',
                      style: getMediumStyle(color: defaultTextColor),
                    ),
                  ),
                  DataCell(
                    Text(
                      '100.000',
                      style: getMediumStyle(color: defaultTextColor),
                    ),
                  ),
                  DataCell(
                    Text(
                      '0.00',
                      style: getMediumStyle(color: defaultTextColor),
                    ),
                  ),
                  DataCell(
                    Text(
                      '100.000',
                      style: getMediumStyle(color: defaultTextColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
          // TextButton(
          //   onPressed: () => AppCubit.get(context).showPrintDialog(
          //     context,
          //     title: 'Print',
          //     body: 'Print',
          //   ),
          //   child: Text(
          //     'Print',
          //   ),
          // ),

          // CustomDialogWidget(),
          // TextButton(
          //   onPressed: () => AppCubit.get(context).showCustomDialog(
          //     context,
          //     title: 'Delete All Items',
          //     body:
          //         'are you Sure you want to Delete All items from currant invoice ?',
          //   ),
          //   child: Text(
          //     'Delete All Items',
          //   ),
          // ),
          // TextButton(
          //   onPressed: () => AppCubit.get(context).showCustomDialog(
          //     context,
          //     title: 'Delete Item',
          //     body:
          //         'are you Sure you want to Delete this item from currant invoice ?',
          //   ),
          //   child: Text(
          //     'Delete Selected Item',
          //   ),
          // ),
          // TextButton(
          //   onPressed: () => AppCubit.get(context).showSettingsDialog(
          //     context,
          //     title: 'Settings',
          //     body: 'Settings',
          //   ),
          //   child: Text(
          //     'Settings',
          //   ),
          // ),
          // TextButton(
          //   onPressed: () => AppCubit.get(context).showSearchDialog(
          //     context,
          //     title: 'Item Search',
          //     body: 'Item Search',
          //   ),
          //   child: Text(
          //     'Item Search',
          //   ),
          // ),
          // TextButton(
          //   onPressed: () => AppCubit.get(context).showPaymentDialog(
          //     context,
          //     title: 'Payment',
          //     body: 'Payment',
          //   ),
          //   child: Text(
          //     'Payment',
          //   ),
          // ),
        ],
      ),
    );
  }
}
