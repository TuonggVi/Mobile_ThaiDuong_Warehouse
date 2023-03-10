import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item_lot.dart';

abstract class ListEntryGoodsIssueEvent extends Equatable {}

class ListEntryGoodsIssueLoadingState extends Equatable {
  DateTime timestamp;
  ListEntryGoodsIssueLoadingState(this.timestamp);
  
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];

}

