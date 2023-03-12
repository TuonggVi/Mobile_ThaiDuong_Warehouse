import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/goods_issue.dart';


abstract class ListEntryGoodsIssueEvent extends Equatable {}
class LoadListEntryGoodsIssueSuccess extends Equatable {
  DateTime timestamp;
  List<GoodsIssueEntry> entries;
  LoadListEntryGoodsIssueSuccess(this.timestamp, this.entries);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp, entries];

}
class LoadingListEntryGoodsIssue extends Equatable {
  DateTime timestamp;
  LoadingListEntryGoodsIssue(this.timestamp);
  
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];

}
class LoadListEntryGoodsIssueFail extends Equatable {
  ErrorPackage status;
  DateTime timestamp;
  LoadListEntryGoodsIssueFail(this.status, this.timestamp);
  @override
  List<Object?> get props => [timestamp];
}

