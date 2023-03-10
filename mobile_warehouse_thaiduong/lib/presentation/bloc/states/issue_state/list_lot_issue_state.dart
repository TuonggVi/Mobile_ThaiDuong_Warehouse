import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item_lot.dart';

abstract class ListGoodsIssueLotState extends Equatable {}

class ListGoodsIssueLotLoadingState extends Equatable {
  DateTime timestamp;
  ListGoodsIssueLotLoadingState(this.timestamp);
  
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];

}

//--------
class AddGoodsIssueLotStateSuccess extends ListGoodsIssueLotState {
  DateTime timestamp;
  AddGoodsIssueLotStateSuccess(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

class PostGoodsIssueLotStateSuccess extends ListGoodsIssueLotState {
  ErrorPackage statusRequest;
  DateTime timestamp;
  PostGoodsIssueLotStateSuccess(this.timestamp, this.statusRequest);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

class PostGoodsIssueLotStateFailure extends ListGoodsIssueLotState {
  String error;
  DateTime timestamp;
  PostGoodsIssueLotStateFailure(this.error, this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

//-------------------
class UpdateGoodsIssueLotReceiptStateSuccess extends ListGoodsIssueLotState {
  DateTime timestamp;
  UpdateGoodsIssueLotReceiptStateSuccess(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

class UpdateGoodsIssueLotReceiptStateFailure extends ListGoodsIssueLotState {
  DateTime timestamp;
  UpdateGoodsIssueLotReceiptStateFailure(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}