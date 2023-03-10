import 'package:equatable/equatable.dart';

abstract class InventoryEvent extends Equatable {}

// điền thông tin để lọc lô
class FillInfoIsolationEvent extends InventoryEvent {
  DateTime timestamp;
  String ItemId;
  String ItemName;

  FillInfoIsolationEvent(
    this.timestamp,
    this.ItemId,
    this.ItemName,
  );
  @override
  List<Object> get props => [timestamp];
}

// Hiển thị lô đã lọc
class LoadIsolationEvent extends InventoryEvent {
  DateTime timestamp;
  String ItemId;


  LoadIsolationEvent(
    this.timestamp,
    this.ItemId,
 
  );
  @override
  List<Object> get props => [timestamp];
}
// Thêm hàng cách ly bằng cách điền số lượng + note

class AddIsolationEvent extends InventoryEvent {
  DateTime timestamp;
  String Notes;
  double IsolationQuantity;
  AddIsolationEvent(this.timestamp, this.Notes, this.IsolationQuantity);
  @override
  List<Object> get props => [timestamp];
}

// Xác nhận cách ly hàng hóa
class ConfirmIsolationEvent extends InventoryEvent {
  DateTime timestamp;
  String LotId;
  ConfirmIsolationEvent(
    this.timestamp, this.LotId
  );
  @override
  List<Object> get props => [timestamp];
}

// Update danh sách hàng hóa cách ly
class UpdateIsolationEvent extends InventoryEvent {
  DateTime timestamp;
  UpdateIsolationEvent(
    this.timestamp,
  );
  @override
  List<Object> get props => [timestamp];
}
