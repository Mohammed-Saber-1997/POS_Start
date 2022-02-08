import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pos_start/cubit/app_cubit.dart';
import 'package:pos_start/presentation/src/src.dart';

class mainPart extends StatelessWidget {
  const mainPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color defaultTextColor =
        AppCubit.get(context).isDark ? ColorManager.white : ColorManager.black;

    return Expanded(
      child: DataTable(
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
              'Art. No'.tr(),
              style: getBoldStyle(fontSize: 15, color: defaultTextColor),
            ),
          ),
          DataColumn(
            label: Text(
              'Item Description'.tr(),
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
              'Total Price'.tr(),
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
    );
  }
}
