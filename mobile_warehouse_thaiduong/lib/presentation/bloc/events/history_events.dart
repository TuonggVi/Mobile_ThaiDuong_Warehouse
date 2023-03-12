import 'package:equatable/equatable.dart';

abstract class AccessHistoryEvent extends Equatable {}

// Truy xuất lịch sử theo thông tin
class AccessItemHistoryEvent extends AccessHistoryEvent {
  DateTime timestamp;
  String ItemId;
  String PurchaseOrderNumber;
  DateTime startdate;
  DateTime enddate;
  AccessItemHistoryEvent(this.timestamp, this.ItemId, this.PurchaseOrderNumber,
      this.startdate, this.enddate);
  @override
  List<Object> get props =>
      [timestamp, ItemId, PurchaseOrderNumber, startdate, enddate];
}
