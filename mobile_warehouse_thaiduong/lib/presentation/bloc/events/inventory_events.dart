import 'package:equatable/equatable.dart';

abstract class InventoryEvent extends Equatable {}

// hiển thị list hạn sử dụng còn lại
class LoadExpirationEvent extends InventoryEvent {
  DateTime timestamp;
  LoadExpirationEvent(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
// Hiển thị hàng tồn kho theo thông tin tìm kiếm
class LoadInventoryEvent extends InventoryEvent {
  DateTime timestamp;
  String ItemId;
  String ItemName;
  DateTime startdate;
  DateTime enddate;
  DateTime ExpirationDate;
  // hạn sử dụng còn lại 
  LoadInventoryEvent(
    this.timestamp,
    this.ItemId,
    this.ItemName, 
    this.startdate, 
    this.enddate,
    this.ExpirationDate);
  @override
  List<Object> get props => [timestamp];
}

