import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/goods_issue.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item_lot.dart';

abstract class GoodsIssueLotEvent extends Equatable {}

class LoadGoodsIssueLotCompletedEvent extends GoodsIssueLotEvent {
  DateTime timestamp;
  LoadGoodsIssueLotCompletedEvent(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

class UpdateGoodsIssueLotEvent extends GoodsIssueLotEvent {
  DateTime timestamp;
  UpdateGoodsIssueLotEvent(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

