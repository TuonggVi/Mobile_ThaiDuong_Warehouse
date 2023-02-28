import 'package:flutter/material.dart';
import 'package:mobile_warehouse_thaiduong/constant.dart';
import 'package:mobile_warehouse_thaiduong/function.dart';
import 'package:mobile_warehouse_thaiduong/presentation/screens/export/create_new_issue_screen.dart';
import 'package:mobile_warehouse_thaiduong/presentation/screens/export/list_good_issue_completed_screen.dart';
import 'package:mobile_warehouse_thaiduong/presentation/screens/export/list_good_issue_screen.dart';
import 'package:mobile_warehouse_thaiduong/presentation/widgets/button_widget.dart';

class ExportFunctionScreen extends StatelessWidget {
  const ExportFunctionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.mainColor,
        title: Text(
          'Xuất kho',
          style: TextStyle(fontSize: 22 * SizeConfig.ratioFont),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconCustomizedButton(
              icon: Icons.note_add,
              text: "TẠO PHIẾU MỚI",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CreateNewIssueScreen()),
                );
              }),
          IconCustomizedButton(
              icon: Icons.list_alt_outlined,
              text: "DANH SÁCH PHIẾU CẦN XUẤT",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ListGoodIssueScreen()),
                );
              }),
          IconCustomizedButton(
              icon: Icons.fact_check_outlined,
              text: "DANH SÁCH PHIẾU ĐÃ XUẤT",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const ListGoodIssueCompletedScreen()),
                );
              }),
        ],
      )),
    );
  }
}
