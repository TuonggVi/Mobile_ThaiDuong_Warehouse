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
class  SearchExpirationWarningEvent extends WarningEvent {
  DateTime timestamp;
  SearchExpirationWarningEvent(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}
// hiển thị danh sách sản phẩm theo hạn sử dụng còn lại 
class  ExpirationWarningEvent extends WarningEvent {
  DateTime timestamp;
  DateTime ExpirationDate;
  ExpirationWarningEvent(this.timestamp, this.ExpirationDate);
  @override
  List<Object> get props => [timestamp, ExpirationDate];
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
class  SearchMinimumStockWarningEvent extends WarningEvent {
  DateTime timestamp;
  SearchMinimumStockWarningEvent(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}
// hiển thị danh sách sản phẩm dưới số lượng tồn kho tối thiểu
class MinimumStockWarningEvent extends WarningEvent {
  DateTime timestamp;
  String Department;
  MinimumStockWarningEvent(this.timestamp, this.Department);
  @override
  List<Object> get props => [timestamp, Department];
}