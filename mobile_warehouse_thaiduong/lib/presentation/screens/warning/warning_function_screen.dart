import 'package:flutter/material.dart';
import 'package:mobile_warehouse_thaiduong/constant.dart';
import 'package:mobile_warehouse_thaiduong/function.dart';
import 'package:mobile_warehouse_thaiduong/presentation/screens/warning/warning_expired_screen.dart';
import 'package:mobile_warehouse_thaiduong/presentation/screens/warning/warning_under_stockmin.dart';
import 'package:mobile_warehouse_thaiduong/presentation/widgets/button_widget.dart';

class WarningFunctionScreen extends StatelessWidget {
  const WarningFunctionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.mainColor,
        title: Text(
          'Cảnh báo',
          style: TextStyle(fontSize: 22 * SizeConfig.ratioFont),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconCustomizedButton(
              icon: Icons.alarm_off_outlined,
              text: "CẢNH BÁO HẠN SỬ DỤNG",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WarningExpiredScreen()),
                );
              }),
          IconCustomizedButton(
              icon: Icons.production_quantity_limits_rounded,
              text: "CẢNH BÁO STOCKMIN",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WarningUnderStockminScreen()),
                );
              }),
        ],
      )),
    );
  }
}
