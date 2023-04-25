// ignore_for_file: unused_local_variable, deprecated_member_use, avoid_print

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/department.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/location.dart';
import 'package:mobile_warehouse_thaiduong/function.dart';
import 'package:mobile_warehouse_thaiduong/presentation/bloc/events/history_events.dart';
import '../../../constant.dart';
import '../../../domain/entities/item.dart';
import '../../bloc/blocs/history_bloc.dart';

import '../../bloc/states/history_states.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/customized_date_picker.dart';

class ExportHistoryScreen extends StatefulWidget {
  const ExportHistoryScreen({super.key});

  @override
  State<ExportHistoryScreen> createState() => _ExportHistoryScreenSate();
}

class _ExportHistoryScreenSate extends State<ExportHistoryScreen> {
   List<Item> itemsDropdownData = [];
  Item? selectedItem;
  String warehouse = '';
  List<Department> departmentsDropdownData = [];
  Department? selectedDepartment;
  List<Warehouse> warehouseDropdownData = [];
  Warehouse? selectedWarehouse;

  @override
  Widget build(BuildContext context) {
    DateTime date = DateFormat('yyyy-MM-dd')
        .parse(DateFormat('yyyy-MM-dd').format(DateTime.now()));
    SizeConfig().init(context);
    DateTime startDate = DateFormat('yyyy-MM-dd')
        .parse(DateFormat('yyyy-MM-dd').format(DateTime.now()));
    DateTime endDate = DateFormat('yyyy-MM-dd')
        .parse(DateFormat('yyyy-MM-dd').format(DateTime.now()));
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Constants.mainColor,
          leading: IconButton(
            icon: const Icon(Icons.west_outlined),
            onPressed: () {
              Navigator.pushNamed(context, '/history_function_screen');
            },
          ),
          title: Text(
            'Lịch sử xuất kho',
            style: TextStyle(fontSize: 22 * SizeConfig.ratioFont),
          ),
        ),
        body: SingleChildScrollView(
          child: ExpansionPanelList.radio(
            children: [
              ExpansionPanelRadio(
                value: 1,
                headerBuilder: ((context, isExpanded) {
                  return SizedBox(
                    width: 370 * SizeConfig.ratioHeight,
                    height: 60 * SizeConfig.ratioHeight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          Icons.add_shopping_cart_outlined,
                          color: Colors.black,
                          size: 36.0,
                        ),
                        Text(
                          'Truy xuất theo sản phẩm   ',
                          style: TextStyle(
                            //fontFamily: 'MyFont',
                            fontSize: 18,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
                body: Column(
                  children: [
                    BlocConsumer<HistoryBloc, HistoryState>(
                        listener: (context, state) {
                      if (state is GetAllInfoExportSuccessState) {
                        warehouseDropdownData = state.warehouse;
                        itemsDropdownData = state.item;
                      }
                      if (state is GetExportItemByWarehouseSuccessState) {
                        itemsDropdownData = state.item;
                      }
                    }, builder: (context, state) {
                      if (state is GetAllInfoExportSuccessState) {
                        return Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 8, 8, 8),
                                  child: SizedBox(
                                    width: 170 * SizeConfig.ratioWidth,
                                    height: 60 * SizeConfig.ratioHeight,
                                    child: DropdownSearch<dynamic>(
                                      mode: Mode.MENU,
                                      items: state.warehouse
                                          .map((e) => e.warehouseId)
                                          .toList(),
                                      // state is GetAllInfoExportSuccessState
                                      //     ? state.warehouse
                                      //         .map((e) => e.warehouseId)
                                      //         .toList()
                                      //     : state is GetItemByWarehouseSuccessState
                                      //         ? state.warehouse
                                      //             .map((e) => e.warehouseId)
                                      //             .toList()
                                      //         : [],
                                      showSearchBox: true,
                                      label: "Kho hàng",
                                      onChanged: (value) {
                                        selectedItem = null;
                                        print(value);
                                        setState(() {
                                          selectedWarehouse = state.warehouse
                                              .firstWhere((element) =>
                                                  element.warehouseId == value);
                                          BlocProvider.of<HistoryBloc>(context)
                                              .add(GetExportItemByWarehouseEvent(
                                                  DateTime.now(),
                                                  selectedWarehouse!
                                                      .warehouseId,
                                                  state.item,
                                                  state.item,
                                                  state.warehouse,
                                                  state.department));
                                        });
                                      },
                                      selectedItem: selectedWarehouse == null
                                          ? ''
                                          : selectedWarehouse!.warehouseName,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 8, 0, 8),
                                  child: SizedBox(
                                    width: 170 * SizeConfig.ratioWidth,
                                    height: 60 * SizeConfig.ratioHeight,
                                    child: DropdownSearch<String>(
                                      mode: Mode.MENU,
                                      items: state.department
                                          .map((e) => e.name)
                                          .toList(),
                                      showSearchBox: true,
                                      label: "Bộ phận",
                                      onChanged: (value) {
                                        state is GetAllInfoExportSuccessState
                                            ? setState(() {
                                                selectedDepartment = state
                                                    .department
                                                    .firstWhere((element) =>
                                                        element.name == value);
                                              })
                                            : {};
                                      },
                                      selectedItem: selectedDepartment == null
                                          ? ''
                                          : selectedDepartment!.name,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 350 * SizeConfig.ratioWidth,
                              height: 60 * SizeConfig.ratioHeight,
                              child: DropdownSearch<String>(
                                mode: Mode.MENU,
                                items: state.item
                                    .map((e) => e.itemId.toString())
                                    .toList(),
                                showSearchBox: true,
                                label: "Mã sản phẩm",
                                onChanged: (value) {
                                  print(value);
                                  print(value);
                                  setState(() {
                                    selectedItem = state.item.firstWhere(
                                        (element) => element.itemId == value);
                                  });
                                  // state is GetAllInfoExportSuccessState
                                  //     ? setState(() {
                                  //         selectedItem = state.item.firstWhere(
                                  //             (element) =>
                                  //                 element.itemId == value);
                                  //       })
                                  //     : state is GetItemByWarehouseSuccessState
                                  //         ? setState(() {
                                  //             selectedItem = state.item
                                  //                 .firstWhere((element) =>
                                  //                     element.itemId == value);
                                  //           })
                                  //         : {};
                                },
                                selectedItem: selectedItem == null
                                    ? ''
                                    : selectedItem!.itemId,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                width: 350 * SizeConfig.ratioWidth,
                                height: 60 * SizeConfig.ratioHeight,
                                child: DropdownSearch<String>(
                                  mode: Mode.MENU,
                                  items: state.item
                                      .map((e) => e.itemName.toString())
                                      .toList(),
                                  showSearchBox: true,
                                  label: "Tên sản phẩm",
                                  // hint: "country in menu mode",
                                  onChanged: (value) {
                                    print(value);
                                    setState(() {
                                      selectedItem = state.item.firstWhere(
                                          (element) =>
                                              element.itemName == value);
                                    });
                                  },
                                  selectedItem: selectedItem == null
                                      ? ''
                                      : selectedItem!.itemName,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 5 * SizeConfig.ratioHeight),
                                    width: 160 * SizeConfig.ratioWidth,
                                    height: 60 * SizeConfig.ratioHeight,
                                    child: CustomizeDatePicker(
                                      name: "Từ ngày",
                                      fontColor: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      initDateTime: date,
                                      okBtnClickedFunction: (pickedTime) {
                                        date = pickedTime;
                                      },
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 5 * SizeConfig.ratioHeight),
                                    width: 160 * SizeConfig.ratioWidth,
                                    height: 60 * SizeConfig.ratioHeight,
                                    child: CustomizeDatePicker(
                                      name: "Đến ngày",
                                      fontColor: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      initDateTime: date,
                                      okBtnClickedFunction: (pickedTime) {
                                        date = pickedTime;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomizedButton(
                                text: "Truy xuất",
                                onPressed: () {
                                  BlocProvider.of<HistoryBloc>(context)
                                      .add(AccessExportHistoryByItemIdEvent(
                                    DateTime.now(),
                                    startDate,
                                    endDate,
                                    selectedItem!.itemId,
                                  ));
                                  Navigator.pushNamed(
                                    context,
                                    '/list_export_history_screen',
                                  );
                                }),
                          ],
                        );
                      }
                      if (state is GetExportItemByWarehouseSuccessState) {
                        return Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 8, 8, 8),
                                  child: SizedBox(
                                    width: 170 * SizeConfig.ratioWidth,
                                    height: 60 * SizeConfig.ratioHeight,
                                    child: DropdownSearch<dynamic>(
                                      mode: Mode.MENU,
                                      items: state.warehouse
                                          .map((e) => e.warehouseId)
                                          .toList(),
                                      showSearchBox: true,
                                      label: "Kho hàng",
                                      // hint: "country in menu mode",
                                      onChanged: (value) {
                                        selectedItem = null;
                                        print(value);
                                        setState(() {
                                          selectedWarehouse = state.warehouse
                                              .firstWhere((element) =>
                                                  element.warehouseId == value);
                                          BlocProvider.of<HistoryBloc>(context)
                                              .add(GetExportItemByWarehouseEvent(
                                                  DateTime.now(),
                                                  selectedWarehouse!
                                                      .warehouseId,
                                                  state.listAllItem,
                                                  state.item,
                                                  state.warehouse,
                                                  state.department));
                                        });
                                      },
                                      selectedItem: selectedWarehouse == null
                                          ? ''
                                          : selectedWarehouse!.warehouseName,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 8, 0, 8),
                                  child: SizedBox(
                                    width: 170 * SizeConfig.ratioWidth,
                                    height: 60 * SizeConfig.ratioHeight,
                                    child: DropdownSearch<String>(
                                      mode: Mode.MENU,
                                      items: state.department
                                          .map((e) => e.name)
                                          .toList(),
                                      showSearchBox: true,
                                      label: "Bộ phận",
                                      onChanged: (value) {
                                        state is GetAllInfoExportSuccessState
                                            ?
                                            //  print(value);
                                            setState(() {
                                                selectedDepartment = state
                                                    .department
                                                    .firstWhere((element) =>
                                                        element.name == value);
                                              })
                                            : {};
                                      },
                                      selectedItem: selectedDepartment == null
                                          ? ''
                                          : selectedDepartment!.name,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 350 * SizeConfig.ratioWidth,
                              height: 60 * SizeConfig.ratioHeight,
                              child: DropdownSearch<String>(
                                mode: Mode.MENU,
                                items: state.item
                                    .map((e) => e.itemId.toString())
                                    .toList(),
                                showSearchBox: true,
                                label: "Mã sản phẩm",
                                // hint: "country in menu mode",
                                onChanged: (value) {
                                  print(value);
                                  setState(() {
                                    selectedItem = state.item.firstWhere(
                                        (element) => element.itemId == value);
                                  });
                                },
                                selectedItem: selectedItem == null
                                    ? ''
                                    : selectedItem!.itemId,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                width: 350 * SizeConfig.ratioWidth,
                                height: 60 * SizeConfig.ratioHeight,
                                child: DropdownSearch<String>(
                                  mode: Mode.MENU,
                                  items: state.item
                                      .map((e) => e.itemName.toString())
                                      .toList(),
                                  showSearchBox: true,
                                  label: "Tên sản phẩm",
                                  // hint: "country in menu mode",
                                  onChanged: (value) {
                                    print(value);
                                    setState(() {
                                      selectedItem = state.item.firstWhere(
                                          (element) =>
                                              element.itemName == value);
                                    });
                                  },
                                  selectedItem: selectedItem == null
                                      ? ''
                                      : selectedItem!.itemName,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 5 * SizeConfig.ratioHeight),
                                    width: 160 * SizeConfig.ratioWidth,
                                    height: 60 * SizeConfig.ratioHeight,
                                    child: CustomizeDatePicker(
                                      name: "Từ ngày",
                                      fontColor: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      initDateTime: date,
                                      okBtnClickedFunction: (pickedTime) {
                                        date = pickedTime;
                                      },
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 5 * SizeConfig.ratioHeight),
                                    width: 160 * SizeConfig.ratioWidth,
                                    height: 60 * SizeConfig.ratioHeight,
                                    child: CustomizeDatePicker(
                                      name: "Đến ngày",
                                      fontColor: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      initDateTime: date,
                                      okBtnClickedFunction: (pickedTime) {
                                        date = pickedTime;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomizedButton(
                                text: "Truy xuất",
                                onPressed: () {
                                  BlocProvider.of<HistoryBloc>(context)
                                      .add(AccessExportHistoryByItemIdEvent(
                                    DateTime.now(),
                                    startDate,
                                    endDate,
                                    selectedItem!.itemId
                                  ));
                                  Navigator.pushNamed(
                                    context,
                                    '/list_export_history_screen',
                                  );
                                }),
                          ],
                        );
                      } else {
                        return const CircularProgressIndicator();
                      }
                    }),
                  ],
                ),
              ),
              ExpansionPanelRadio(
                value: 2,
                headerBuilder: ((context, isExpanded) {
                  return SizedBox(                  
                    width: 370 * SizeConfig.ratioHeight,
                    height: 60 * SizeConfig.ratioHeight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          Icons.add_home_outlined,
                          color: Colors.black,
                          size: 36.0,
                        ),
                        Text(
                          'Truy xuất theo bộ phận         ',
                          style: TextStyle(
                            //fontFamily: 'MyFont',
                            fontSize: 18,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
                body: BlocConsumer<HistoryBloc, HistoryState>(
                    listener: (context, state) {
                  if (state is GetAllInfoExportSuccessState) {
                    warehouseDropdownData = state.warehouse;
                    itemsDropdownData = state.item;
                  }
                }, builder: (context, state) {
                  if (state is GetAllInfoExportSuccessState) {
                    return Column(children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                        child: SizedBox(
                          width: 350 * SizeConfig.ratioWidth,
                          height: 60 * SizeConfig.ratioHeight,
                          child: DropdownSearch<String>(
                            mode: Mode.MENU,
                            items: state.department.map((e) => e.name).toList(),
                            showSearchBox: true,
                            label: "Bộ phận",
                            onChanged: (value) {
                              state is GetAllInfoExportSuccessState
                                  ?
                                  //  print(value);
                                  setState(() {
                                      selectedDepartment = state.department
                                          .firstWhere((element) =>
                                              element.name == value);
                                    })
                                  : {};
                            },
                            selectedItem: selectedDepartment == null
                                ? ''
                                : selectedDepartment!.name,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5 * SizeConfig.ratioHeight),
                              width: 160 * SizeConfig.ratioWidth,
                              height: 60 * SizeConfig.ratioHeight,
                              child: CustomizeDatePicker(
                                name: "Từ ngày",
                                fontColor: Colors.black,
                                fontWeight: FontWeight.normal,
                                initDateTime: date,
                                okBtnClickedFunction: (pickedTime) {
                                  date = pickedTime;
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5 * SizeConfig.ratioHeight),
                              width: 160 * SizeConfig.ratioWidth,
                              height: 60 * SizeConfig.ratioHeight,
                              child: CustomizeDatePicker(
                                name: "Đến ngày",
                                fontColor: Colors.black,
                                fontWeight: FontWeight.normal,
                                initDateTime: date,
                                okBtnClickedFunction: (pickedTime) {
                                  date = pickedTime;
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomizedButton(
                          text: "Truy xuất",
                          onPressed: () {
                            BlocProvider.of<HistoryBloc>(context)
                                .add(AccessExportHistoryByReceiverEvent(
                              DateTime.now(),
                         startDate,
                         endDate,
                         selectedDepartment!.name,
                            ));
                            Navigator.pushNamed(
                              context,
                              '/list_export_history_screen',
                            );
                          })
                    ]);
                  } else {
                    return const CircularProgressIndicator();
                  }
                }),
              ),
              ExpansionPanelRadio(
                value: 3,
                headerBuilder: ((context, isExpanded) {
                  return SizedBox(
                    width: 370 * SizeConfig.ratioHeight,
                    height: 60 * SizeConfig.ratioHeight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:const  [
                        Icon(
                          Icons.document_scanner_outlined,
                          color: Colors.black,
                          size: 36.0,
                        ),
                        Text(
                          'Truy xuất theo PO                  ',
                          style: TextStyle(
                            //fontFamily: 'MyFont',
                            fontSize: 18,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
                body: BlocConsumer<HistoryBloc, HistoryState>(
                    listener: (context, state) {
                  if (state is GetAllInfoExportSuccessState) {
                    warehouseDropdownData = state.warehouse;
                    itemsDropdownData = state.item;
                  }
                  // if (state is GetItemByWarehouseSuccessState) {
                  //   itemsDropdownData = state.item;
                  // }
                }, builder: (context, state) {
                  if (state is GetAllInfoExportSuccessState) {
                    return Column(children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                        child: SizedBox(
                          width: 350 * SizeConfig.ratioWidth,
                          height: 60 * SizeConfig.ratioHeight,
                          child: DropdownSearch<String>(
                            mode: Mode.MENU,
                            items: state.department.map((e) => e.name).toList(),
                     
                            showSearchBox: true,
                            label: "PO",
                            onChanged: (value) {
                          
                            },
                            selectedItem: selectedDepartment == null
                                ? ''
                                : selectedDepartment!.name,
                          ),
                        ),
                      ),
                      CustomizedButton(
                          text: "Truy xuất",
                          onPressed: () {
                            BlocProvider.of<HistoryBloc>(context)
                                .add(AccessExportHistoryByPOEvent(
                              DateTime.now(),
                              warehouse,
                            ));
                            Navigator.pushNamed(
                              context,
                              '/list_export_history_screen',
                            );
                          })
                    ]);
                  } else {
                    return const CircularProgressIndicator();
                  }
                }),
              ),
            ],
          ),
        ));
  }
}
