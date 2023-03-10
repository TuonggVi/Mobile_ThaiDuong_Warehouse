import 'package:equatable/equatable.dart';

abstract class FillInfoIssueEntryEvent extends Equatable {}

class LoadItemsEvent extends FillInfoIssueEntryEvent {
  DateTime timestamp;
  LoadItemsEvent(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
