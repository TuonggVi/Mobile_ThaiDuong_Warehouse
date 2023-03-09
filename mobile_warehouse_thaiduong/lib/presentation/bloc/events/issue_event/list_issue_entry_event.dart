import 'package:equatable/equatable.dart';

abstract class GoodsIssueEntryEvent extends Equatable {}

class LoadGoodsIssueEntryEvent extends GoodsIssueEntryEvent {
  DateTime timestamp;
  LoadGoodsIssueEntryEvent(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
