import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/goods_issue.dart';


abstract class CompletedGoodsIssueLotState extends Equatable {}
// hiển thị đơn đã hoàn thành
class LoadCompletedGoodsIssueLotSuccess extends CompletedGoodsIssueLotState {
  DateTime timestamp;
  List<GoodsIssueLot> Lots;
  LoadCompletedGoodsIssueLotSuccess(this.timestamp, this.Lots);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp, Lots];
}
class LoadingCompletedGoodsIssueLot extends CompletedGoodsIssueLotState {
  DateTime timestamp;
  LoadingCompletedGoodsIssueLot(this.timestamp);
  @override

  List<Object?> get props => [timestamp];
}
class LoadCompletedGoodsIssueLotFail extends CompletedGoodsIssueLotState {
  ErrorPackage status;
  DateTime timestamp;
  LoadCompletedGoodsIssueLotFail(this.status, this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
// update
class UpdateGoodsIssueLotSuccess extends CompletedGoodsIssueLotState {
  DateTime timestamp;
  UpdateGoodsIssueLotSuccess(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
class UpdateGoodsIssueLotLoading extends CompletedGoodsIssueLotState {
  DateTime timestamp;
  UpdateGoodsIssueLotLoading(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
class UpdateGoodsIssueLotFail extends CompletedGoodsIssueLotState {
  ErrorPackage status;
  DateTime timestamp;
  UpdateGoodsIssueLotFail(this.status, this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}