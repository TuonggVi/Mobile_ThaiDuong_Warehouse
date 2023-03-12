import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/goods_issue.dart';


abstract class CompletedGoodsIssueEvent extends Equatable {}
class LoadCompletedGoodsIssuesState extends CompletedGoodsIssueEvent {
  DateTime timestamp;
  List<GoodsIssueLot> Lots;
  LoadCompletedGoodsIssuesState(
    this.timestamp, 
    this.Lots
    );
  @override
  List<Object?> get props => [timestamp, Lots];
}
class LoadingCompletedGoodsIssues extends CompletedGoodsIssueEvent {
  DateTime timestamp;
  LoadingCompletedGoodsIssues(this.timestamp);
  @override
  List<Object?> get props => [timestamp];
}
class LoadCompletedGoodsIssuesFail extends CompletedGoodsIssueEvent {
DateTime timestamp;
  ErrorPackage status;
  LoadCompletedGoodsIssuesFail(this.timestamp, this.status);
  @override
  List<Object?> get props => [timestamp];
}
