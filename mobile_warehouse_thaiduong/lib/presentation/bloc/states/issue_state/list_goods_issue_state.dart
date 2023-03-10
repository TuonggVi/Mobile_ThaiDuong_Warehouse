import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item_lot.dart';

abstract class ListGoodsIssueEvent extends Equatable {}

class ListGoodsIssueLoadingState extends Equatable {
  DateTime timestamp;
  ListGoodsIssueLoadingState(this.timestamp);
  
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];

}

