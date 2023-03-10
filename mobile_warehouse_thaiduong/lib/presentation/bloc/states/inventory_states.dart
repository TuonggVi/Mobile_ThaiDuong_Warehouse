import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item_lot.dart';

abstract class InventoryState extends Equatable {}
// Hiển thị list hạn sử dụng còn lại
class LoadExpirationLoadingState extends InventoryState {
  DateTime timestamp;
  List<String> Expiration;
  LoadExpirationLoadingState(this.timestamp, this.Expiration);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
// Tra cứu tồn kho thành phẩm và nguyên vật liệu
class FillInfoInventoryState extends InventoryState {
  DateTime timestamp;
  FillInfoInventoryState(
    this.timestamp,
  );
  @override
  List<Object> get props => [timestamp];
}


// hiển thị danh sách truy xuất
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
