import 'package:equatable/equatable.dart';

abstract class AccessHistoryEvent extends Equatable {}
// Nhập thông tin để truy xuất lịch sử
class AccessItemHistoryEvent extends AccessHistoryEvent {
  DateTime timestamp;
  String ItemId;
  String PurchaseOrderNumber;
  DateTime startdate;
  DateTime enddate;
  AccessItemHistoryEvent(this.timestamp, this.ItemId, this.PurchaseOrderNumber,
      this.startdate, this.enddate);
  @override
  List<Object> get props => [timestamp, ItemId, PurchaseOrderNumber];
}
// Hiển thị lịch sử truy xuất
class LoadHistoryEvent extends AccessHistoryEvent {
  DateTime timestamp;
 String itemId;

  LoadHistoryEvent(this.timestamp, this.itemId);
  @override
  List<Object> get props =>
      [timestamp];
}
