import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item_lot.dart';

abstract class InventoryState extends Equatable {}
// List kho hàng
class GetWarehouseIdSuccessState extends InventoryState {
  DateTime timestamp;
  List<String> warehouseId;
  GetWarehouseIdSuccessState(this.timestamp, this.warehouseId);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
class GetWarehouseIdLoadingState extends InventoryState {
  DateTime timestamp;
  GetWarehouseIdLoadingState(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
class GetWarehouseIdFailState extends InventoryState {
  DateTime timestamp;
  GetWarehouseIdFailState(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
// Lọc sp theo kho hàng
class GetAllItemIdByWarehouseSuccessState extends InventoryState {
  DateTime timestamp;
  List<String> itemId;
  GetAllItemIdByWarehouseSuccessState(this.timestamp, this.itemId);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
class GetAllItemIdByWarehouseLoadingState extends InventoryState {
  DateTime timestamp;
  GetAllItemIdByWarehouseLoadingState(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
class GetAllItemIdByWarehouseFailState extends InventoryState {
  DateTime timestamp;
  GetAllItemIdByWarehouseFailState(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
// Truy xuất theo thông tin tìm kiếm
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
  LoadInventoryFailState(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

class LoadInventoryLoadingState extends InventoryState {
  DateTime timestamp;
  // ErrorPackage status;
  LoadInventoryLoadingState(this.timestamp, 
  // this.status
  );
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp, 
  // status
  ];
}
