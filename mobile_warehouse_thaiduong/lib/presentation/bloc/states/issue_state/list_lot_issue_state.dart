import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/goods_issue.dart';

abstract class ListGoodsIssueLotState extends Equatable {}

//----------
class LoadGoodsIssueLotSuggestSuccess extends ListGoodsIssueLotState {
  DateTime timestamp;
  List<GoodsIssueLot> lots;
  LoadGoodsIssueLotSuggestSuccess(this.timestamp, this.lots);
  @override
 
  List<Object?> get props => [timestamp, lots];
}
class LoadingLoadGoodsIssueLotSuggest extends ListGoodsIssueLotState {
  DateTime timestamp;
  LoadingLoadGoodsIssueLotSuggest(this.timestamp);
  @override

  List<Object?> get props => [timestamp];
}
class LoadGoodsIssueLotSuggestFail extends ListGoodsIssueLotState {
DateTime timestamp;
  ErrorPackage status;
  LoadGoodsIssueLotSuggestFail(this.timestamp, this.status);
  @override

  List<Object?> get props => [timestamp];
}
//--------
class AddIsolationLoadingState extends ListGoodsIssueLotState {
  DateTime timestamp;
  AddIsolationLoadingState(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}

class AddIsolationSuccessState extends ListGoodsIssueLotState {
  DateTime timestamp;
  AddIsolationSuccessState(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}

//--------
class PostGoodsIssueLotSuccess extends ListGoodsIssueLotState {
  DateTime timestamp;
  PostGoodsIssueLotSuccess(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
class PostGoodsIssueLotLoading extends ListGoodsIssueLotState {
  DateTime timestamp;
  PostGoodsIssueLotLoading(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
class PostGoodsIssueLotFail extends ListGoodsIssueLotState {
  DateTime timestamp;
  ErrorPackage status;
  PostGoodsIssueLotFail(this.timestamp, this.status);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}