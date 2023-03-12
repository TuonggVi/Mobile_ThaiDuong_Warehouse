import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item_lot.dart';

abstract class WarningState extends Equatable {}

// hiển thị list hạn sử dụng còn lại
class ExpirationLoadingState extends WarningState {
  DateTime timestamp;
  ExpirationLoadingState(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
class LoadExpirationSuccessState extends WarningState {
  DateTime timestamp;
  List <DateTime> ExpirationDate;
  LoadExpirationSuccessState(this.timestamp, this.ExpirationDate);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
// chọn hạn sử dụng còn lại 
class SelectExpirationWarningState extends WarningState {
  DateTime timestamp;
  DateTime ExpirationDate;
  SelectExpirationWarningState(this.timestamp, this.ExpirationDate);
  @override
  List<Object> get props => [timestamp, ExpirationDate];
}

// hiển thị danh sách sản phẩm theo hạn sử dụng còn lại
class ExpirationWarningSuccessState extends WarningState {
  DateTime timestamp;
  List <Item> item; 
  ExpirationWarningSuccessState(this.timestamp, this.item);
  @override
  List<Object> get props => [timestamp, item];
}
class ExpirationWarningLoadingState extends WarningState {
  DateTime timestamp;
  ErrorPackage status;
  ExpirationWarningLoadingState(this.timestamp, this.status);
  @override
  List<Object> get props => [timestamp, status];
}
class ExpirationWarningFailState extends WarningState {
  DateTime timestamp;
  ErrorPackage status;
  ExpirationWarningFailState(this.timestamp, this.status);
  @override
  List<Object> get props => [timestamp, status];
}
//---------------------
// hiển thị list kho hàng
class WarehouseLoadingState extends WarningState {
  DateTime timestamp;
  WarehouseLoadingState(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
class LoadWarehouseSuccessState extends WarningState {
  DateTime timestamp;
  List <String> Warehouse;
  LoadWarehouseSuccessState(this.timestamp, this.Warehouse);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
// chọn kho hàng
class SelectWarehouseState extends WarningState {
  DateTime timestamp;
  String Warehouse;
  SelectWarehouseState(this.timestamp, this.Warehouse);
  @override
  List<Object> get props => [timestamp, Warehouse];
}
// hiển thị danh sách sản phẩm dưới số lượng tồn kho tối thiểu
class MinimumStockWarningSuccessState extends WarningState {
  DateTime timestamp;
  List<Item> item;
  MinimumStockWarningSuccessState(this.timestamp, this.item);
  @override
  List<Object> get props => [timestamp];
}

class MinimumStockWarningFailState extends WarningState {
  DateTime timestamp;
  ErrorPackage status;
  MinimumStockWarningFailState(this.timestamp, this.status);
  @override
  List<Object> get props => [timestamp, status];
}
class MinimumStockWarningLoadingState extends WarningState {
  DateTime timestamp;
  MinimumStockWarningLoadingState(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}