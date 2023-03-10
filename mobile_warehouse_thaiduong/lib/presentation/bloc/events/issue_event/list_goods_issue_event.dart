import 'package:equatable/equatable.dart';

abstract class GoodsIssueEvent extends Equatable {}

class LoadGoodsIssuesEvent extends GoodsIssueEvent {
  DateTime timestamp;
  LoadGoodsIssuesEvent(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
