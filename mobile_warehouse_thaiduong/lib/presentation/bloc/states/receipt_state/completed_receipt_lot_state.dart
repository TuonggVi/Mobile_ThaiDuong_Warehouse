import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item_lot.dart';

abstract class CompletedReceiptLotState extends Equatable {}

class CompletedReceiptLoadingState extends Equatable {
  DateTime timestamp;
  CompletedReceiptLoadingState(this.timestamp);
  
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];

}
// c
class LoadShelfIdsSuccessState extends CompletedReceiptLotState {
  List<String> shelfIds;
  DateTime timestamp;
  LoadShelfIdsSuccessState(this.shelfIds, this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

class UpdateReceiptLotSuccessState extends CompletedReceiptLotState {
  ItemLot itemLot;
  DateTime timestamp;
  UpdateReceiptLotSuccessState(this.itemLot, this.timestamp);

  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}


class ConfirmReceiptLotChangedSuccessState extends CompletedReceiptLotState {
  ErrorPackage status;
  DateTime timestamp;
  ConfirmReceiptLotChangedSuccessState(this.status, this.timestamp);

  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

class ConfirmReceiptLotChangedFailState extends CompletedReceiptLotState {
  ErrorPackage status;
  DateTime timestamp;
  ConfirmReceiptLotChangedFailState(this.status, this.timestamp);

  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}