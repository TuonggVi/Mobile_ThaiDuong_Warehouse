// ignore_for_file: avoid_print, prefer_const_constructors, deprecated_member_use

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:mobile_warehouse_thaiduong/function.dart';
import 'package:mobile_warehouse_thaiduong/presentation/dialog/dialog_two_button.dart';

import '../../../constant.dart';
import '../../../domain/entities/item.dart';
import '../../bloc/blocs/isolation_bloc.dart';
import '../../bloc/events/isolation_events.dart';
import '../../bloc/states/isolation_states.dart';
import '../../widgets/button_widget.dart';

class IsolationItemScreen extends StatefulWidget {
  const IsolationItemScreen({super.key});

  @override
  State<IsolationItemScreen> createState() => _IsolationItemScreenState();
}

class _IsolationItemScreenState extends State<IsolationItemScreen> {
  List<Item> itemsDropdownData = [];
  Item? selectedItem;
  
  @override
  Widget build(BuildContext context) {
    DateTime date = DateFormat('yyyy-MM-dd')
        .parse(DateFormat('yyyy-MM-dd').format(DateTime.now()));
    SizeConfig().init(context);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Constants.mainColor,
          leading: IconButton(
            icon: const Icon(Icons.west_outlined),
            onPressed: () {
              Navigator.pushNamed(context, '/isolation_function_screen');
            },
          ),
          title: Text(
            'Cách ly',
            style: TextStyle(fontSize: 22 * SizeConfig.ratioFont),
          ),
        ),
        body: Column(
          children: [
            BlocConsumer<IsolationBloc, IsolationState>(
                listener: (context, state) {
              if (state is GetAllItemSuccessState) {
                itemsDropdownData = state.item;
              }
              if (state is GetLotByItemIdSuccessState) {
                itemsDropdownData = state.item;
              }
            }, builder: (context, state) {
              if (state is GetAllItemSuccessState) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 350 * SizeConfig.ratioWidth,
                        height: 60 * SizeConfig.ratioHeight,
                        child: DropdownSearch<String>(
                          mode: Mode.MENU,
                          items: state.item.map((e) => e.itemId).toList(),
                          showSearchBox: true,
                          label: "Mã sản phẩm",
                          onChanged: (value) {
                            print(value);
                            selectedItem = null;
                            setState(() {
                              selectedItem = state.item.firstWhere(
                                  (element) => element.itemId == value);
                            });
                          },
                          selectedItem:
                              selectedItem == null ? '' : selectedItem!.itemId,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 350 * SizeConfig.ratioWidth,
                      height: 60 * SizeConfig.ratioHeight,
                      child: DropdownSearch<String>(
                        mode: Mode.MENU,
                        items: state.item
                            .map((e) => e.itemName.toString())
                            .toList(),
                        showSearchBox: true,
                        label: "Tên sản phẩm",
                        onChanged: (value) {
                          print(value);
                          setState(() {
                            selectedItem = state.item.firstWhere(
                                (element) => element.itemName == value);
                          });
                        },
                        selectedItem: selectedItem == null
                            ? ''
                            : selectedItem!.itemName,
                      ),
                    ),
                    CustomizedButton(
                        text: "Truy xuất",
                        onPressed: () {
                          BlocProvider.of<IsolationBloc>(context).add(
                              GetLotByItemIdEvent(DateTime.now(),
                                  selectedItem!.itemId, state.item

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
              if (state is GetLotByItemIdSuccessState) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 350 * SizeConfig.ratioWidth,
                        height: 60 * SizeConfig.ratioHeight,
                        child: DropdownSearch<String>(
                          mode: Mode.MENU,
                          items:
                              state.item.map((e) => e.itemId.toString()).toList(),
                          showSearchBox: true,
                          label: "Mã sản phẩm",
                          // hint: "country in menu mode",
                          onChanged: (value) {
                            print(value);
                            print(value);
                            setState(() {
                              selectedItem = state.item.firstWhere(
                                  (element) => element.itemId == value);
                            });
                          },
                          selectedItem:
                              selectedItem == null ? '' : selectedItem!.itemId,
                        ),
                      ),
                    ),
                    SizedBox(
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
                                (element) => element.itemName == value);
                          });
                        },
                        selectedItem: selectedItem == null
                            ? ''
                            : selectedItem!.itemName,
                      ),
                    ),
                    CustomizedButton(
                        text: "Truy xuất",
                        onPressed: () {
                          BlocProvider.of<IsolationBloc>(context).add(
                              GetLotByItemIdEvent(DateTime.now(),
                                  selectedItem!.itemId, state.item));
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
                        label: "Mã sản phẩm",
                        onChanged: (value) {
                          // print(value);
                          // setState(() {
                          //   selectedItem = state.item.firstWhere(
                          //       (element) => element.itemId == value);
                          // });
                        },
                        selectedItem:
                            selectedItem == null ? '' : selectedItem!.itemId,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 350 * SizeConfig.ratioWidth,
                    height: 60 * SizeConfig.ratioHeight,
                    child: DropdownSearch<String>(
                      mode: Mode.MENU,
                      // items: state.item
                      //     .map((e) => e.itemName.toString())
                      //     .toList(),
                      showSearchBox: true,
                      label: "Tên sản phẩm",
                      onChanged: (value) {
                        print(value);
                        // setState(() {
                        //   selectedItem = state.item.firstWhere(
                        //       (element) => element.itemName == value);
                        // });
                      },
                      selectedItem:
                          selectedItem == null ? '' : selectedItem!.itemName,
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
