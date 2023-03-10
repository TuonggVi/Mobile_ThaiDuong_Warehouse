import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item_lot.dart';

abstract class CompletedGoodsIssueEvent extends Equatable {}

class CompletedGoodsIssueLoadingState extends Equatable {
  DateTime timestamp;
  CompletedGoodsIssueLoadingState(this.timestamp);
  
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];

}

