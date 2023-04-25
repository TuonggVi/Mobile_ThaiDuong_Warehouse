// ignore_for_file: deprecated_member_use, avoid_print, unused_import

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/location.dart';
import 'package:mobile_warehouse_thaiduong/function.dart';
import 'package:mobile_warehouse_thaiduong/presentation/bloc/events/inventory_events.dart';

import '../../../constant.dart';
import '../../bloc/blocs/warning_bloc.dart';
import '../../bloc/events/warning_events.dart';
import '../../bloc/states/warning_states.dart';
import '../../widgets/button_widget.dart';

class WarningUnderStockminScreen extends StatefulWidget {
  const WarningUnderStockminScreen({super.key});

  @override
  State<WarningUnderStockminScreen> createState() =>
      _WarningUnderStockminScreenSate();
}

class _WarningUnderStockminScreenSate
    extends State<WarningUnderStockminScreen> {
  List<Warehouse> warehouseDropdownData = [];
  Warehouse? selectedWarehouse;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.west_outlined),
            onPressed: () {
              Navigator.pushNamed(context, '/warning_function_screen');
            },
          ),
          backgroundColor: Constants.mainColor,
          title: Text(
            'Cảnh báo',
            style: TextStyle(fontSize: 22 * SizeConfig.ratioFont),
          ),
        ),
        body: Column(
          children: [
            BlocConsumer<WarningBloc, WarningState>(listener: (context, state) {
              if (state is GetWarehouseSuccessState) {
                warehouseDropdownData = state.warehouse;
              }
              if (state is MinimumStockWarningSuccessState) {
                warehouseDropdownData = state.warehouse;
              }
            }, builder: (context, state) {
              if (state is GetWarehouseSuccessState) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 350 * SizeConfig.ratioWidth,
                        height: 60 * SizeConfig.ratioHeight,
                        child: DropdownSearch<String>(
                          mode: Mode.MENU,
                          items: state.warehouse
                              .map((e) => e.warehouseName)
                              .toList(),
                          showSearchBox: true,
                          label: "Kho hàng",
                          onChanged: (value) {
                            print(value);
                            selectedWarehouse = null;
                            setState(() {
                              selectedWarehouse = state.warehouse.firstWhere(
                                  (element) => element.warehouseName == value);
                            });
                          },
                          selectedItem: selectedWarehouse == null
                              ? ''
                              : selectedWarehouse!.warehouseName,
                        ),
                      ),
                    ),
                    CustomizedButton(
                        text: "Truy xuất",
                        onPressed: () {
                          BlocProvider.of<WarningBloc>(context).add(
                              MinimumStockWarningEvent(
                                  DateTime.now(),
                                  selectedWarehouse!.warehouseName,
                                  state.warehouse

                                  //state.warehouse
                                  ));
                        }),
                    const Divider(
                      indent: 30,
                      endIndent: 30,
                      color: Constants.mainColor,
                      thickness: 1,
                    ),
                  ],
                );
              }
              if (state is MinimumStockWarningSuccessState) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 350 * SizeConfig.ratioWidth,
                        height: 60 * SizeConfig.ratioHeight,
                        child: DropdownSearch<String>(
                          mode: Mode.MENU,
                          items: state.warehouse
                              .map((e) => e.warehouseName)
                              .toList(),
                          showSearchBox: true,
                          label: "Kho hàng",
                          onChanged: (value) {
                            print(value);
                            selectedWarehouse = null;
                            setState(() {
                              selectedWarehouse = state.warehouse.firstWhere(
                                  (element) => element.warehouseName == value);
                            });
                          },
                          selectedItem: selectedWarehouse == null
                              ? ''
                              : selectedWarehouse!.warehouseName,
                        ),
                      ),
                    ),
                    CustomizedButton(
                        text: "Truy xuất",
                        onPressed: () {
                          BlocProvider.of<WarningBloc>(context).add(
                              MinimumStockWarningEvent(
                                  DateTime.now(),
                                  selectedWarehouse!.warehouseName,
                                  state.warehouse

                                  //state.warehouse
                                  ));
                        }),
                    const Divider(
                      indent: 30,
                      endIndent: 30,
                      color: Constants.mainColor,
                      thickness: 1,
                    ),
                  ],
                );
              } else {
                return Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 350 * SizeConfig.ratioWidth,
                      height: 60 * SizeConfig.ratioHeight,
                      child: DropdownSearch<String>(
                        mode: Mode.MENU,
                        // items: state.item.map((e) => e.itemId).toList(),
                        // showSearchBox: true,
                        label: "Kho hàng",
                        onChanged: (value) {
                          // print(value);
                          // setState(() {
                          //   selectedItem = state.item.firstWhere(
                          //       (element) => element.itemId == value);
                          // });
                        },
                        selectedItem: selectedWarehouse == null
                            ? ''
                            : selectedWarehouse!.warehouseName,
                      ),
                    ),
                  ),               
                  CustomizedButton(text: "Truy xuất", onPressed: () {}),
                  const Divider(
                    indent: 30,
                    endIndent: 30,
                    color: Constants.mainColor,
                    thickness: 1,
                  ),
                ]);
              }
            }),
          ],
        ));
  }
}
