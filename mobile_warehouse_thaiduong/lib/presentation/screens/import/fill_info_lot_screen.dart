import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_warehouse_thaiduong/constant.dart';
import 'package:mobile_warehouse_thaiduong/function.dart';
import 'package:mobile_warehouse_thaiduong/presentation/screens/import/create_new_receipt_screen.dart';
import 'package:mobile_warehouse_thaiduong/presentation/widgets/barcode_input_widget.dart';
import 'package:mobile_warehouse_thaiduong/presentation/widgets/button_widget.dart';
import 'package:mobile_warehouse_thaiduong/presentation/widgets/customized_date_picker.dart';
import 'package:mobile_warehouse_thaiduong/presentation/widgets/dropdown_search_button.dart';

class FillInfoLotReceiptScreen extends StatefulWidget {
  const FillInfoLotReceiptScreen({super.key});

  @override
  State<FillInfoLotReceiptScreen> createState() =>
      _FillInfoLotReceiptScreenState();
}

class _FillInfoLotReceiptScreenState extends State<FillInfoLotReceiptScreen> {
  String itemId = '', itemName = '', lotId = '';
  DateTime date = DateFormat('yyyy-MM-dd')
      .parse(DateFormat('yyyy-MM-dd').format(DateTime.now()));

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
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10 * SizeConfig.ratioHeight),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BarcodeinputWidget(
                textController: lotId,
                textLabel: "Mã lô",
              ),
              BarcodeinputWidget(
                textController: itemId,
                textLabel: "Mã hàng hóa",
              ),
              DropdownSearchButton(
                  buttonName: "Tên hàng hóa",
                  height: 60,
                  width: 350,
                  listItem: const ["a", "b"],
                  reference: itemId,
                  onChanged: (() {
                    setState(() {});
                  })),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DropdownSearchButton(
                      buttonName: "Định mức",
                      height: 60,
                      width: 160,
                      listItem: const ["a", "b"],
                      reference: itemId,
                      onChanged: (() {
                        setState(() {});
                      })),
                  DropdownSearchButton(
                      buttonName: "Tổng lượng",
                      height: 60,
                      width: 160,
                      listItem: const ["a", "b"],
                      reference: itemId,
                      onChanged: (() {
                        setState(() {});
                      })),
                ],
              ),
              DropdownSearchButton(
                  buttonName: "Đơn vị tính",
                  height: 60,
                  width: 350,
                  listItem: const ["a", "b"],
                  reference: itemId,
                  onChanged: (() {
                    setState(() {});
                  })),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                        vertical: 5 * SizeConfig.ratioHeight),
                    width: 160 * SizeConfig.ratioWidth,
                    height: 60 * SizeConfig.ratioHeight,
                    // padding: EdgeInsets.symmetric(
                    //     vertical: 5 * SizeConfig.ratioHeight),
                    decoration: BoxDecoration(
                        color: Constants.buttonColor,
                        border:
                            Border.all(width: 1, color: Constants.buttonColor),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5))),
                    child: CustomizeDatePicker(
                      name: "NSX",
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
                    // padding: EdgeInsets.symmetric(
                    //     vertical: 5 * SizeConfig.ratioHeight),
                    decoration: BoxDecoration(
                        color: Constants.buttonColor,
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5))),
                    child: CustomizeDatePicker(
                      name: "HSD",
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
              Row(children: [
                Text(
                  overflow: TextOverflow.ellipsis,
                  "Đối với thành phẩm",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20 * SizeConfig.ratioFont,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                      child: Divider(
                        color: Colors.black,
                        height: 36,
                      )),
                ),
              ]),
              Container(
                width: 350 * SizeConfig.ratioWidth,
                height: 60 * SizeConfig.ratioHeight,
                margin:
                    EdgeInsets.symmetric(vertical: 5 * SizeConfig.ratioHeight),
                decoration: BoxDecoration(
                    color: Constants.buttonColor,
                    border: Border.all(width: 1, color: Constants.buttonColor),
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
                child: const TextField(
                  enabled: true,
                  //readOnly: true,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    enabled: true,
                    // contentPadding: EdgeInsets.all(12.0),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    // Border Label TextBox 1
                    labelText: "Số PO",
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    hintText: "Nhập số PO",

                    hintMaxLines: 2,
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Constants.buttonColor),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    //focusedBorder: kFocusedBorder,
                  ),
                ),
              ),
              CustomizedButton(
                  text: "Xác nhận",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateNewReceiptScreen()),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
