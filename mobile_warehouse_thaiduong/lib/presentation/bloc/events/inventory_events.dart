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
// nhập thông tin tìm hàng tồn kho
class SearchInventoryEvent extends InventoryEvent {
  DateTime timestamp;
  String ItemId;
  String ItemName;
  DateTime startdate;
  DateTime enddate;
  DateTime ExpirationDate;
  // hạn sử dụng còn lại 
  SearchInventoryEvent(
    this.timestamp,
    this.ItemId,
    this.ItemName, 
    this.startdate, 
    this.enddate,
    this.ExpirationDate);
  @override
  List<Object> get props => [timestamp];
}

class LoadInventoryEvent extends InventoryEvent {
  DateTime timestamp;
  String ItemId;

  LoadInventoryEvent(
    this.timestamp,
    this.ItemId   
    );
  @override
  List<Object> get props => [timestamp];
}