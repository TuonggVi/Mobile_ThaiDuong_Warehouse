import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/employee.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/location.dart';

class GoodsReceiptLot extends Equatable {
  String? goodsReceiptLotId;
  Item? item;
  double? quantity;
  double? sublotSize;
  String? purchaseOrderNumber;
  Employee? employee;
  Location? location;
  DateTime? productionDate;
  DateTime? expirationDate;
  GoodsReceiptLot(
      this.goodsReceiptLotId,
      this.item,
      this.quantity,
      this.sublotSize,
      this.purchaseOrderNumber,
      this.employee,
      this.location,
      this.productionDate,
      this.expirationDate);
  @override
  // TODO: implement props
  List<Object?> get props => [goodsReceiptLotId];
}

class GoodsReceipt extends Equatable {
  String goodsReceiptId;
  String? purchaseOrderNumber;
  List<GoodsReceiptLot>? lots;
  DateTime timestamp;
  bool isConfirmed;
  GoodsReceipt(this.goodsReceiptId, this.purchaseOrderNumber, this.lots,
      this.timestamp, this.isConfirmed);
  @override
  // TODO: implement props
  List<Object?> get props => [goodsReceiptId];
}
