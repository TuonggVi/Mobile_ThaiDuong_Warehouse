import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/goods_receipt.dart';

class ReceiptExportedState extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class LoadReceiptExportedStateFail extends ReceiptExportedState {
  DateTime timestamp;
  String detail;
  LoadReceiptExportedStateFail(this.timestamp, this.detail);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

class LoadReceiptExportedStateSuccess extends ReceiptExportedState {
  DateTime timestamp;
  List<GoodsReceipt> receipts;
  LoadReceiptExportedStateSuccess(this.timestamp, this.receipts);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

class UpdateLotReceiptStateSuccess extends ReceiptExportedState {
  DateTime timestamp;
  UpdateLotReceiptStateSuccess(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

class UpdateLotReceiptStateFail extends ReceiptExportedState {
  DateTime timestamp;
  String detail;
  UpdateLotReceiptStateFail(this.timestamp, this.detail);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
