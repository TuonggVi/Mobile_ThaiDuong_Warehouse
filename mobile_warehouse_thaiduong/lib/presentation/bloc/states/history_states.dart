// ignore_for_file: must_be_immutable, unused_import

import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/datasource/models/location_model.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/department.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/goods_receipt.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item.dart';

import '../../../domain/entities/goods_issue.dart';
import '../../../domain/entities/location.dart';

abstract class HistoryState extends Equatable {}

// lấy ds kho, ncc, item
class GetAllInfoImportSuccessState extends HistoryState {
  DateTime timestamp;
  List<Item> item;
  List<Warehouse> warehouse; // lưu warehouse 
  List<GoodsReceipt> goodReceipt;
  GetAllInfoImportSuccessState(this.timestamp, this. warehouse,this.item, this.goodReceipt);
  @override
  List<Object> get props => [timestamp];
}

class GetAllInfoImportLoadingState extends HistoryState {
  DateTime timestamp;
  GetAllInfoImportLoadingState(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}

class GetAllInfoImportFailState extends HistoryState {
  DateTime timestamp;
  ErrorPackage status;
  GetAllInfoImportFailState(this.timestamp, this.status);
  @override
  List<Object> get props => [timestamp];
}

// lấy ds kho, bo phan, item
class GetAllInfoExportSuccessState extends HistoryState {
  DateTime timestamp;
  List<Item> item;
  List<Warehouse> warehouse;
  List<Department> department;
  GetAllInfoExportSuccessState(this.timestamp, this.item,this.warehouse, this.department);
  @override
  List<Object> get props => [timestamp];
}

class GetAllInfoExportLoadingState extends HistoryState {
  DateTime timestamp;

  GetAllInfoExportLoadingState(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}

class GetAllInfoExportFailState extends HistoryState {
  DateTime timestamp;
  ErrorPackage status;
  GetAllInfoExportFailState(this.timestamp, this.status);
  @override
  List<Object> get props => [timestamp];
}

// lọc danh sách item nhap kho theo kho hàng
class GetImportItemByWarehouseSuccessState extends HistoryState {
  DateTime timestamp;
  List<Warehouse> warehouse;
  List<GoodsReceipt> goodReceipt;
  List<Item> listAllItem;
  List<Item> item;
  GetImportItemByWarehouseSuccessState(this.timestamp,
  this.listAllItem, 
  this.item,
  this.warehouse, 
  this.goodReceipt
  );
  @override
  List<Object> get props => [timestamp];
}

class GetImportItemByWarehouseLoadingState extends HistoryState {
  DateTime timestamp;
  GetImportItemByWarehouseLoadingState(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}

class GetImportItemByWarehouseFailState extends HistoryState {
  DateTime timestamp;
  ErrorPackage status;
  GetImportItemByWarehouseFailState(this.timestamp, this.status);
  @override
  List<Object> get props => [timestamp];
}

// lọc danh sách item xuat kho theo kho hàng
class GetExportItemByWarehouseSuccessState extends HistoryState {
  DateTime timestamp;
  List<Warehouse> warehouse;
  List<Department> department;
  List<Item> listAllItem;
  List<Item> item;
  GetExportItemByWarehouseSuccessState(this.timestamp,
  this.listAllItem, 
  this.item,
  this.warehouse, 
  this.department
  );
  @override
  List<Object> get props => [timestamp];
}

class GetExportItemByWarehouseLoadingState extends HistoryState {
  DateTime timestamp;
  GetExportItemByWarehouseLoadingState(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}

class GetExportItemByWarehouseFailState extends HistoryState {
  DateTime timestamp;
  ErrorPackage status;
  GetExportItemByWarehouseFailState(this.timestamp, this.status);
  @override
  List<Object> get props => [timestamp];
}


// lich su nhap kho 
class AccessImportHistorySuccessState extends HistoryState {
  DateTime timestamp;
  List<GoodsReceiptLot> goodReceiptLots;
  AccessImportHistorySuccessState(
    this.timestamp,
    this.goodReceiptLots,
  );
  @override
  List<Object> get props => [timestamp];
}

class AccessImportHistoryLoadingState extends HistoryState {
  DateTime timestamp;
  AccessImportHistoryLoadingState(
    this.timestamp,
  );
  @override
  List<Object> get props => [timestamp];
}

class AccessImportHistoryFailState extends HistoryState {
  DateTime timestamp;
  ErrorPackage status;
  AccessImportHistoryFailState(
    this.timestamp,
    this.status,
  );
  @override
  List<Object> get props => [timestamp];
}

// lich su xuat kho
class AccessExportHistorySuccessState extends HistoryState {
  DateTime timestamp;
  List<GoodsIssueLot> goodsIssueLot;
  AccessExportHistorySuccessState(
    this.timestamp,
    this.goodsIssueLot,
  );
  @override
  List<Object> get props => [timestamp];
}

class AccessExportHistoryLoadingState extends HistoryState {
  DateTime timestamp;
  AccessExportHistoryLoadingState(
    this.timestamp,
  );
  @override
  List<Object> get props => [timestamp];
}

class AccessExportHistoryFailState extends HistoryState {
  DateTime timestamp;
  ErrorPackage status;
  AccessExportHistoryFailState(
    this.timestamp,
    this.status,
  );
  @override
  List<Object> get props => [timestamp];
}

// test giao diện lịch sử nhập kho
// class TestHistorySuccessState extends HistoryState {
//   DateTime timestamp;
//   List<GoodsReceiptLot> goodReceiptLots;
//   TestHistorySuccessState(
//     this.timestamp,
//     this.goodReceiptLots,
//   );
//   @override
//   List<Object> get props => [timestamp];
// }

// class TestHistoryLoadingState extends HistoryState {
//   DateTime timestamp;
//   TestHistoryLoadingState(
//     this.timestamp,
//   );
//   @override
//   List<Object> get props => [timestamp];
// }

// class TestHistoryFailState extends HistoryState {
//   DateTime timestamp;
//   ErrorPackage status;
//   TestHistoryFailState(
//     this.timestamp,
//     this.status,
//   );
//   @override
//   List<Object> get props => [timestamp];
// }

// Test giao diện kịch sử xuất kho
// class TestExportHistorySuccessState extends HistoryState {
//   DateTime timestamp;
//   List<GoodsReceiptLot> goodIssueLots;
//   TestExportHistorySuccessState(
//     this.timestamp,
//     this.goodIssueLots,
//   );
//   @override
//   List<Object> get props => [timestamp];
// }

// class TestExportHistoryLoadingState extends HistoryState {
//   DateTime timestamp;
//   TestExportHistoryLoadingState(
//     this.timestamp,
//   );
//   @override
//   List<Object> get props => [timestamp];
// }

// class TestExportHistoryFailState extends HistoryState {
//   DateTime timestamp;
//   ErrorPackage status;
//   TestExportHistoryFailState(
//     this.timestamp,
//     this.status,
//   );
//   @override
//   List<Object> get props => [timestamp];
// }

