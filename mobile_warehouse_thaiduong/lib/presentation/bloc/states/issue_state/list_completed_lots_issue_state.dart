import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item_lot.dart';

abstract class CompletedGoodsIssueLotState extends Equatable {}

class CompletedGoodsIssueLotLoadingState extends Equatable {
  DateTime timestamp;
  CompletedGoodsIssueLotLoadingState(this.timestamp);
  
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];

}

//-----------------

class UpdateGoodsIssueLotSuccessState extends CompletedGoodsIssueLotState {
  DateTime timestamp;
  UpdateGoodsIssueLotSuccessState(this.timestamp);

  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

class ConfirmGoodsIssueLotChangedSuccessState extends CompletedGoodsIssueLotState {
  ErrorPackage status;
  DateTime timestamp;
  ConfirmGoodsIssueLotChangedSuccessState(this.status, this.timestamp);

  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

class ConfirmGoodsIssueLotChangedFailState extends CompletedGoodsIssueLotState {
  ErrorPackage status;
  DateTime timestamp;
  ConfirmGoodsIssueLotChangedFailState(this.status, this.timestamp);

  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}