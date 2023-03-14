import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item_lot.dart';

abstract class AccessHistoryState extends Equatable {}
// lấy ds kho, bộ phận, item
class GetAllInfoImportSuccessState extends AccessHistoryState {
  DateTime timestamp;
  List<String> warehouse;
  List<String> department;
  List<String> item;
  GetAllInfoImportSuccessState(
      this.timestamp, this.warehouse, this.department, this.item);
  @override
  List<Object> get props => [timestamp];
}

class GetAllInfoImportLoadingState extends AccessHistoryState {
  DateTime timestamp;
  GetAllInfoImportLoadingState(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}

class GetAllInfoImportFailState extends AccessHistoryState {
  DateTime timestamp;
  ErrorPackage status;
  GetAllInfoImportFailState(this.timestamp, this.status);
  @override
  List<Object> get props => [timestamp];
}

// lấy ds kho, bộ ncc, item
class GetAllInfoExportSuccessState extends AccessHistoryState {
  DateTime timestamp;
  List<String> warehouse;
  List<String> department;
  List<String> item;
  GetAllInfoExportSuccessState(
      this.timestamp, this.warehouse, this.department, this.item);
  @override
  List<Object> get props => [timestamp];
}

class GetAllInfoExportLoadingState extends AccessHistoryState {
  DateTime timestamp;

  GetAllInfoExportLoadingState(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}

class GetAllInfoExportFailState extends AccessHistoryState {
  DateTime timestamp;
  ErrorPackage status;
  GetAllInfoExportFailState(this.timestamp, this.status);
  @override
  List<Object> get props => [timestamp];
}

// lọc danh sách item theo kho hàng
class GetItemByWarehouseSuccessState extends AccessHistoryState {
  DateTime timestamp;
  List<String> itemId;
  GetItemByWarehouseSuccessState(this.timestamp, this.itemId);
  @override
  List<Object> get props => [timestamp];
}

class GetItemByWarehouseLoadingState extends AccessHistoryState {
  DateTime timestamp;
  GetItemByWarehouseLoadingState(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}

class GetItemByWarehouseFailState extends AccessHistoryState {
  DateTime timestamp;
  ErrorPackage status;
  GetItemByWarehouseFailState(this.timestamp, this.status);
  @override
  List<Object> get props => [timestamp];
}

// Truy xuất lịch sử nhập kho
class AccessImportHistorySuccessState extends AccessHistoryState {
  DateTime timestamp;
  List<Item> item;
  AccessImportHistorySuccessState(
    this.timestamp,
    this.item,
  );
  @override
  List<Object> get props => [timestamp];
}

class AccessImportHistoryLoadingState extends AccessHistoryState {
  DateTime timestamp;
  AccessImportHistoryLoadingState(
    this.timestamp,
  );
  @override
  List<Object> get props => [timestamp];
}

class AccessImportHistoryFailState extends AccessHistoryState {
  DateTime timestamp;
  ErrorPackage status;
  AccessImportHistoryFailState(
    this.timestamp,
    this.status,
  );
  @override
  List<Object> get props => [timestamp];
}

// Truy xuất lịch sử xuất kho
class AccessExportHistorySuccessState extends AccessHistoryState {
  DateTime timestamp;
  List<Item> item;
  AccessExportHistorySuccessState(
    this.timestamp,
    this.item,
  );
  @override
  List<Object> get props => [timestamp];
}

class AccessExportHistoryLoadingState extends AccessHistoryState {
  DateTime timestamp;
  AccessExportHistoryLoadingState(
    this.timestamp,
  );
  @override
  List<Object> get props => [timestamp];
}

class AccessExportHistoryFailState extends AccessHistoryState {
  DateTime timestamp;
  ErrorPackage status;
  AccessExportHistoryFailState(
    this.timestamp,
    this.status,
  );
  @override
  List<Object> get props => [timestamp];
}
