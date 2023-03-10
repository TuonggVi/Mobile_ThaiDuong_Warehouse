import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/location.dart';

class GoodsReceiptLot extends Equatable {
  String? goodsReceiptLotId;
  String? itemId;
  double? quantity;
  double? sublotSize;
  String? purchaseOrderNumber;
  String? employeeId;
  Location? location;
  DateTime? productionDate;
  DateTime? expirationDate;
  GoodsReceiptLot(
      this.goodsReceiptLotId,
      this.itemId,
      this.quantity,
      this.sublotSize,
      this.purchaseOrderNumber,
      this.employeeId,
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
