import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/goods_issue.dart';

abstract class ListGoodsIssueEvent extends Equatable {}
//--------
class LoadGoodsIssuesSuccess extends ListGoodsIssueEvent {
  DateTime timestamp;
 List<GoodsIssueLot> Lots;
  LoadGoodsIssuesSuccess(this.timestamp, this.Lots);
  @override

  List<Object?> get props => [timestamp, Lots];
}
class LoadingGoodsIssues extends ListGoodsIssueEvent {
  DateTime timestamp;
  LoadingGoodsIssues(this.timestamp);
  @override

  List<Object?> get props => [timestamp];
}
class LoadGoodsIssuesFail extends ListGoodsIssueEvent {
DateTime timestamp;
  ErrorPackage status;
  LoadGoodsIssuesFail(this.timestamp, this.status);
  @override

  List<Object?> get props => [timestamp];
}
