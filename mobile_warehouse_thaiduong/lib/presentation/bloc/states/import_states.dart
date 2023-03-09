import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/goods_receipt.dart';
import '../../../domain/entities/error_package.dart';

abstract class ReceiptState extends Equatable {}

class ReceiptInitialState extends ReceiptState {
  @override
  List<Object> get props => [];
}
//-------------------


class CreateReceiptState extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}
class ReceiptLoadingState extends ReceiptState {
  DateTime timestamp;
  ReceiptLoadingState(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

//--------
class AddLotStateSuccess extends ReceiptState {
  DateTime timestamp;
  AddLotStateSuccess(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

class PostReceiptStateSuccess extends ReceiptState {
  ErrorPackage statusRequest;
  DateTime timestamp;
  PostReceiptStateSuccess(this.timestamp, this.statusRequest);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

class PostReceiptStateFailure extends ReceiptState {
  String error;
  DateTime timestamp;
  PostReceiptStateFailure(this.error, this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

//-------------------
class UpdateLotReceiptStateSuccess extends ReceiptState {
  DateTime timestamp;
  UpdateLotReceiptStateSuccess(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

class UpdateLotReceiptStateFailure extends ReceiptState {
  DateTime timestamp;
  UpdateLotReceiptStateFailure(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
//----------------

class LoadUncompletedGoodsReceiptSuccess extends ReceiptState {
  DateTime timestamp;
  List<GoodsReceipt> receipts;
  LoadUncompletedGoodsReceiptSuccess(this.receipts, this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

//----------
class LoadReceiptExportingStateFail extends ReceiptState {
  DateTime timestamp;
  LoadReceiptExportingStateFail(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

class LoadReceiptExportingStateSuccess extends ReceiptState {
  DateTime timestamp;
  List<GoodsReceipt> receipts;
  LoadReceiptExportingStateSuccess(this.timestamp, this.receipts);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
//----------------

class LoadAllShelfSuccess extends ReceiptState {
  DateTime timestamp;
  List<String> shelfIds;
  LoadAllShelfSuccess(this.shelfIds, this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
