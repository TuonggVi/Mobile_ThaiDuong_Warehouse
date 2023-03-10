import 'package:equatable/equatable.dart';

abstract class CompletedGoodsIssueEvent extends Equatable {}

class LoadCompletedGoodsIssuesEvent extends CompletedGoodsIssueEvent {
  DateTime timestamp;
  LoadCompletedGoodsIssuesEvent(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
