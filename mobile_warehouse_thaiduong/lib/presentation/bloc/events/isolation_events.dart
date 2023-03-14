import 'package:equatable/equatable.dart';

abstract class InventoryEvent extends Equatable {}
// Lấy thông tin lô hàng
class GetAllItemEvent extends InventoryEvent {
  DateTime timestamp;
  GetAllItemEvent(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}
// Chọn lô để cách ly
class GetLotByItemIdEvent extends InventoryEvent {
 DateTime timestamp;
 String item;
  GetLotByItemIdEvent(this.timestamp, this.item);
  @override
  List<Object> get props => [timestamp];
}
// Thêm hàng cách ly: điền số lượng cách ly + note
class PostNewIsolationEvent extends InventoryEvent {
  DateTime timestamp;
  String lotId;
  String notes;
  double isolationQuantity;
  PostNewIsolationEvent(this.timestamp, this.lotId, this.notes, this.isolationQuantity);
  @override
  List<Object> get props => [timestamp, notes, isolationQuantity];
}

// Xác nhận cách ly hàng hóa
class ConfirmIsolationEvent extends InventoryEvent {
  DateTime timestamp;
  String lotId;
  ConfirmIsolationEvent(
    this.timestamp,
    this.lotId
  );
  @override
  List<Object> get props => [timestamp];
}

// Danh sách hàng hóa đang chờ xử lý
class GetAllIsolationLotEvent extends InventoryEvent {
  DateTime timestamp;
  GetAllIsolationLotEvent(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}
