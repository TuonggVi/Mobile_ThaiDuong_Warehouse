import 'package:flutter/material.dart';
import 'package:mobile_warehouse_thaiduong/constant.dart';
import 'package:mobile_warehouse_thaiduong/function.dart';
import 'package:mobile_warehouse_thaiduong/presentation/screens/import/create_new_receipt_screen.dart';
import 'package:mobile_warehouse_thaiduong/presentation/screens/import/list_completed_receipt.dart';
import 'package:mobile_warehouse_thaiduong/presentation/screens/import/list_uncompleted_receipt.dart';
import 'package:mobile_warehouse_thaiduong/presentation/widgets/button_widget.dart';

class ImportFunctionScreen extends StatelessWidget {
  const ImportFunctionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.mainColor,
        title: Text(
          'Nhập kho',
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
                      builder: (context) => const CreateNewReceiptScreen()),
                );
              }),
          IconCustomizedButton(
              icon: Icons.add_location_alt,
              text: "DS PHIẾU CHƯA HOÀN THÀNH",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const ListUncompletedGoodIssueScreen()),
                );
              }),
          IconCustomizedButton(
              icon: Icons.list_alt_outlined,
              text: "DS PHIẾU ĐÃ HOÀN THÀNH",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const ListCompletedGoodIssueScreen()),
                );
              }),
        ],
      )),
    );
  }
}
