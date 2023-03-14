import 'package:equatable/equatable.dart';

abstract class InventoryEvent extends Equatable {}
// chọn kho hàng 
class GetWarehouseIdEvent extends InventoryEvent {
  DateTime timestamp;
  GetWarehouseIdEvent(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
// lấy mã sp
class GetAllItemByWarehouseIdEvent extends InventoryEvent {
  DateTime timestamp;
  GetAllItemByWarehouseIdEvent(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
// Hiển thị hàng tồn kho theo thông tin tìm kiếm
class LoadInventoryEvent extends InventoryEvent {
  DateTime timestamp;
  String itemId;
  DateTime startdate;
  DateTime enddate;
  LoadInventoryEvent(
    this.timestamp,
    this.itemId,
    this.startdate, 
    this.enddate,
);
  @override
  List<Object> get props => [timestamp];
}

