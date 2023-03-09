import 'package:flutter/material.dart';
import 'package:mobile_warehouse_thaiduong/constant.dart';
import 'package:mobile_warehouse_thaiduong/function.dart';
import 'package:mobile_warehouse_thaiduong/presentation/screens/export/fill_info_lot_issue_screen.dart';
import 'package:mobile_warehouse_thaiduong/presentation/widgets/button_widget.dart';
import 'package:mobile_warehouse_thaiduong/presentation/widgets/dropdown_search_button.dart';

import '../../widgets/exception_widget.dart';
import '../../widgets/text_input_widget.dart';

class CreateNewIssueScreen extends StatefulWidget {
  const CreateNewIssueScreen({super.key});

  @override
  State<CreateNewIssueScreen> createState() => _CreateNewIssueScreenState();
}

class _CreateNewIssueScreenState extends State<CreateNewIssueScreen> {
  TextEditingController controller = TextEditingController();
  String issueId = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.mainColor,
        title: Text(
          'Xuất kho',
          style: TextStyle(fontSize: 22 * SizeConfig.ratioFont),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              overflow: TextOverflow.ellipsis,
              "Số phiếu",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20 * SizeConfig.ratioFont,
                color: Colors.black,
              ),
            ),
            TextInput(contentTextField: issueId)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              overflow: TextOverflow.ellipsis,
              "Bộ phận",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20 * SizeConfig.ratioFont,
                color: Colors.black,
              ),
            ),
            DropdownSearchButton(
                buttonName: "Bộ phận",
                height: 55,
                width: 200,
                listItem: [],
                reference: "",
                onChanged: () {})
            //TextInput(contentTextField: issueId)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              overflow: TextOverflow.ellipsis,
              "Số PO   ",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20 * SizeConfig.ratioFont,
                color: Colors.black,
              ),
            ),
            TextInput(contentTextField: issueId)
          ],
        ),
        const Divider(
          indent: 30,
          endIndent: 30,
          color: Constants.mainColor,
          thickness: 1,
        ),
        Text(
          overflow: TextOverflow.ellipsis,
          "Danh sách các lô hàng",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20 * SizeConfig.ratioFont,
            color: Colors.black,
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: TextField(
        //     onChanged: ((value) {}),
        //     controller: controller,
        //     decoration: const InputDecoration(
        //         labelText: "Search",
        //         hintText: "Search",
        //         prefixIcon: Icon(Icons.search),
        //         border: OutlineInputBorder(
        //             borderRadius: BorderRadius.all(Radius.circular(25.0)))),
        //   ),
        // ),
        ExceptionErrorState(
          title: "Phiếu đang rỗng",
          message: "Chọn Tiếp tục để chọn hàng hóa cần xuất",
        ),
        CustomizedButton(
            text: "Tiếp tục",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const FillInfoEntryIssueScreen()),
              );
            })
      ]),
    );
  }
}
