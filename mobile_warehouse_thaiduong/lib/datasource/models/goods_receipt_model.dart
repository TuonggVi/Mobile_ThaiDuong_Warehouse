import 'package:mobile_warehouse_thaiduong/datasource/models/employee_model.dart';
import 'package:mobile_warehouse_thaiduong/datasource/models/item_model.dart';
import 'package:mobile_warehouse_thaiduong/datasource/models/location_model.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/goods_receipt.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item_lot.dart';

class GoodsReceiptLotModel extends GoodsReceiptLot {
  GoodsReceiptLotModel(
      super.goodsReceiptLotId,
      super.item,
      super.quantity,
      super.sublotSize,
      super.purchaseOrderNumber,
      super.employee,
      super.location,
      super.productionDate,
      super.expirationDate);
  factory GoodsReceiptLotModel.fromJson(Map<String, dynamic> json) {
    return GoodsReceiptLotModel(
      json['goodsReceiptLotId'],
      json['itemId'],
      //= ItemModel.fromJson(json["item"]),
      json['quantity'],
      json['sublotSize'],
      json['purchaseOrderNumber'],
      json['employeeId'],
      // json['location'] = Location('', <ItemLot>[]),
      // json['employee'] == null
      //     ? EmployeeModel("", "")
      //     : EmployeeModel.fromJson(json["employee"]),
      json['location'] == null
          ? LocationModel('', <ItemLot>[])
          : LocationModel.fromJson(json["location"]),
      json['productionDate'],
      json['expirationDate'],
    );
  }
}

class GoodsReceiptModel extends GoodsReceipt {
  GoodsReceiptModel(super.goodsReceiptId, super.purchaseOrderNumber, super.lots,
      super.timestamp, super.isConfirmed);
  factory GoodsReceiptModel.fromJson(Map<String, dynamic> json) {
    return GoodsReceiptModel(
      json['goodsReceiptId'],
      json['purchaseOrderNumber'],
      json['lots'] == null
          ? []
          : (json["lots"] as List)
              .map((e) => GoodsReceiptLotModel.fromJson(e))
              .toList(),
      json['timestamp'],
      json['isCompleted'],
    );
  }
}
