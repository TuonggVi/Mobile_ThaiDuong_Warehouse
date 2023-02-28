import 'package:flutter/material.dart';
import 'package:mobile_warehouse_thaiduong/constant.dart';
import 'package:mobile_warehouse_thaiduong/function.dart';
import 'package:mobile_warehouse_thaiduong/presentation/screens/import/fill_info_lot_screen.dart';
import 'package:mobile_warehouse_thaiduong/presentation/widgets/button_widget.dart';
import 'package:mobile_warehouse_thaiduong/presentation/widgets/exception_widget.dart';
import 'package:mobile_warehouse_thaiduong/presentation/widgets/text_input_widget.dart';

class CreateNewReceiptScreen extends StatefulWidget {
  const CreateNewReceiptScreen({super.key});

  @override
  State<CreateNewReceiptScreen> createState() => _CreateNewReceiptScreenState();
}

class _CreateNewReceiptScreenState extends State<CreateNewReceiptScreen> {
  TextEditingController controller = TextEditingController();
  String receiptId = '';
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        
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
            TextInput(contentTextField: receiptId)
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
       
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            onChanged: ((value) {}),
            controller: controller,
            decoration: const InputDecoration(
                labelText: "Search",
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)))),
          ),
        ),
        ExceptionErrorState(title: "Chưa có lô hàng được nhập",message: "Chọn Tiếp tục để nhập kho",),
        CustomizedButton(text: "Tiếp tục", onPressed: (){
            Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FillInfoLotReceiptScreen()),
                      );
        })
      ]),
    );
  }
//   onSearchTextChanged(String text) async {
//     _searchResult.clear();
//     if (text.isEmpty) {
//       setState(() {});
//       return;
//     }

//     goodsReceiptEntryConainerDataTemp.forEach((userDetail)
//     {
//       if (userDetail.itemId.contains(text)) _searchResult.add(userDetail);
//     });

//     setState(() {});
//   }

//  // List<GoodsReceiptEntryContainerData> _searchResult = [];
}
