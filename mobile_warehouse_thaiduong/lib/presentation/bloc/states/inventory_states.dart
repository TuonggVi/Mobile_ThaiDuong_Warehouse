import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item_lot.dart';

abstract class InventoryState extends Equatable {}
// hiển thị list hạn sử dụng còn lại
class ExpirationLoadingState extends InventoryState {
  DateTime timestamp;
  ExpirationLoadingState(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
class LoadExpirationSuccessState extends InventoryState {
  DateTime timestamp;
  List <DateTime> ExpirationDate;
  LoadExpirationSuccessState(this.timestamp, this.ExpirationDate);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

// hiển thị danh sách đã lọc
class LoadInventorySuccessState extends InventoryState {
  DateTime timestamp;
  List<ItemLot> itemLots;
  LoadInventorySuccessState(this.timestamp, this.itemLots);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

class LoadInventoryFailState extends InventoryState {
  DateTime timestamp;
  ErrorPackage status;
  LoadInventoryFailState(this.timestamp, this.status);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp, status];
}

class LoadInventoryLoadingState extends InventoryState {
  DateTime timestamp;
  ErrorPackage status;
  LoadInventoryLoadingState(this.timestamp, this.status);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp, status];
}
