import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item_lot.dart';

abstract class WarningState extends Equatable {}

// hiển thị list hạn sử dụng còn lại

class LoadExpirationLoadingState extends WarningState {
  DateTime timestamp;
  List<String> Expiration;
  LoadExpirationLoadingState(this.timestamp, this.Expiration);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

// tìm sản phẩm theo hạn sử dụng còn lại
class SearchExpirationWarningState extends WarningState {
  DateTime timestamp;
  ErrorPackage status;
  SearchExpirationWarningState(this.timestamp, this.status);
  @override
  List<Object> get props => [timestamp, status];
}

// hiển thị danh sách sản phẩm theo hạn sử dụng còn lại
class ExpirationWarningLoadingState extends WarningState {
  DateTime timestamp;
  ExpirationWarningLoadingState(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}

class ExpirationWarningSuccessState extends WarningState {
  DateTime timestamp;
  List<ItemLot> itemLots;
  ExpirationWarningSuccessState(this.timestamp, this.itemLots);
  @override
  List<Object> get props => [timestamp, itemLots];
}

class ExpirationWarningFailState extends WarningState {
  DateTime timestamp;
  ErrorPackage status;
  ExpirationWarningFailState(this.timestamp, this.status);
  @override
  List<Object> get props => [timestamp, status];
}

// hiển thị list kho hàng
class LoadWarehouseState extends WarningState {
  DateTime timestamp;
  List <String> Warehouse;
  LoadWarehouseState(this.timestamp, this.Warehouse);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
// tìm sản phẩm theo kho hàng

class SearchMinimumStockWarningState extends WarningState {
  DateTime timestamp;
  ErrorPackage status;
  SearchMinimumStockWarningState(this.timestamp, this.status);
  @override
  List<Object> get props => [timestamp, status];
}

// hiển thị danh sách sản phẩm dưới số lượng tồn kho tối thiểu

class MinimumStockWarningLoadingState extends WarningState {
  DateTime timestamp;
  MinimumStockWarningLoadingState(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}

class MinimumStockWarningSuccessState extends WarningState {
  DateTime timestamp;
  List<ItemLot> itemLots;
  MinimumStockWarningSuccessState(this.timestamp, this.itemLots);
  @override
  List<Object> get props => [timestamp, itemLots];
}

class MinimumStockWarningFailState extends WarningState {
  DateTime timestamp;
  ErrorPackage status;
  MinimumStockWarningFailState(this.timestamp, this.status);
  @override
  List<Object> get props => [timestamp, status];
}
