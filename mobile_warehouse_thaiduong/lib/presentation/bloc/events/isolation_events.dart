import 'package:equatable/equatable.dart';

abstract class InventoryEvent extends Equatable {}

// Tìm kiếm theo mã sp + tên
class LoadIsolationEvent extends InventoryEvent {
  DateTime timestamp;
  String ItemId;
  String ItemName;
  LoadIsolationEvent(
    this.timestamp,
    this.ItemId,
    this.ItemName,
  );
  @override
  List<Object> get props => [timestamp];
}
// Thêm hàng cách ly: điền số lượng cách ly + note
class AddIsolationEvent extends InventoryEvent {
  DateTime timestamp;
  String Notes;
  double IsolationQuantity;
  AddIsolationEvent(this.timestamp, this.Notes, this.IsolationQuantity);
  @override
  List<Object> get props => [timestamp, Notes, IsolationQuantity];
}

// Xác nhận cách ly hàng hóa
class ConfirmIsolationEvent extends InventoryEvent {
  DateTime timestamp;
  ConfirmIsolationEvent(
    this.timestamp,
  );
  @override
  List<Object> get props => [timestamp];
}

// Update danh sách hàng hóa cách ly
class UpdateIsolationEvent extends InventoryEvent {
  DateTime timestamp;
  String Notes;
  double IsolationQuantity;
  UpdateIsolationEvent(this.timestamp, this.Notes, this.IsolationQuantity);
  @override
  List<Object> get props => [timestamp, Notes, IsolationQuantity];
}
