import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';

import '../../../../domain/entities/item.dart';

class CreateReceiptState extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class ReceiptLoadingState extends CreateReceiptState {
  DateTime timestamp;
  ReceiptLoadingState(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
//-----------

class LoadItemDataSuccessState extends CreateReceiptState {
  List<Item> items;
 
  DateTime timestamp;
  @override
  LoadItemDataSuccessState(this.items, this.timestamp);
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

class LoadItemDataLoadingState extends CreateReceiptState {
  DateTime timestamp;
  LoadItemDataLoadingState(this.timestamp);

  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

class LoadItemDataFailState extends CreateReceiptState {
  DateTime timestamp;
  LoadItemDataFailState(this.timestamp);

  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

//--------
class AddLotToGoodsReceiptStateSuccess extends CreateReceiptState {
  DateTime timestamp;
  AddLotToGoodsReceiptStateSuccess(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

class AddLotToGoodsReceiptStateLoading extends CreateReceiptState {
  DateTime timestamp;
  AddLotToGoodsReceiptStateLoading(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

//----------------
class PostReceiptStateSuccess extends CreateReceiptState {
  ErrorPackage statusRequest;
  DateTime timestamp;
  PostReceiptStateSuccess(this.timestamp, this.statusRequest);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

class PostReceiptStateLoadingState extends CreateReceiptState {
  DateTime timestamp;
  PostReceiptStateLoadingState(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

class PostReceiptStateFailure extends CreateReceiptState {
  String error;
  DateTime timestamp;
  PostReceiptStateFailure(this.error, this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

//-------------------
class UpdateLotReceiptStateSuccess extends CreateReceiptState {
  DateTime timestamp;
  UpdateLotReceiptStateSuccess(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

class UpdateLotReceiptStateLoading extends CreateReceiptState {
  DateTime timestamp;
  UpdateLotReceiptStateLoading(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}