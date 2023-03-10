import 'package:flutter/material.dart';
import 'package:mobile_warehouse_thaiduong/constant.dart';
import 'package:mobile_warehouse_thaiduong/function.dart';
import 'package:mobile_warehouse_thaiduong/presentation/widgets/lot_detail_component.dart';

class ListLotIssueScreen extends StatelessWidget {
  const ListLotIssueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), // Creates border
                  color: Constants.secondaryColor),
              indicatorColor: Colors.black,
              tabs: const [
                Tab(
                  //icon: Icon(Icons.flight),
                  text: 'DS đề xuất',
                ),
                Tab(
                  // icon: Icon(Icons.directions_transit),
                  text: 'DS dự kiến',
                ),
              ],
            ),
            backgroundColor: Constants.mainColor,
            title: Text(
              'Danh sách hàng hóa',
              style: TextStyle(fontSize: 22 * SizeConfig.ratioFont),
            ),
          ),
          body: TabBarView(children: [
            ListView.builder(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return LotDetailComponent(
                      itemId: 'CDP001',
                      location: '',
                      enableEdit: false,
                      lotid: '220123_NCC',
                      numberPO: '264836',
                      unit: 'cái',
                      quantity: 100,
                      norm: 10,
                      onPressed: () {});
                }),
            ListView.builder(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return LotDetailComponent(
                      itemId: 'CDP001',
                      lotid: '220123_NCC',
                      location: '',
                      enableEdit: true,
                      numberPO: '264836',
                      unit: 'cái',
                      quantity: 100,
                      norm: 10,
                      onPressed: () {});
                }),
          ])),
    );
  }
}
