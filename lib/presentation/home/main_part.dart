import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pos_start/presentation/src/src.dart';

class MainPart extends StatelessWidget {
  const MainPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          DataTable(
            columns: [
              DataColumn(
                label: Text(
                  'Ser'.tr(),
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontSize: ResponsiveSize.w15,
                        color: ColorManager.defaultTextColor,
                      ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Barcode'.tr(),
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontSize: ResponsiveSize.w15,
                        color: ColorManager.defaultTextColor,
                      ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Art.No'.tr(),
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontSize: ResponsiveSize.w15,
                        color: ColorManager.defaultTextColor,
                      ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Description'.tr(),
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontSize: ResponsiveSize.w15,
                        color: ColorManager.defaultTextColor,
                      ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Qty'.tr(),
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontSize: ResponsiveSize.w15,
                        color: ColorManager.defaultTextColor,
                      ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Price'.tr(),
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontSize: ResponsiveSize.w15,
                        color: ColorManager.defaultTextColor,
                      ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Disc.'.tr(),
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontSize: ResponsiveSize.w15,
                        color: ColorManager.defaultTextColor,
                      ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Total'.tr(),
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontSize: ResponsiveSize.w15,
                        color: ColorManager.defaultTextColor,
                      ),
                ),
              ),
            ],
            rows: [
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      '1',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: ColorManager.defaultTextColor,
                          ),
                    ),
                  ),
                  DataCell(
                    Text(
                      '10000001000136',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: ColorManager.defaultTextColor,
                          ),
                    ),
                  ),
                  DataCell(
                    Text(
                      '000',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: ColorManager.defaultTextColor,
                          ),
                    ),
                  ),
                  DataCell(
                    Text(
                      'شوكلاتة تويست',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: ColorManager.defaultTextColor,
                          ),
                    ),
                  ),
                  DataCell(
                    Text(
                      '222',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: ColorManager.defaultTextColor,
                          ),
                    ),
                  ),
                  DataCell(
                    Text(
                      '100.000',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: ColorManager.defaultTextColor,
                          ),
                    ),
                  ),
                  DataCell(
                    Text(
                      '0.00',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: ColorManager.defaultTextColor,
                          ),
                    ),
                  ),
                  DataCell(
                    Text(
                      '100.000',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: ColorManager.defaultTextColor,
                          ),
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      '2',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: ColorManager.defaultTextColor,
                          ),
                    ),
                  ),
                  DataCell(
                    Text(
                      '10000001000136',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: ColorManager.defaultTextColor,
                          ),
                    ),
                  ),
                  DataCell(
                    Text(
                      '000',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: ColorManager.defaultTextColor,
                          ),
                    ),
                  ),
                  DataCell(
                    Text(
                      'شوكلاتة تويست',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: ColorManager.defaultTextColor,
                          ),
                    ),
                  ),
                  DataCell(
                    Text(
                      '222',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: ColorManager.defaultTextColor,
                          ),
                    ),
                  ),
                  DataCell(
                    Text(
                      '100.000',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: ColorManager.defaultTextColor,
                          ),
                    ),
                  ),
                  DataCell(
                    Text(
                      '0.00',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: ColorManager.defaultTextColor,
                          ),
                    ),
                  ),
                  DataCell(
                    Text(
                      '100.000',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: ColorManager.defaultTextColor,
                          ),
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      '3',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: ColorManager.defaultTextColor,
                          ),
                    ),
                  ),
                  DataCell(
                    Text(
                      '10000001000136',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: ColorManager.defaultTextColor,
                          ),
                    ),
                  ),
                  DataCell(
                    Text(
                      '000',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: ColorManager.defaultTextColor,
                          ),
                    ),
                  ),
                  DataCell(
                    Text(
                      'شوكلاتة تويست',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: ColorManager.defaultTextColor,
                          ),
                    ),
                  ),
                  DataCell(
                    Text(
                      '222',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: ColorManager.defaultTextColor,
                          ),
                    ),
                  ),
                  DataCell(
                    Text(
                      '100.000',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: ColorManager.defaultTextColor,
                          ),
                    ),
                  ),
                  DataCell(
                    Text(
                      '0.00',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: ColorManager.defaultTextColor,
                          ),
                    ),
                  ),
                  DataCell(
                    Text(
                      '100.000',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: ColorManager.defaultTextColor,
                          ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
