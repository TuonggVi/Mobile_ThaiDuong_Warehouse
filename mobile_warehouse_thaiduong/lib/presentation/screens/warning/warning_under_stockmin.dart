import 'package:flutter/material.dart';
import 'package:mobile_warehouse_thaiduong/function.dart';
import 'package:mobile_warehouse_thaiduong/presentation/widgets/dropdown_search_button.dart';

import '../../../constant.dart';
import '../../widgets/button_widget.dart';

class WarningUnderStockminScreen extends StatelessWidget {
  const WarningUnderStockminScreen({super.key});
  @override
  Widget build(BuildContext context) {
    String expiredDay = '';
    SizeConfig().init(context);

    return Scaffold(
       appBar: AppBar(
        backgroundColor: Constants.mainColor,
        title: Text(
          'Cảnh báo',
          style: TextStyle(fontSize: 22 * SizeConfig.ratioFont),
        ),
      ),
      body: Column(children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              overflow: TextOverflow.ellipsis,
              "Kho hàng",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20 * SizeConfig.ratioFont,
                color: Colors.black,
              ),
            ),
            DropdownSearchButton(buttonName: "Chọn loại kho hàng", height: 60, width: 200, listItem: [], reference: expiredDay, onChanged: (){})
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
         CustomizedButton(text: "Truy xuất" ,onPressed: (){})
      ]),
    );
  }
}