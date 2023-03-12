import 'package:equatable/equatable.dart';

abstract class WarningEvent extends Equatable {}

// hiển thị list hạn sử dụng còn lại
class LoadExpirationEvent extends WarningEvent {
  DateTime timestamp;
  LoadExpirationEvent(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

// tìm sản phẩm theo hạn sử dụng còn lại
class SelectExpirationWarningEvent extends WarningEvent {
  DateTime timestamp;
  DateTime ExpirationDate;
  SelectExpirationWarningEvent(this.timestamp, this.ExpirationDate);
  @override
  List<Object> get props => [timestamp, ExpirationDate];
}

// hiển thị danh sách sản phẩm theo hạn sử dụng còn lại
class ExpirationWarningEvent extends WarningEvent {
  DateTime timestamp;
  DateTime ExpirationDate;
  ExpirationWarningEvent(this.timestamp, this.ExpirationDate);
  @override
  List<Object> get props => [timestamp];
}

// hiển thị list kho hàng
class LoadWarehouseEvent extends WarningEvent {
  DateTime timestamp;
  LoadWarehouseEvent(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

// tìm sản phẩm theo kho hàng
class SelectWarehouseEvent extends WarningEvent {
  DateTime timestamp;
  String Warehouse;
  SelectWarehouseEvent(this.timestamp, this.Warehouse);
  @override
  List<Object> get props => [timestamp, Warehouse];
}

// hiển thị danh sách sản phẩm dưới số lượng tồn kho tối thiểu
class MinimumStockWarningEvent extends WarningEvent {
  DateTime timestamp;
  String Warehouse;
  MinimumStockWarningEvent(this.timestamp, this.Warehouse);
  @override
  List<Object> get props => [timestamp];
}
