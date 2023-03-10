import 'package:equatable/equatable.dart';

class FillInfoLotReceiptEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}


class GetAllItemEvent extends FillInfoLotReceiptEvent {
  DateTime timestamp;
  GetAllItemEvent(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}

// class UpdateReceiptLotEvent extends FillInfoLotReceiptEvent {
//   String goodsReceiptLotId;
//   String itemId;
//   double quantity;
//   double? sublotSize;
//   String purchaseOrderNumber;
//   String? locationId;
//   DateTime? productionDate;
//   DateTime? expirationDate;
//   UpdateReceiptLotEvent(
//       this.goodsReceiptLotId,
//       this.itemId,
//       this.quantity,
//       this.sublotSize,
//       this.purchaseOrderNumber,
//       this.locationId,
//       this.productionDate,
//       this.expirationDate);
//   @override
//   List<Object> get props => [];
// }