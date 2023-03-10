
import 'package:equatable/equatable.dart';

import '../../../../domain/entities/goods_receipt.dart';
import '../../../../domain/entities/item_lot.dart';

class CreateReceiptEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}


class AddLotToGoodsReceiptEvent extends CreateReceiptEvent {
  ItemLot itemLot;
  AddLotToGoodsReceiptEvent(this.itemLot);
   @override
  List<Object> get props => [itemLot];
}

class PostNewReceiptEvent extends CreateReceiptEvent {
  DateTime timestamp;
  List<GoodsReceiptLot> lots;
  String receiptId;
  PostNewReceiptEvent(this.lots, this.timestamp, this.receiptId);
  @override
  List<Object> get props => [timestamp];
}
