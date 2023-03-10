import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_warehouse_thaiduong/constant.dart';
import 'package:mobile_warehouse_thaiduong/presentation/widgets/button_widget.dart';
import 'package:mobile_warehouse_thaiduong/presentation/widgets/customized_date_picker.dart';
import '../../../function.dart';

class ListCompletedGoodIssueScreen extends StatelessWidget {
  const ListCompletedGoodIssueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    DateTime date = DateFormat('yyyy-MM-dd')
        .parse(DateFormat('yyyy-MM-dd').format(DateTime.now()));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.mainColor,
        title: Text(
          'Danh sách phiếu đã nhập',
          style: TextStyle(fontSize: 22 * SizeConfig.ratioFont),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
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
            const Divider(
              indent: 30,
              endIndent: 30,
              color: Constants.mainColor,
              thickness: 1,
            ),
            SizedBox(
              height: 470 * SizeConfig.ratioHeight,
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        width: 350 * SizeConfig.ratioWidth,
                        height: 80 * SizeConfig.ratioHeight,
                        color: Constants.buttonColor,
                      ),
                    );
                  }),
            ),
            CustomizedButton(text: "Truy xuất", onPressed: () {})
          ],
        ),
      ),
    );
  }
}
